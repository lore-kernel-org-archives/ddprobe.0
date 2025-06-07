Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B02427701
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749310194; cv=none; b=CpdJkF079Ihib2x2i5SfZjeTtWWEbuZWDMAxGHbOVGCnrGWHfHXQt0j/bRH71EVAbdBMr5/vZ72Jo4ICQS4d54ZngDEhvzGOY6TAJL0IfT+GeGuGAuMZ8W7aaAZP4ILeScg7LOISZ0K523ptQ3HKC7LHtzBP1yX573TGHKT4hgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749310194; c=relaxed/simple;
	bh=zeblJP/HJC4gI3+F8VxqgiiggMfmiWdqdK2nhfOwAv4=;
	h=To:Subject:From:Message-Id:Date; b=MqjUx3/X5goOBxM2sEVmpzolXlcUkbS7+E0WhepS4AHUpqHzbbSe+2I1LBJojQ6blaWrH+HZ8qKddG2UxOZbifj6MG7Ll/9horgQxzYkAwxXA0nxCgg5orD/SLNZUr0spGFv/cIFoSVrgWfvWaoBKirU/LAVcNqtXAj0XEtmzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOp/76Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOp/76Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3386C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749310193;
	bh=zeblJP/HJC4gI3+F8VxqgiiggMfmiWdqdK2nhfOwAv4=;
	h=To:Subject:From:Date:From;
	b=SOp/76TmBIQGJbshhMGbe7dtWp41xjeRlOX8o0VDapTcQ9syn6rE6yxgVYNCmGnQD
	 0/gD1liloPhDjN9sG4WRFK9bQ8N8Fyke+HnIryUImzwY6zS4mnSOL5AMw2JVZdEPbj
	 STlHLasZtWxiAGOtF88XtbjqB5I2Kp+s0FYFzO7mnzZ2+62TO1B6Bop5BUj12KbkJY
	 bMfNABM6K4ETBFRKjrGGaE55+V2TY4BMm3lOv22jeDMk9DCI2viullKT92V0yj++i6
	 idhduIzBt5Ftz0bnlOPPQvGJwIywHiqWGRXJn+O636VN99qZpR4jUDLnisnQOiYbqQ
	 shqCM7gpGuObw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F968C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931019358.4557.16304565968204829629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d8cb5c934f9a0166f578a0f85bda6d931efb334ba2e5821eb89146bbd1c32a
Date: Sat, 07 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749310193
