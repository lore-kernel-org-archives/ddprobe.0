Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5875A37C91B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791705634; cv=none; b=FnLwE4FMslYNivNxF4faId/eMdbeJ4wsR8qz054tH/30ry3F8ig/MCrmFvW1kS6NvP1JVXYP/0WAf5wA5SEcfkSZTYZaUtqG21zTYKNxiypQaOV8vuhq0yY16YFC5pIcHMLn8AQMoA9e0JqM+sKrGmgw9DJ2V1K+fquxZOA4yFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791705634; c=relaxed/simple;
	bh=gO5kgpg5mfbit8pyoXsJon2Ba3h4OxE61SIpqOrgGKQ=;
	h=To:Subject:From:Message-Id:Date; b=cyn50JcqRGk+lEdZRTrHuziVpGO1PP3TKmq26dww5yehCAJWo/e98/wR7MMc13VT4Dq/Pz5xYEbPbKl/6QM4j4OavINdfHmiRMTXsYnv3OPnpeqz5ucPq1JpUrTpzo+Fp+id1KR8wSqlF/2IcUv7LKvPqTjEQhUm6NqqzZI8PkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfkbMFQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfkbMFQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE973C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791705633;
	bh=gO5kgpg5mfbit8pyoXsJon2Ba3h4OxE61SIpqOrgGKQ=;
	h=To:Subject:From:Date:From;
	b=rfkbMFQtPmc53mQ5HBRJjT1k8Zgvmog8vWAhXuJdhg21LRpug2CMh8+RQrt5EBFSI
	 XOa72aog8jHuL3mnO8mqUT7QEMNinmT9DAvEje5oWubV1hTAq1ZH+p+kWCRplw1mDV
	 Diy9HJJmnnTIRLZYd/SLSrShzRmTd9NSzcs5txjf/pVscS15BU9tZzt6ZkGcOI53eS
	 9BD1Ir1B72pVDshBIzJ2L8lz53W7IVc+QX5LM01iI4GG1vH5fvNfGBL2JZXPZ01cTT
	 WdJsqUAAtaE+mk29w/f3hcHCtvmE4pAiioMMJjTvzTIQsSU4PVm2Xxts/pMrBJMgJI
	 MjGZl4bOlhdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFFACA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170563369.2720.17419469124540125722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bf381fa69126af1f6af9049646840363316c65ff4b64baa6b4125578fb387a
Date: Sun, 11 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791705633
