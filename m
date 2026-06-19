Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAD63A7D98
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781882194; cv=none; b=Jz2iO0ZE6lvDATO2iDnifPh1h8QpPAxkd+yHRFqmPG0MOqbfwdhTPvxSmY80b4j492gf23awRuMLOs+IduuMKmfpu52i6sJY3ETIX5o3fZYPqu0ZGaxIGZ2+A2+e/yMbvaRy8djh0cEHJ0J2aEKV8sy9N8NYNczNJS+O6RIGDr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781882194; c=relaxed/simple;
	bh=o8Fxm4Ekw8EcBIOISn+lrsf2U5geAOFUMR5w1pT6P50=;
	h=To:Subject:From:Message-Id:Date; b=inT3FLTvYbP++jTj80Z4oaJeiyjgVaITklHUchoBIycPKWrv2dl00NR1WRxRizn8xU8Z8EET6uEeCBaWmlKxXJaD/Zigmj3np2XvfWSnYXuSkxW9ocaaxp3zFkivIDAUSK/9VNHqjOIFlBYqzQW8+O4IeLJSUjUHUYQ/1ZFXSks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En2XmTlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En2XmTlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E9BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781882193;
	bh=o8Fxm4Ekw8EcBIOISn+lrsf2U5geAOFUMR5w1pT6P50=;
	h=To:Subject:From:Date:From;
	b=En2XmTlEObCtM4m3EsTSlqreVlJlbEmx4ei+EDS/K52iWhQUTo2MpMIIzKeMwS7L5
	 Ni6pngvH/az005CmaGg3jPTFAJgmwL5vDkaAwVEXvXErfF0TFxuNWEyQ3f7bc8xmZl
	 M3Nx2j1aD8khCAVnMiRhoHi7/Hr4EGnK8JycZkhH0UUQ2JQJc0WQXftk4lIZbYRy+S
	 hho5bd4sDGqzlI3OymBcCCDTU/jzzEg6FdY7Sm64xuTI8qmTfo1NX0J12BAdoWpDdN
	 pDu+smihn0eRS5qdh6zCvlw7Kx3WbVXuNNdREk5X3BepJYbK6Z2SVcoHTQjJqtBSt7
	 cbZq45wXQmAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965FCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188219368.30202.16292120295159892298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7718a01d868a923e677243c81989123298bb31390547588fa4b1845bc8765617
Date: Fri, 19 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781882193
