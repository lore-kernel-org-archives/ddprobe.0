Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C23537D4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777113454; cv=none; b=hL7SLzevDA46IYxskLjuu6d32OPDMvnZs8/VNtRzdYi7AuDlrm6ll8NIrxR5PTZmN1hxxz1qr0zozKn08tluWLuFKOoFyjAvsQcS+d1zEE20/0AspIJVQKchQbIOaw4ku3jyTbY3w45ErrnJCHEjCg1kLCL9c0E/jSIVvwhGd/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777113454; c=relaxed/simple;
	bh=4/iA6EJKO9ZKMD6nBWbs8yK1bK+MjQDuRSdi8dvus3o=;
	h=To:Subject:From:Message-Id:Date; b=R9uQwtazNBWwqGDnZ2wRIcqFXAbW/cvzyhCJId/f29MdMsX3OlcV6bQwKsF6Puu42Sj+3bi0YrZiUcUs6QzTVAUYombjATcmolTsNU+Sv5nFINe1050rI2EtTj5CBkp4GV/5KYEJ5h2jGoaQNTSwymOLLkWfHKsayLBFlzsZCgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaH5cuV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaH5cuV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777113453;
	bh=4/iA6EJKO9ZKMD6nBWbs8yK1bK+MjQDuRSdi8dvus3o=;
	h=To:Subject:From:Date:From;
	b=RaH5cuV0uKLNLp+apXZjQalia7vYk7PLkiNqVI9jD6zBTgGnn/G9FirUJYmThaBZE
	 mQfrNUXkoIRk8DaIXpbEmHnTDDnRYVkJaNssUjczFSfk27vnB/8yCiILGEwLte1wlq
	 zz0As/z6iAM3GJcmDclk7Wo+dmK8heLID2FmZo3aiLs2Ud+4aylBXSThgHWK3eklcN
	 drIbyjL7XcqsqE8FAZPGCbZQsb5qblhs4TmxdxKLqf5kZzmHmMz8Agz9c3DaV8mLUM
	 2Yc8EIvrwmPJDS0QbnQSFKUHcdhvLGeH1CIF0jJellYekMSCQ9/AJRYMot/iCaAbpb
	 ZV5jZ00x64UbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEECDFF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711345368.5570.3376021390320485167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81a185049fdfd5371e66d6f0c027a87e7d1f2cb2cca18a85c8e59d9dceb4ada
Date: Sat, 25 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777113453
