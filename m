Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E453EACE
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742734794; cv=none; b=nfIflubsj929Ms2unz7PeiyRWBYddyqKz/HJx1JRJIF1W61u4WOl86xRu1Z15tGb1sciX9ktju0wm6uBmiyzAMvMd3mnHn1tPjqr36AuerfL/uFPUAUULJ3Cd0Ip2efc/fSEqadGAWIYUoDzte5GszuY1hT3Q2nadtOshBcS7AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742734794; c=relaxed/simple;
	bh=u4hBigUSd8+jJ3lVPHPibIY7E9vvjV5uyyBNrsMzvOc=;
	h=To:Subject:From:Message-Id:Date; b=qJcC0B6OeO0ESVdYrcLl+nL5N1RFeOIiVgSPz2GIJeFXlSwf1pRB6rSpiG6lSRfHkO2W2+orB2s5gGwb1JI89LYityqGTpwSK0VLxVKkcuZwr9dw2E3XXNP11fONqr678vtTZF4MLC7jZXdo1pCOlEYpV/S6FigGnFyUFa3eFWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpqCOTaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpqCOTaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44BCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742734793;
	bh=u4hBigUSd8+jJ3lVPHPibIY7E9vvjV5uyyBNrsMzvOc=;
	h=To:Subject:From:Date:From;
	b=hpqCOTaF2lO8vqgwq6mAPBAHQ6Gxkp2pwdyqK1P41FIObM9wDBWBxjFCTdQ5Kn/oD
	 rOmyGJqd9/54irVwtDL+JiIbLwTiIMyqR3PYV3FWesouM+DrIkzZtk4VopoWOtUAc2
	 waBkAicIsrUQ79MEfNAzoXT48Lxg3KKejLL0YGSjOFcXCu/cfXO7jT1VqZqryKQ/XT
	 NRWNJi4pWIhuuKxiMo2xsfas7qrzAft8P9vabr2LOj4lLre+gvVs5EQM0nVI3bdyaK
	 n6wjGIri6POijXxu+XMNLAb9RS3id6i5oJpVCwgm6zsv/JyaZNZ6JPZkWGQ2RDwbIN
	 1prooXrKxWlFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5944C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273479365.4022.3435443139227011889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774808e7c26238da923801508043ae6047c02ed6cefc352af743ad02d35d48b9
Date: Sun, 23 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742734793
