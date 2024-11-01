Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD419645C
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730457954; cv=none; b=IhizH5l97WZfYNWocFbISQdNeRERc2ZhoZsOfFF7bzm/Srx0RB84bnjcpUcOSOHb9qfJZDVlO4NMCROeljrxyLC5F5f380NTsCNhVhuHQJchsPM2UQ6OLsYVzm4n2/KI2kxkpAGMmNgi8JVaAsrA94rPBhJfP2OoMRbDRhqdIbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730457954; c=relaxed/simple;
	bh=kIoBEWAlNZA+k88FKGY9V4LMbfFVERwQu9jNrXjSzek=;
	h=To:Subject:From:Message-Id:Date; b=PAzYOS7J8xtV/cPR14CdWqjoWzB9o7ELjn8MBUGD/AY3KRNf1QieKmRFqNkpuBPBcUVb2WMbb5hNxBW2vNLA/jZcDODCHncpUWjzLGLdzSzQS8rGRmSnsKiC/D53TfsnPQJW+JfVn81FwOrD2E6R8mvTzLttE+jpEexOzlBobXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pus8NogV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pus8NogV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2593C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730457953;
	bh=kIoBEWAlNZA+k88FKGY9V4LMbfFVERwQu9jNrXjSzek=;
	h=To:Subject:From:Date:From;
	b=pus8NogVA1/mfrFE3Q/bcd488c6W9FER+2syQwQirVW+OS7zypUA1xCznS+cO4Coa
	 X1yjmx9qnl6Qsu2wpVkDMWZ1FKwPH4Z+svFu5B//nM+XwX/v9fv1hzwTocM6kR+00B
	 VwAc/bg03R5foNpDkV1ogqkDG4A55bdKEcB9OIOC5cbrCajcOQr/gd1sEphFBokpVg
	 5mG3cEARp947veNLPOQEPzcfAnC8Xyk+aaSaKXBbBcQLwBU+gAMvqPafEQdJcmRyLH
	 OTNjD/RB/ioPd1pV9zga3EDQU8dPryw4FSrcfi6EpA+GLBEeZZbn50tQ+heioM5TGO
	 BCObpN1dN6W+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE829E6B242
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173045795370.28754.5251787836799718057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93e979d87c35952feff250d5ea441c9d863df5986b1037b9e2a50ee8a0c5f49
Date: Fri, 01 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730457953
