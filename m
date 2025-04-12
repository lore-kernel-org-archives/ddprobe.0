Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8781624DE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744459794; cv=none; b=bPiU32zAovkwfD6H7QYRXXhr1e0SqWT1adu10hLBYafMkRgpMyxxToWe38DibzJ2ZDtGvVecl5ZCFk4NuFLF12OgItF4wYJrBkQ3FCm0u+Gm6vKK6GS+c/qM4B8EpsaHLwXspnU5xWE1rvBZurXpXSDDTMn5r6QYq/f/0j4ipo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744459794; c=relaxed/simple;
	bh=LCIvUlIcm23TnADaJTCcEEmwVoYSIDKdthVLgfSDM4U=;
	h=To:Subject:From:Message-Id:Date; b=IZwqgPzmWzY+XsX4yANehjnW34M/z6JbNAy3d9kc3iyBr5rSsMLiGS1uNXtFh07w/QANd/6nm2IfFyMfu/kSNf/jci3bUE95RpFqTHUckqwMGdk+OFxtR71qY2GtB7Ttgj3qeE6mgeBYqPogmdux5cwmNnk9ZLmy1AE2yMvZ9fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2ux9GWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2ux9GWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744459793;
	bh=LCIvUlIcm23TnADaJTCcEEmwVoYSIDKdthVLgfSDM4U=;
	h=To:Subject:From:Date:From;
	b=G2ux9GWZtKwKO2WxpLSNHQr8dw1ZTE21eSLymXKvedYBHGpgwKA3BVOCKW9mRdB4I
	 IeNbLoogWHII5RpJ22mGrBXDtyMFIPGpgGFvOC/w17sdbqynGjFfonXbvkS+DDVNXV
	 uF9ogP5UAVmtDcR1laT04cY7zOzAh+gJi2OtqYn3OSpNPMwCL99veJ1SiSl1LVCS+t
	 1swmVfIGs0PJVTi8C5L56B6RnIi30aLcPfrnGCemND8BSs2DqfiX+c9k+HCSruqX8b
	 MDYbrlqUDyG8wzyQUge+rJGtlK6AvKubLZVRMVEjJhtDOR/9YWVIHjg0rzx4Tv6YSR
	 Ob3MKchYOdcaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009AC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445979358.12816.9693152702739062554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80894756062be3d8fcc8a15ec62d6fae5361f9beb95c2ec13d99916852a9c086
Date: Sat, 12 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744459793
