Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9511B86C9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720553183; cv=none; b=EbBOS22Fij5vxJ+yWCnE1HSql58wF238YfDmGEIebxtmeI45LKa1dYrkTDdl+P00CaPGNm4y7F8ZOw08lmnof4H393+kA6PeAEhGEGzXlI9enGcp8FR6whB8DUKuDAPqcQhAmS0Ib11+4TEHvolGfoMeL8A94/gXNzMkg6sCOB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720553183; c=relaxed/simple;
	bh=QyL2EhS9/aztzFmT+Ee6eohoSlX2L2RnV0NGkuktkuo=;
	h=To:Subject:From:Message-Id:Date; b=MgjInR+raJqMlijP3IW1+rKhApFQJpBrlnWEqfQY+uwChRibeMxgUkgohBdbjleIJhnb2JFqPhITrop4yB1G1iJRbiGK4BeJzuEXhym9hUfN5JbsdK/UcJ/rp63fSBMR79917eAQs9YmQwhkhfjdcJ/wa96X+lnLMYNLK8cEHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3qi+bWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3qi+bWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8AAC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720553182;
	bh=QyL2EhS9/aztzFmT+Ee6eohoSlX2L2RnV0NGkuktkuo=;
	h=To:Subject:From:Date:From;
	b=k3qi+bWVEiQkTzx/FrE/OCbgHF0hplpSaVnKl8RDdrUWkxM6HCxO/JxJ7CFHH/2nR
	 13S8m4egWyHD4wxIyTvfSYxroAQdnc70fXs3U8rNw87gI/FqLJlGGDOIne/Qyvzrbm
	 F4rg7he8ZxXZG5uNR3CKp50JVRg5Q4YXYIXp2v8kR5xcuf+hT4jioxnxCYmQTJJkOv
	 l9rnmfJAch0BbeFKck/ekH09kZNdO8bjDNOxfcDPmJio7qknqTYTb32e51iOReD1Ji
	 3Ci7Q832VTOeEHo1aWLOQreokdY1v45zKQTRx2rJc0r6gptKVeSKGnweiFepuNtlTf
	 z4GuDNljp3F0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5B0C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055318276.26390.15985954692038552166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fc422f5d43cdcc73aa87e5674aff0382f04aa0a8feeee397bed8f0aa1b5eea
Date: Tue, 09 Jul 2024 19:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720553182
