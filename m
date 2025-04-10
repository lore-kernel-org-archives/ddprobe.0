Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424CA281375
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744281594; cv=none; b=O/6I8BZHp95Oi9wh7grGrbgXFtqyECWWDk6I9b1rNOf0rUHVaWY41zQ/2WwNS74S9uatNEpX3DxeTrsbMzhKwRerecsshKinSXneUQ28bG/3bLIft4qMmvqzgUSASwKJkj0sgLvT+9iVO5DZh/2uCPTeqlRgDrDMY5MyMFxU2kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744281594; c=relaxed/simple;
	bh=skPVCFHL24ob9toYFNBYRzfUx5ME0tjPMulHFvRnHas=;
	h=To:Subject:From:Message-Id:Date; b=FBwEslhjXniAldaZljnROKxeIwR7wk1SyQcFn6aIqe5SKwgsvnR6WpSOMtWowGD2iQByVKVDaTy80shYWMelZP1QDgJ5oUuoQw1BQjQ5nAZT7SIm2Jy5bgGEcWniPkUkgUpE2t+uk5t6peKPF4xMSMbnZVe0NzmwTFVaHCObjIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeMM7ym5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeMM7ym5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B440CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744281593;
	bh=skPVCFHL24ob9toYFNBYRzfUx5ME0tjPMulHFvRnHas=;
	h=To:Subject:From:Date:From;
	b=OeMM7ym5ke81pYqy9wcpeOC56xOcbi+r03dmkzirmi/CM9NPNqAPGhu1cHnU1eZN+
	 kWaC1ojS5q+8R8XxpL0BVNtqHfsKMsj00UpbOUOtj/U/JaN3mYv7Q73CGFaqkCam8t
	 g1Mtz6Wn7WO+gfOclMHDysZUrs0dh2sF/anKnOi6Ui9NXUsRLx2uewidBHGd90mDJq
	 1YJIeftuJFVMeVm0mSZ1WbK7v4oadS7Ne3e00GphVAWoYCvFoNdkcMLNwwnb3SAYhF
	 64DpLsr5N8vWjRO6UnPamRueij4xJZVP1tycFaZTWnGRbQAv0lesvNCgR0uE3T9JWn
	 dsM1V7vbsAVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98429C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428159361.4456.16654963609622671946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9095c9ab3693086740726979867e36752d015eb4fa1fe475f034943cb58795
Date: Thu, 10 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744281593
