Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAFF7EEE7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719956123; cv=none; b=VJMBFbs0D+L+ePJ/vOg8SO6eHcapxrICyQ71yB9BKlJP359YomX98kb0n623PakTDWDxoDlQrTUQw2uMpqt/wuTCiGwlO58lXnj2SwvnUaUhIwqYbgRWWq7CnUsg75YV8VgLFJ6GTYivHOjoMULb9E3WKA2v8rkmZECaA2Ae0Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719956123; c=relaxed/simple;
	bh=vCXq1UcozgSWT49cetCsJYirZM6H7BbNuQ5amt3mlRg=;
	h=To:Subject:From:Message-Id:Date; b=jIb4zajCRBdoZwjzKU4ilqKl0ou1WRd1y7tx8ofNaTEi/kMNuk+JnY/TbQlBU7DT1Lw2Adx5kfm9vK5V2wZqOT6Dld0rRFX2M6VzuojsUikUvmeDgDCFf/+nPkQYAs4chxawCqD6sZODv4RP9Rbdtcvr/LMjt4WgVPAnWBj5Dmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFsN9h8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFsN9h8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7489C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719956122;
	bh=vCXq1UcozgSWT49cetCsJYirZM6H7BbNuQ5amt3mlRg=;
	h=To:Subject:From:Date:From;
	b=IFsN9h8A5xCfR4AC2mJ1qDM32bUYh8Twgs21+SKMWTOJlwG/jf3n4cL6XD0Lf/o79
	 Ob3s5GbfIMtjepmx5pjqMgj379iBnEkgdhOU2DDaSAvqDIEG9XZGLvBnOjAmQlHwrS
	 yRulkhcxL+rMxk3QVOpHKC2G/RJvPnnC9M6KlIHVqx+/k2EVeSw8v/s5Uso8u2By0B
	 z+h+Ar9qhb8jOsSCM43snpDtuZl+avZydGRyUP4OfqXgSn+EOXYniM+/rIX2eB+hV/
	 uEIuxcghfkPrF1vzW17TWJXAfv10o7LiPuoz/BdF0fGKS1wDxoac6DhKxsvSnwl4oP
	 em/AaCbLrPo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21BDC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995612277.14413.10588260769191016638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144b13a8ec25bb01b90e43b4647a5f9e0c45121b0440399ffe00af50b7955536
Date: Tue, 02 Jul 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719956122
