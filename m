Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA2C2566
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728378954; cv=none; b=dxtTMOF342MXxpHZmb6VAuQvyt0yis0EAkz5eCnV1i6V7BeO9KJyq4U/2lqoJqla4eKfm8Qgv6sOBWjkERkpzceCTE1kvhCbK+fSQ/e4WfmUIRaElkLeSaIP6C+Gzv8JG64lxEVLgHubHoWct8G6lv5r60rhwz0hWVDN8XOsi8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728378954; c=relaxed/simple;
	bh=SzyOXvTG82dMRFCVh5I1un1+cJ9FsNevrGfjSpgMIUQ=;
	h=To:Subject:From:Message-Id:Date; b=R8sZHfqhixGdHRmAs1B0NR6Irw35uudPKHMP2QA+y0fuKfbRMpJ4M1BX9egPO12817TbKzfnDyk+wHvIFWnWaCwZt1naDQnnx3o/xEL7r0z6EoBb/TwmHawk3gCBN55v1e4xd8vHL+YX33nCxWdRp7oGJWsDB/eaMU6oelln4FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXe1q4js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXe1q4js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB991C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728378953;
	bh=SzyOXvTG82dMRFCVh5I1un1+cJ9FsNevrGfjSpgMIUQ=;
	h=To:Subject:From:Date:From;
	b=gXe1q4jsWBLAzW0+EcaYVJ4ckfc2npXudnjdzzguY6F2bgsFMAZXSSd5i5iO+1z6J
	 2VwOu03TkyFW11GyOsPt4GlHL9Ve8GjVrW3iLjYg/ZGtlV78fFNmg2EAr6UctZNtT3
	 wQ0+MRAEF98lsNJeHCVMjSi4qthpM/avoodJc1bmCBMt/EY0XOH6bPqNpKmmVfzvWy
	 sviB5vnpar65yrfzzJIyhYibyCgn96GED6dFse9Rn5VBb3DroDUc+xnG84T8Y+YYa+
	 bLELuCJ3uR0YWoeKWIBAP31D0WgRNpuNsp/mhPYceTdCefL+SNDJRxJgZYG0JCXzFX
	 ZJT8gGQJ2ZEqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A558CFB442
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837895362.10265.6112525158622448471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2527f6c3f595492e13400e3ff48cbd8b1299de2ef16233ac677c33c194493fa
Date: Tue, 08 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728378953
