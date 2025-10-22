Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270922D193F
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761104994; cv=none; b=SmxlG1WgNwdCDO+8imTjl6Sregd7ETIp4VBcQA9bLsFiavzLVpK3ab+pfG2ZuHKWfeMk2SvU0CGCIGV6P1RY1lXCER7UnQCx/BKW3zSzXtYoRbBMDPr6qGt3hoR4uPBc2dBY4Putsv8utAvCFedsETIDvG/mMtuWDknbXqJ6Zfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761104994; c=relaxed/simple;
	bh=mV2fGtDrbLBCTv+8EWTG0HjNobi9Mk6LjIswtjo1Yck=;
	h=To:Subject:From:Message-Id:Date; b=b9owIv/4F2m7pLcvggotPNz4pvm5bWNnGr/BmgLY8B4YMoVYxWpMvXzadghQavQAtEJi5Oo+mk+oAPMCrP6NrCr+/Dc4Hqfy2Sn5/tnd+CJ3562J4fOOdTv7xv/BZYt9ZOPD3OewPzqIF25BN6nxbWmMSH35N6HYJ557lwcvZlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc64JWtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc64JWtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2348C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761104993;
	bh=mV2fGtDrbLBCTv+8EWTG0HjNobi9Mk6LjIswtjo1Yck=;
	h=To:Subject:From:Date:From;
	b=Sc64JWtjTHp3vHeH+BWMt2ySEx4xkEPwJKYh/fE/aoFIjIGwqgtnNkBOujXWYUT9o
	 KiUflU8CdfwSgNUrRP9j5cWRr46wwH9PNDuJNINsP9jfUZlnTD3dM9JU4VL31mw3PR
	 NKJ39A4N1yVtUOMjbhWNqKMqfqvyGar/z9fO8bAaCADITBUWgey0A+NzSdre4pOwrQ
	 AxvSK1MbHZq/8Dfos7V3xyfd6Hy+93j9q+PJTqVYTY9nzCgnHxaLPMzkNaFMrBC0eN
	 IpFvvHzHE44NxZMR4gXMms5CC9dxPfJiGW+Z+Z6ZNi20Q0XWKiyxBezmsXygyd141Y
	 TUTrPuewOSmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA27CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110499358.12910.16364906574509657258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729c7428b90d7b01001ddcc481a6f0034e920e65191496e27fa695edeb1b5f31
Date: Wed, 22 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761104993
