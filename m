Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0A3335A5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725593754; cv=none; b=akBNNNDKxQ0gGzfDCf8rZe8XTIDgoIvMItIYsQZIGpGby9l6BM8H+jbiGFm6JFFQ/2L8p0FJCLeObPasfS6nqzT0yTqKzoWKUIoANR2sC46ZZbHEFTyau1wAg2gGB67bU0i+ducmwItaYJg5rfObNUfaE7j8g+dpJ0e+OQGdHaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725593754; c=relaxed/simple;
	bh=5dksWpwA9zOT9X9wNggT8/1+H2YjceaODp2/38lXXE4=;
	h=To:Subject:From:Message-Id:Date; b=cBXyDYGDAf9wThPiKiDe0DGCh5DAbIDTxSJQWDbRawaXgO80mYvjLPyqBBNB5GKajR4FNqqhal8A+p2kd8b4Aay66ltVQhnw+kcDdu9AjmBIaDH9/JTjYCyLVIvBSC6uLzA4uq1J1kFaGK59N5AyDrlgVuAgIV90IzYJqdi31qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPF5pQQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPF5pQQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A764FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725593753;
	bh=5dksWpwA9zOT9X9wNggT8/1+H2YjceaODp2/38lXXE4=;
	h=To:Subject:From:Date:From;
	b=GPF5pQQlbWNttAyF/b2Pv0mwq9uoTxqeZoqKnsk2u7uVeUbMEVHCPkFpSBbCMDVM7
	 sG0vLKNaKsapMaRpHU4NeTsmgdCsqNe1PH9ujL+VefV7SE8uX2oCDcVig9/F5raheF
	 Km+YaoNkMzc2zIk8G9CuZszBX+24wxTqhEIzM/KWrIOj2sepzy4DgOBGs1CI72dRAO
	 grpWI3Stcnj18l4HmPrcR4vo+M2ypRYPSoDM1S4BXrCvts5/02eY24IkHEhDdOKGTV
	 1V2e/LfyKalR3yLGxXMVg/6jojdoXo16r68O2GB+n0n3GUvBwnAEM3SbzdWuMkw+TF
	 c0vDcVX9oI3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9347DCE7AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172559375359.13308.8852113776694428170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcc2d0f7ed117354cdd51d2be83488f20262940b0d0a59e2b40d4a845f5dc62
Date: Fri, 06 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725593753
