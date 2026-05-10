Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8254A23
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778436634; cv=none; b=akd6jyqX06kw+fGv7d0K3Qa1M6P7EuiiFdVRrhVZsfJM41XUq9zDMzVIzRROrFuXq6hcJpFMrh1Qk+G5UAKcEOdjvn75s1IZ9gVoo1ohWtgaRtVjyLLnJIigcR0toVKM3jo/Ep4+idWWTRnExILnqlnGcyUmb0zd06AEO6oB9Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778436634; c=relaxed/simple;
	bh=ynOWf6xK6Y7haKsBMwphnAG1ELqWY0SonbSJrTuSY68=;
	h=To:Subject:From:Message-Id:Date; b=himZfHeqTN8/dCKIHDe5I3PrSdFE6BnyPMXsDWpIDzXOChBqNd5AxJBvGeyeRCYj1UrhIMymv9fPME2mynMDnHmQhGENzfNrg61jXk3NDMo9JtiXoY9lcN9t8Lr/Rz5DNylzkb3wSaHvP33kLN4749BcsVwIwluwKiPunvBVonk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBfn4nMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBfn4nMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2484C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778436633;
	bh=ynOWf6xK6Y7haKsBMwphnAG1ELqWY0SonbSJrTuSY68=;
	h=To:Subject:From:Date:From;
	b=qBfn4nMZetbQV4vfL7T3ZI/TyvrFy1lTT4YD0sdATWcuBVIoHbgPIBSJFjKJbDQJv
	 nMnDaL/r++NlQONFDxRZzisUou4VcPBn0OQt+6CjLXQ7dSWu/FtToiy4aULjK5Uy1C
	 401jh6+n9HMRp1kamdxoJ9yHOdiYhdWmFhAtlkR8sREmoPsYLgwPXNaT8vDd2EAhFR
	 yKjkJmQVkESS8yWgvU9pD/rzDnsjkB0HlClqoQgik97sInIEUQk1M51DOxgYn6R0XO
	 3SuhuvUDiFf5K399BwLMG72iDpbjp1Lef3KPQwnY5GHmiUWDtopRkBlWmWloZvjNWc
	 ai6qyzsNlzZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE7CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843663369.17140.10497546370657874473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ddc71fd5d083b64c76b296d64596e5f1a656cd58bfa8ef693a0e0eaa096262
Date: Sun, 10 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778436633
