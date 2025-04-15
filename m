Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBAD1991B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744711794; cv=none; b=cLF+7Qx+mjWyVFwbMisIjwkxOO2lji9DYGNOl/yAHkSucLviL0mUTU/tXteAB1XrFRbyAF+fukfb18/Vj8ZKQ0+rNGf3Cl4AnBFWoVkxHSSZvpyyZoeRZOba6ThubBLmCIpxOYYYmz+QxWARPSvEZhZnUDyWT+Vephkr+a+vCGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744711794; c=relaxed/simple;
	bh=mhgeYT6FnGmLkURVRjeDNz+TbCUci/Z8bY2fVGG+zaI=;
	h=To:Subject:From:Message-Id:Date; b=Is2jHkxxUlTAsfavw1JvOG7b6gBYOU6F0lrkjSgH36BhDdzKmJ00U3i/7vBWBAV/6mEAgUUpWVt9AiBbhFfJ5BY1FckMRBv/TwmZCUF42jWHsVkJInP2tAAEREpoUS8Zpk3ygdHu9vtJb4dnvoqvYPSFpOnTylas4x7+RASReeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTxihNe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTxihNe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF00FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744711793;
	bh=mhgeYT6FnGmLkURVRjeDNz+TbCUci/Z8bY2fVGG+zaI=;
	h=To:Subject:From:Date:From;
	b=LTxihNe9ICQrXFPsUypfE1aIzusXQiaoA+8vKi0Ku9ZJXB5Qolj7KcNmiVzCrxjhX
	 M+PU+J8IP1QuDmPQyEnUwQVhJvWjQu5DxnHu5RI5ewNiChU/ZJ2OmWPsPwJPlBs7I/
	 lO4+YEXvsELjfKkU6YcqjlNAwgra8cjPPMBmuWJSUNH3QQXOZGXCivFfsg5GzNyMQJ
	 /3wuHRTd+xzqWqCRwDdpGonfELccho7zoWIfjiUSrh6q0KLDgqMKB12Irmc/xk8fbk
	 5FH4DPoYNw+gTCC2CcQYEuqqq1fuQEPKI4FGkoRchdN9ycz3OqZmhG+b8zrNB5J8hW
	 4tHue1xCPTojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBDBC369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471179362.32270.8798897138502251205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ace8e0d4d7fca91044eb74421a9fb284df436f2d3077c507e66f8dce2426522
Date: Tue, 15 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744711793
