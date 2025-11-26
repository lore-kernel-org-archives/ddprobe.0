Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831C1F956
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120774; cv=none; b=tCY8+asF7pwy4w5KHeZbrEghCOtGFnXyywKhHzX43V4/toaDtKwYK/LZbWgwgAoXm/s8myzhFF3z6Eh7YsaayDSBWvb/cNGsaK1T/UOP9mG8GOrmh2dLSrue+S5YcbG2yuJnivsFkba8Q2Ro7vHll16X/vlrsXnzeQsATL2LHiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120774; c=relaxed/simple;
	bh=dkXtmKB1BnYO1GQdy78DbFRhvk39T22Po8V4JFHCwS0=;
	h=To:Subject:From:Message-Id:Date; b=PoM8qrhJVhIp9l8aepREtbg+NN2d4MLktT9eAvr4bIOnyCTw6huXwjFWrrtBd/KtleVnn1/rTc/V4qKhuGpgXuGiEw45sfZ55BdxQLAfJwMR4QUV45TqH5+YuHDqt0RbhnM8M1GuCoBai3qbqd+RTfTzBlwwDTG7haElvPjTdZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG2OjLWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG2OjLWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2896C116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764120773;
	bh=dkXtmKB1BnYO1GQdy78DbFRhvk39T22Po8V4JFHCwS0=;
	h=To:Subject:From:Date:From;
	b=uG2OjLWrKhkBN5Z8V/A+wS/0mdWqueDh+uYRcs4MJW9N1jTgrHFIMlPdLQFiCnJkd
	 cCOMEU4sRUt86y2lhFFTG5EA3Hma22RkkvrlAH4AziY+WTl0HMQA3XKyWLFk+lQg7q
	 h/K0gNyQ57ylh79+KrlVXEcWBRhIZiSv58SIbOo7CVKT+S0R3xRTdLJrwLdpKDM5JB
	 EWxDs5YwO668I7snjDaT0oIYhboo75O6aeBtRmD61NiwM/6aJG81ySDMj5A2/qIGHj
	 xPIAeuPTvmjk5BGllNK+96o92PyjjpGXximGsN/rYLag/4bro+eoK+V5AkRNC+iUGm
	 E0JrV8FOZw7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A5D10371
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412077359.11923.4373231591118891916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46c0450ddaa413db85a031c8f1dc706f9d5af67c6860707618951a1f53d368c
Date: Wed, 26 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764120773
