Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5ED2C11CF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762403394; cv=none; b=gpDuZomxgEEQRFn0NlqFZjU1YA4jblBvL6NMtfUP8I4NP6j+tUsObzDP5tgYjEph+P/wIPobZzPfeozbA6omKskbwwIHyh00/SEUq97O6xULU6b0z1KHHYExwMiP2Do3GE3eOkn32E7pNh7z/Bajvbr+Ry+fsqKXQG5LpgZcBB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762403394; c=relaxed/simple;
	bh=cWH973GNf4A2uXKS76Z5PrNi29+mSwEHBNQ12kxNx2c=;
	h=To:Subject:From:Message-Id:Date; b=bKGxiLAPTmmLgHtiZXVbMD9j/Mq59PZFAGusbAdzXu5Emojk5ATu1o+QUrAyl/XPe+CpBHkj7PvGVoOj/MiIwxPPuDAaXWDwdHZdcWfk4hOjMaAoEGn5Q+I3v/V9GQz1mwd6Kcc3Gtg8UHykRdIqdnUMLOOSBxCwXjLnMOlXS8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4p4Ckjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4p4Ckjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A312AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762403393;
	bh=cWH973GNf4A2uXKS76Z5PrNi29+mSwEHBNQ12kxNx2c=;
	h=To:Subject:From:Date:From;
	b=t4p4CkjhjnB6I/nZ+8ctv7be/ngegWwuPnZZWI/E+0fJXFIUW3Elq1PnkeQl8nJgN
	 PkngQ7Q3sngUoxobWcoG33yqbU9SvCnlAE6TlEwkmTU9BIS40270Aaw/+w5OYQk+gj
	 mBFQlsS24AbMT9GNfOyUK9xJ5laghiQx99/VgJYw1wdbzVZ3hjDvEAK7AZOPOvq6h7
	 1R124pv66L/7/ACt1aVq1ZLJ9SyI8X0S3+kJiBedLEOzPEBfG0d/eRvAKYfjVUl5+3
	 bsI+iYgL786wWqTBK/hPpxXdAhyvwDJwRVkJesk9Ojm/FizndwSHzkzJ4Bblsj0XhM
	 8BbT15yQTISWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93689CCFA1D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240339358.27617.8360688561238602035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945eeb9d2af288f3e6cc936f75291ffe070cc1c3ce5e10d9594bc3c292ee2237
Date: Thu, 06 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762403393
