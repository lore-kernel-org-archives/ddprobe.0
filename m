Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1033F593
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779831154; cv=none; b=PP0PjO7+I967udinI7Axx3OCxjFk3UAQHVU04T5zhBBbNwUEMiG4pMrcdJGd7L9RNGmaIb6PoXSbEzM+vcWhxWi0B+SyZrtZzBycieRQWac65dmgzvMDgtYL//hogoiVfTQVD6IZq9YdHYcw4C5vNaDMD1XSYS6HsRR5IrnKg40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779831154; c=relaxed/simple;
	bh=3VuDPvD2G72sEBuB+K0YvfEFCVCGMEKZEscieU1NIiQ=;
	h=To:Subject:From:Message-Id:Date; b=VPcxtFh4kWQRWzoccjGInLqpVxeMKWHuhJERiteLn7lc5BNWP1wsvZSWeZdhcpkVtGBEGM39eDuMBMzmSWTPELKar46Dmd5c5hhfX8tWufclHO71fhJRpLMTskOyHuzXrGQ4zFX3O+y2Xlbw06b6KU/OPgMmbJhpts0iCVBEqPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEHy154L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEHy154L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C713FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779831153;
	bh=3VuDPvD2G72sEBuB+K0YvfEFCVCGMEKZEscieU1NIiQ=;
	h=To:Subject:From:Date:From;
	b=XEHy154LSAy9FcWT5+LIZ7OWk0G4b2+jh/MppV18yMuWmeeDIf+q9m8RATw5Q2lcn
	 HHBCRhXUfSnWql6kNO0a7iJvAlm4eJ0kLIN0vZeL/B2mOqNJBpz1xsojh2PgbxZxGD
	 gSZkGIUYaoe32Si88JB35p10AgvQLHoHO4k/VSwxtluNwtJ769l/KaZCDdm7/ql05J
	 Pt3VDCbVJB+NlMXi9YD0ToePnSaRkxuLobsUqVwQKa1rUMSKCW+Itqv8lLUoMEo/Zy
	 l7uoS5ilx5TulvU0dW/Hb2BADaZDLL/5TmYhXYP5aG04jp1JTg/nFW/OU87WizxP3+
	 pCq0Akeb7eOLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB20BCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983115369.25298.13296830898754957664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86542722a73042092612e524d04f3c76903bfd4cdc03e72eaeb69980d3c1bb4f
Date: Tue, 26 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779831153
