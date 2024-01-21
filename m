Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BE71E49E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705876097; cv=none; b=eZ4vSdQLV/TaCWV+ycf5AgL8sVo7gsIEC8TUCDTqVSKj93kqb0m8TM3PsOqqwUsRV+55QPUPS69c91kQ7JqHF/cDxcU3JFJ5BWyMng9dL6gHKP6i8aSzoaPVf4f1GeaeI6+8CjgHs1DSAv475jkGdf8WrQ8HDmqbf/rZHW+2oLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705876097; c=relaxed/simple;
	bh=OvMngty0mfA/UjPRjtldXyksQ2TUNj+FcfBAgXtvAjQ=;
	h=To:Subject:From:Message-Id:Date; b=XJ6cTu8MZw5RAiuzG1h1PKxa3BORFLTgeViyJN/5IN5ZrT6/qrWKr5pG9lklzF28et0uFpRqZ56JpdHvoT/6SnnuV8AfPUlJaH5qVRYBzQ1r3+DyBbeoG5m3kv3YL7o1u14K2wsosJZXsCt5HtwsF/vHQrRKZbof1FK/OzA12jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aH2ieQBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aH2ieQBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778FFC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705876096;
	bh=OvMngty0mfA/UjPRjtldXyksQ2TUNj+FcfBAgXtvAjQ=;
	h=To:Subject:From:Date:From;
	b=aH2ieQBoTs2f9C3iahdPciykh12wfiP7KBhgFIV9h2ulHzPqp8FrMZkC2KHXQQrp0
	 gtJ7uwQ/iVWTzZUe9AU+7btREzcj57glXYKC5EyKvn5KlE6GeOfgreMBa9oXf3nI5Y
	 QxlFKvm8FHkYGjHPeB4Dpq8SoYSH/8zkJh9ggJAoRoK4GqWOocxfPRUCItiHtxq9ke
	 2nNEEScQupPuVbZX/Hbze0ixoiuEyWHBupZBq8nZLJ2kWHJU9q5JzvabVHfyEY+gUX
	 X+Uqt7QmJbtDFrLLLGBsZ4n24LooFCFGeITr2fHRV5OIYhpFIKCNiiNRAF6Nhqhm76
	 mwrtdWZr6hfvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3D7C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587609636.31789.9458264329625008620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bbff1abbbd7f2e7a86028044296018a6f27b20d50825862f489ecc440a4d83
Date: Sun, 21 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705876096
