Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908473750D5
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789982434; cv=none; b=uiOEpwpx3owp/wND20e+KAYK+Do40dqIfNgjCnk3K1KtvWMm8Nwmg2ZbZ3MlMZFTGO1BnuifBp3P0TkfYMWko8t4W1BsEtqcnm1W8n7arGB6p3DjvRE1Gi5PK/Ctya0ut4OnGhNPoCbgxLW7VNvnUMdtjvPZf5FqzoJ9pvjRLw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789982434; c=relaxed/simple;
	bh=FMiBFzQ9Us2AUUt8AngR31+LEtgezBlbwDD9ZXqaxrw=;
	h=To:Subject:From:Message-Id:Date; b=k3IGb/6a4RBaQoeD/lCmegx1axdaJ8yOEF/811N8NzGr3353kRsY7g3S/DknpG4an84QhdC8fr+apcK45jsCqzeZ19bBU+NnbdZF9D50yocT9M6T1VSo3XGLdNccYQ3PZyqDs5UW30L9FMKpPIAbKaDmyb5riSLSrKd2YzcAa9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye/p4Nk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye/p4Nk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B61FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789982434;
	bh=FMiBFzQ9Us2AUUt8AngR31+LEtgezBlbwDD9ZXqaxrw=;
	h=To:Subject:From:Date:From;
	b=Ye/p4Nk/BK7zWOWZbV9tmT2dsMXlv3jem24/reKrwr/rcFk9WnmNPBpibQTTF5MOR
	 beiWKpY49kY5+N+UtbLL5RD8t77XmuK8jEo1BP9ckjvNrvB8iCYI2h6Dkbte/B0B4z
	 hrGpH/OXg5uk45O01NLFCYewHjdSVDdehvh89bC1+LIXBOf9wVPHsHSAkPu9scT6Tk
	 ahTOaLWHp8uU6lajqc6S+fX07M0d3CHrKFCT7xUViKad37wsWrMNT5W+wbxxw0e02n
	 WXOlEVXALr0Dy7MTAK5rFE7pDTQ4UiX4G3gs9Isv2FnjLSZT0fULUzW5VNe0CNEZP6
	 8TcRQMNrcywbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF658C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998243388.24088.279476435396844358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f047b7f5ebb6f9baccd8ddce29c4eba616cb04e6a944a133dd2cddade150f166
Date: Mon, 21 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789982433
