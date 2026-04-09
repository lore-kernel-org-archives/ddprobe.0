Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34207331220
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775761054; cv=none; b=BNVGE203oYSqdPhMQdBvdskwEawxZjLxQLLhzcLuiozaK1bytzDVYVEuehXmAykTjAoK4WTYwiB0b7wu2pYtlw2XQtcy21PyGp3fqNQgxtQycbKutjR9s+nBuH+tRCkIUYVlBTrEdLspEJNTppUFtRSb1oouUaOmyumem533fh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775761054; c=relaxed/simple;
	bh=457+QcI6vRSLmxD03KBBMSO6liaiamXf3u9lpYHPEr0=;
	h=To:Subject:From:Message-Id:Date; b=mCP1RJWt+pv4U5XT3JEglVPvwDuqj8fSFxf4YI7yDPvmfIAbfidmCckRlheS5K/FXb8JgvdW/PzQzV+RSyXgHdtjZic9ibkJNpIhevZh0qxaWurQgp7bkEFuIbFeEiw4JjPHqgnGIEHaqXWg/wkhHwBb/SpGKIcDC3mK5GbJCA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvJiVl2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvJiVl2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B991CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775761053;
	bh=457+QcI6vRSLmxD03KBBMSO6liaiamXf3u9lpYHPEr0=;
	h=To:Subject:From:Date:From;
	b=IvJiVl2tYQtQkjs+dibugmO7SxZye9b+1Eq5Fug2USH0w7563X5SMPMRB0Z+MwWaO
	 RxZtfgqsldlPtS5hnbvnYvBYesQmY7Bw51TQ7MSZ7aUzrmrrxAySXv3frbboDEDGca
	 t8Y8rU0R9ocg1ltuvD/YM9TRF+9N1oEeGpP/t9BiKhxEXw4kKZDt1DcVb68EoGFl1c
	 jpJH9C8nEd5nYpeR3y0xR5789qY63kgoQ882r25iRSTEj3k8J2fmHCsj2IIvr5SQKw
	 Z4l2TS/eJO7XXF0dB9LqxLd6zKhKrv5lJIhfPeffnEL4Gj8YOi/ud86u7ufVCLkGDG
	 bXAsyvc5MDRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB407F364B2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576105369.7979.1238722529726946768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694f8e0187f74a79a59449129deb5ca5fb93b78ea8d42994ef1d2be6c0916202
Date: Thu, 09 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775761053
