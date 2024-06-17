Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF6318EFEA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718646503; cv=none; b=QM8t1AKq8g/QLYdaTG5DvXguN5fVTI+aJTHxeIIvWhnNoeG6jMdUfgYs3aZ/zydAhcd9e1+9A1lYb75R8T9toBPu2MBxGJw/9GFVHorX865guzEfbt5pQ1MES2B0VA0uBHI/QxGvnVke5nqEcnApl3c9Xjw33A5p2g5bDwhUP+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718646503; c=relaxed/simple;
	bh=RBD+p24+RrNdF0ochSfE3az/fFptH/F8QVvpRfO6tAk=;
	h=To:Subject:From:Message-Id:Date; b=kuICrsL3J6uFL7NRBfc48nV/xgU61p5fJzjxuO96NuMOUsoJouY5MMUp3JEQttbrf1Em2+hfDQk3h4KH3NF+eB0dCN39ZbbL/aMXyCyHAtbhvijYbSj4XCH4ecuwcrdFXDt+jhey04VGcRUisbESQfN66dUKztDuIVAhG9Tlz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl+euPIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl+euPIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD57C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718646502;
	bh=RBD+p24+RrNdF0ochSfE3az/fFptH/F8QVvpRfO6tAk=;
	h=To:Subject:From:Date:From;
	b=Dl+euPImiwYXuiCovwCmgPrXHoCk/UfBOybkntJuI1yMFyREZ6FXRlg/1kZAeMDQa
	 3hGaRUADO9XmL1ojs2PeYpEVdFnLymuurCP8pPvi6wZDrU5SPiejcTJ1Ad46UsIoiJ
	 pBX//hg/oseGlAS2nWdN93CYTNkQbi+H/ukLOubuKf5AE/KlmfvaOlTvKRXtqzZpbx
	 Ss1PwDb0xMyE3mNYmwZTg4w1jtMgm9QSS4iXioTpHjxG1tHISAEWFqdteOv4fhra4Y
	 krU+jIN+I/Z/DlOylW/eTGJufyFFhcrEEFxfxrY7p33DDslEfZdMouN9GBcrcPKhgE
	 JVX6KXHzyLEaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF374C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864650277.2946.14213219708824179063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476531efe90301d6688eb617a37c17dad3848bbdd3ec2a7872739b887918d63b
Date: Mon, 17 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718646502
