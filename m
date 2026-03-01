Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFBC31352D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772394894; cv=none; b=dJw2ANVasZJWY+jbPTQVDm09vzkPWO4y3AVH1XeelnSLx+6+QGo7Moc5+cv1K9eZ6KF4LZiN0QeivVkKr50kge5DU0xtQMcKeISNgPe2lO1nV87Y5g/S+DxXIDEsdMCQ4kd3hpBGVv4r2YzamfMUpFtlOXPu3TGqYQboh0vInuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772394894; c=relaxed/simple;
	bh=uruOA3B+1A9eFCVHjzsQhQ1VLdy8b+zlKA/G2R5mSfc=;
	h=To:Subject:From:Message-Id:Date; b=EYeejJiiFC49lvkUzpTA0XVlPq3uko+q+epOUG6R/cm6BEjrXqWw7PHvoP+9EB8K81SSa60FgRs0q8C/Phd7BjdjwHT+dyJYAlYE4DV/5Pb/hjOM1B10sy19r3F3CVQ6OIozcuKFbd0ipeH8jOHkd/0yoK1kH7p9ywnEbwZEuf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRAA5tzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRAA5tzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F2DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772394893;
	bh=uruOA3B+1A9eFCVHjzsQhQ1VLdy8b+zlKA/G2R5mSfc=;
	h=To:Subject:From:Date:From;
	b=IRAA5tzV2M87LEJXkYM8H9RgyQkzdrPIl1x55HH7QrWq5zn0uEtwGk8WQRcLV891X
	 SuFkwYg0BYgW5eJEuufbKrRbvKglxbHAicDiOLjpYVGHlZEBUo4ozuCZUO5uvY0qH7
	 JOnHryv0Qvl6+s+Dl4IM3vdq5zmUDL39ZjWensi2cWr5n2qP97rU7fTxh0lPnhFAzR
	 QSouu4TG+euLp+HzycLxfEqIvO2703cF6hVFJ84EV+9FanCS39j6KkK/xPTyUbslQ/
	 XNPi1ZK+VfCzmTd/RNYJo6pMs6gKtsX2X1y5ErcdVAr0CZetnBsgeAtwd5YLIVX4Ow
	 JDe/OmY/dZW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A108BFD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239489362.28159.4907786544760101427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775fe4868112bfe41459a9457221c3e6fa9a3e8c90c9951222d9914e5e0ea48e
Date: Sun, 01 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772394893
