Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F6114AD38
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714152743; cv=none; b=LfyqZi0anw+zQu8W8Z5zGcUaMsrJpH9e1rcEbQVPIYA3w4G14dtDtn6rQrXwR20KAtzl6Dpv7kjQieAQ97GSOC7ocVAkhdKwkpPM39r9Ea/h72FGRkiazkzOLsqPQAM8kYMv13z56zOuoYT6wrvx+2/B8XkXNTbLTeLkWhjbZ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714152743; c=relaxed/simple;
	bh=/hybwrtrUxNv4oQInZPd5vcBKTI3C6kbG+oIwuXlhzE=;
	h=To:Subject:From:Message-Id:Date; b=sIOa9HmUZC/D0XcfRPUZHpKS9c3WQdH9iruOfdahSba7lEfHrU+s61e24M7z7NY9RXTrF+3QE02XAcTKOho2piBUQ6tXqA2IybELwJdeEQa6fbF578iu3IWaXZLumXzkWFaxBDS/x2tXY+jFiwGjbT9GCEjsaK9seWKmSTYNpnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDst0RH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDst0RH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F66C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714152742;
	bh=/hybwrtrUxNv4oQInZPd5vcBKTI3C6kbG+oIwuXlhzE=;
	h=To:Subject:From:Date:From;
	b=FDst0RH22sU0gR/FmPfE+K7VI4ryUTmZ5sCM4NPXnxkqBmciG15PVmEpb4eMlceEr
	 Dgkd8Mdoc9n3zvr4ix0dvX7QBRtNEpf0UmVmE4/d4XXArMJSlymp08l2UxK9HD1aCM
	 +DQFzwKHpG18eYTkjddw6w9RzS+T1aahl8FYBMT0LbbY8JcX0AEoDu71LX6oe0j4QR
	 r9i3OdEneulrJVZIswPbRLI+3qBJJrRzNJ9x+LSpZMTPpdSMI96LxkPloRVjPjAY0g
	 Xvjw20Ffo0N7DyosBCUIsLk9yCleR1CIvD2t5w1ZnTiCD7sQf01AyKLCE9bH8ScQt+
	 22FTC6XsTepAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF151C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415274283.24201.2131477669994742902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb9813b62985e30fa8bdcd5b85791c5f0e027abb60b64c31d8cbee1997d8ae2
Date: Fri, 26 Apr 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714152742
