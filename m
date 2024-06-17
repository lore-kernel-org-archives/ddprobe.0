Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667F418C35F
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718612303; cv=none; b=FZMB8zVy/YVLeV6RSqaLwbMU72np8Li6kiqI4e+Gs8/1QTiDL5GsvtwXyPNVFrHiQt3XExv/wMBHMT5KE6GnG+XzwHADiMSj1k+Wu8TZFt5hOV5eTzzxa79ODN6rRV6WvCl/C1meUmW/476gKPBVjbOc0Epxz0mkwvrjUsOrcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718612303; c=relaxed/simple;
	bh=imr7dkII4xvxoJAfnZYslYRZoI+Q1n2zmFyJVdBQfQk=;
	h=To:Subject:From:Message-Id:Date; b=qSpjRDHhIiZqh8WYZeW9XOUMqOywsBIFBHlhhaA7EM0IfykMd70Ep6ECRIu/k2dBCek58KUZmW5nHt6bSPD9Wf6HI5QB5inDsvH0AvXuqpr8iC95q5BFfVNhnuSenlMMLcjCmBVIQFyVVAEEZJkiSao012GlhQ8RepiCK9ltEy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxo7HUab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxo7HUab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4E5C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718612302;
	bh=imr7dkII4xvxoJAfnZYslYRZoI+Q1n2zmFyJVdBQfQk=;
	h=To:Subject:From:Date:From;
	b=Pxo7HUab4ITaG3XgX1hpYET2OVCwkMd67BdTBUpQ9lugC8qk0pvHbyC6XALAKVzx5
	 uzVA6nCP/HDz/BzQkcta4DboQCHPvW7VNBE1shYXEBq42aFTGdsDwqnj02uI8BaRRQ
	 V0rom7FNB2GXMwr4rqdt6fB8W2wfMH0IWLH5UM4OdTD+XieeWEJFbXULl1bL4lilEo
	 lXSgCJ4jJoSW7mOk+Xv9iA7NDmVMWHDhJGquAVJj0msA69LKHXk/J+qsN2npDz7xv2
	 a1V44Hbp3RDCwmuO4QPlWOvHydLutZoUPGgMox6ahKHZwo6gIRFDI6PPMxtQ04c34W
	 i0HK09h2UeomQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C384FC27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 08:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861230279.9034.3452953474241527704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c203dd134e061443850a54f36ae9ed6e1008022fd5807377470b590570b8814
Date: Mon, 17 Jun 2024 08:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718612302
