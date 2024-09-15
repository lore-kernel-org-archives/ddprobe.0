Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B822083
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726415154; cv=none; b=RjbKu9m2/GqHdyj2bu+YnjzwqK9gyLQuXu+ho0Gmfm2qpgQmEhV+fjFDRgPD6JRkhpa8sfd00PBkRaSX30AS0oZsU4lvnVYzyCGAaQjD+ymNyKSRzzHMMH/8GhvGOQtlk3Bk3Zlhmrok0HOrGmVD21Ot9XeMb0gsFleY4SoTp1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726415154; c=relaxed/simple;
	bh=VIDGqVioFTCyq9N7IG2+w0Fq9NOY3ZBCileoffDnHLE=;
	h=To:Subject:From:Message-Id:Date; b=b628QY9XHeCzPXjhaMx7nr62tzee24VvJpGViHm+IYQX0my4cs8mdBkgd+KHEBqpSys1UixDfm1yA/Gjkfjr98fqYa2jnjFgvKzDKzMb4PJ/BbglXsNxFqo44NdDuTNdeLfgbkvWPNWgIw7EcPIqeZ0Td+pggzCW3+7Wc+/npWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=er4YNkfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="er4YNkfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6085C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726415153;
	bh=VIDGqVioFTCyq9N7IG2+w0Fq9NOY3ZBCileoffDnHLE=;
	h=To:Subject:From:Date:From;
	b=er4YNkfYsqnSxqxK4F0VLMb4/B9Ar9uebUPubkD6cL5V2F/DJXfa2QcmxrBWKWbkP
	 KJ6zWRJyTN2xwRV0ca3+lljKCRWlsEdXvVjz0w3gDzp3zL1pxooCR776TEkgpCUnAo
	 PVenTNGMu7kixdXmiSbPeGqjsOZUraKyUu95GOo+9MkVGbB5TUEzJuS9PaaHNaX0vA
	 SklGpu4u+QTaTucHToeipx98QJM3jchC+QAFhvwLoxDScVLUaP/1qqRVpO4DIV5zaY
	 76g+BjVfLcJT7LdM6uzSGedUqVoF4uqqNzCfGIYF3BILpCt/vqAcY4S+XD2b69T+pK
	 xtxGJawiYaEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BEC3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641515360.15595.460176097139723614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f0ff383ef639b7d4717660af8db5ac41e9b9de7cbdbc58746641393ed91d78
Date: Sun, 15 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726415153
