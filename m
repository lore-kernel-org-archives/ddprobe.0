Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ED2319611
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760520594; cv=none; b=VI9JM6NxeNnBUqXEoNwJ3ki5T0OLzSvYA+8NDSqpaQLHaaIwatxBxEOcyB6xFAIzBoso7R+vFxCVQHKwlETMc8tLTPPe4I7bjUX3CT+aYkmI2ktvI8MG5FxiYkriMI1dcCSehyXRbzMeBLJmKVsoHK3OpBNf3GITks+apQS/+m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760520594; c=relaxed/simple;
	bh=TxNlJ+2CcEoIOiBhXNHf/t4o+2iTagXm5b4O93O6yY0=;
	h=To:Subject:From:Message-Id:Date; b=ZZisVCETHWMnZEKGe/G5n/iTZmj4mu92oiad3Zz78i/nktLT9/ptAgUQtSeRbISS63ISJv3HgpF94prhlXic16GYAbazV+HscODrR1zsbjmSUH1vAmaWke1nEiDKBrjuaPLNcKZ6pctrwMN1bj6eytrX91gWH3E86/sfhVciwfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA55p7uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA55p7uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1409C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760520593;
	bh=TxNlJ+2CcEoIOiBhXNHf/t4o+2iTagXm5b4O93O6yY0=;
	h=To:Subject:From:Date:From;
	b=IA55p7uFOdokkB9nnWVmSPMEThos3vgJfm4XRHqD09wdq+FcCbwiBuek18AnXMSbY
	 UPwoMalPmD3kFEX9/oNIBc44P1FbZd6BnuUvjHGVmC3rIkBxtdkFRPY8OlomSULUQU
	 vYbm/E55bQ9pSAGXr06wVLTf3F28r8Mnh432atd9J5igh6V0KFmp+k3uTneMXaEMul
	 bHWzGJter86YVjpX0VFqtWZ8ck3DqXimVgd5LVb3gnVGSNbCya71H5Eg+F3I1Fwa6j
	 QQas++tumDA57dbKFCDLTNW9E+q0yaF4WU1NT05E3+mOiapm4eIcUV796qwS632hwq
	 JtqyEyP/q1Zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044DCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052059358.11843.8115943229136677052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcf61be5c23b0ab933866a87b2b7d023b51a14f133ec1352913b22a4e6f1490
Date: Wed, 15 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760520593
