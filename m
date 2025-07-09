Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F9923770D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752073193; cv=none; b=WgqJVhyxWHEkzT4TW0bl95HjtkrHtGoX/s84+G5loVpzxsbzWUVdT82osTmqIe+ByWe4soAPHQpraSHHvAsO85emdrGxke279bUeXJsj2VKaSBFWZ5/JFoSLgt78b9FYEqTqHL+YKRBLIEb98iK/2OagXdCWEdzv21fNhnvV3CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752073193; c=relaxed/simple;
	bh=VhCdyq8aE4KEVThKKByNKopvEq4Ct+5ZBXRpLzWii78=;
	h=To:Subject:From:Message-Id:Date; b=gP+/7/Tk6kdLGc2DKtDvP+C363LJ+H9MVh+NvpspkU5kh/VAgoMeZ/X9LHp2UOK9RtmJbbfpII/V/GaoxWOSmklqxbS99+ubPOwnjZsFYTbCL4G6AS1Xa1w/HG89b/5BEVriCUwVdxPalo3oXAKYmidZOReOAXZD0CvAi2OP25Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjg9oDDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjg9oDDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC78C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752073193;
	bh=VhCdyq8aE4KEVThKKByNKopvEq4Ct+5ZBXRpLzWii78=;
	h=To:Subject:From:Date:From;
	b=Sjg9oDDaM0AVUBw1LumJuCAyNxTaVdSUf2OC3z2/4eCgo5uVM/oHEtWA8eWclE2qS
	 TXUFrvHkeJTmHqnpFtrBYt7Q3RhdGqvvLg//mConTIIAcBsG9xD0Dd4e9tDzHOahhK
	 6CmfOdtVKe9sbuO08uxITCKeRf8We5pHQkioGR0AzlDFvyl31jlgMYEiKaTTGi/MGn
	 Q56IsCImqQhECPtNfc+sbIRwpxg+79ibGYIp7EAIhTLeLEcMM39JdcZMcBb4epLTWO
	 ewn/onD0MCuJub2+TvNLGANIuBI2DWQTWv7nwHHrwUFM7+Mc0ZNqeKfvtLUNB31Rph
	 pojhPhCMQSAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F088C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207319357.874.3887298649513114869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c56d6999d6e3955c54b2f12f2fd0eb29b3c2e3a9584e7d70180c27e929a6fc8
Date: Wed, 09 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752073193
