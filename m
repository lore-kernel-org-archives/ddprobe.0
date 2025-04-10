Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF11284B51
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744297193; cv=none; b=At6svOXiC54ugCB1OgXI04ExUNc19Zd+jGluflrVuH6R2sd/NU1rPHENEyd6T+0EpfFn6f9+GCGm4u1jR8Jt6OPHtDgx2xaFKgEW45aKR51x8a+MrOESOkI0HnIly6ZNlpBBjbhzkRvDJl26cpGPEGsqbHir5VyEIlYKJgqxfBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744297193; c=relaxed/simple;
	bh=nAEzICj7DFMrzmkUK9SaFLY/4q4uv7vlQNXlOf6X98c=;
	h=To:Subject:From:Message-Id:Date; b=M8XCqvijwGRb+X/7uGqBdVaU1GInkLGlGp50+eCt2j1SWB/9iaIcvOGZcteCUtwRfSBR3gN6ZjKGr8H3o5vu00OoJ52eeue0+WphXNUAodTK/3xfYivA3+74f0SyPI0bdzbforQhrRMKZSvaq7euzzSLqSxX4n+U+po5eSh4ixc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kodwkPSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kodwkPSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0267C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744297193;
	bh=nAEzICj7DFMrzmkUK9SaFLY/4q4uv7vlQNXlOf6X98c=;
	h=To:Subject:From:Date:From;
	b=kodwkPSCSkgiW74A565qNLqpbotIyA3cV0QmPxUvVC1ysxFo+iUdoFfcrfWXC/mIB
	 SL6FLX0N8VH1gekclTsgHVsP3p5fxLeoog/225WEb2g8QKk57afk6fNhNvksZiV28A
	 Cb4eM6WYeDXqRdL45++KT3Tp+pNKiNFC7HcxDLtL8URdZhce/clgW/W76WR4ej1Blo
	 IWprNax630Tk9E2X8TATpx+YN9tNG9Ck1uJ3v4uRtPD9a7aENKF0jqfQcF/GH2zr4m
	 zhY1jAgYM5Fgg0uhNp0gkxZpVOSXcCmMLU5ODt5fFmMp7zFeWtuKhAFI4NbvCGC5xU
	 qGGvHt6r9jQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85FC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429719359.29957.15750255734516684617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f922b02789d554d77ebcfa2a5a40c70d5a313c5dd1556510ff7425f16acba97b
Date: Thu, 10 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744297193
