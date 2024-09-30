Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6A9CA62
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727720154; cv=none; b=C10Cih55qGjsWBf1wnk8TRra955gkbiyVf9q2vWnZN7M1NNVl/idogL7y7VaWAMytSSbN75NjtUfInAqkKBv6pZYUTtXnOlhHnZaUfFlS6Rmyx9dNTP2huKzUQxPzMuF53nUJerarYWdxXCY1fKJa79ca5sw/wfrUZB6HQ0jlfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727720154; c=relaxed/simple;
	bh=/46tYZ5QpuIi132zlsH7UGwvwKCJkGL1E7QMcxUGQac=;
	h=To:Subject:From:Message-Id:Date; b=ALJI0ivn/2z5R+2c1j6QrRIMFeOQIi/p5dy0lO8RekH+Jc5LfI2uxTGL7sU6NdwpCja9Cqf4+CSlnu982/xaMhtEehd986tY5EIgKzoU5XRZeM6jL6v/bkZyIBXoS/G+dR7z/AtCFKFAx2ZymRQvlZOVxq/+o0M9f4Ql5kMYqx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgR+EHH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgR+EHH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF88C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727720153;
	bh=/46tYZ5QpuIi132zlsH7UGwvwKCJkGL1E7QMcxUGQac=;
	h=To:Subject:From:Date:From;
	b=dgR+EHH4cuWtZc36557pnSM61hmHCBIpH6z+UecQVbn0gTLtqWQwA4m7M3rXtj/CJ
	 4gWu5pkfCtPmQrmv4yyWQ62HPls9bfS0AQ5AJNK6bpYurYbP7FIsJUcHcrtfJlI8ax
	 zFMfyZ3zxApoFujBbtDQGd4RP8oGyQP5Edne8pQRP29gzeVzzjjqp8qj3XeG7hx/km
	 CqczXWpruQgi3TudjJCZEV+c52mwDM/KjIhnVckX4J0Z00iFT7VvpjK4KO1MgmJZRT
	 9cYwHG+VPqTvSM2N3utnPpJIVAgzHR/Jm6EbSa5B2jET0VC2x6J6WdhI0TNfcK09jO
	 K58jxHFUS7agQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F796CE8379
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772015358.31551.14725364115814020864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487ad276d71a54333d6e5143d17a6694ae1133b9feaed5c149c898214876b405
Date: Mon, 30 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727720153
