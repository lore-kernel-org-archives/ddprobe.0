Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A78EC2
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728779754; cv=none; b=XWpiD0XcEMambe0Fxk1Q7b2xkT1yfofAMmRIsCRfqkF8MH5le4ns/SwPFzVbAXlCHVoBm71MzWUaM2x0GRGXs/LZc5iL1FKrAlFKujDR0ABeoa3ShryR8wRjkOPpDmn0FJC7EYRH2QQppYQyZQoOfesigUsh0GFu8qr1iFpXTR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728779754; c=relaxed/simple;
	bh=SvMDatzEwiEt/vRaH4YbXHEVYzptTaeTNj6be/Y5lDM=;
	h=To:Subject:From:Message-Id:Date; b=ofldTOGfwE5YUdbzhONtR8n06G2IX9C617fiU8EneVr5S4f6HcBC8xa6d6IHVv/a26lkYMrJPM5y06dArnz9CwwyJ1AB0M7HCJyn7UO3PhFWN1ix0+ZKcQf9KbsgsGx+G8/1BTKAHXAjbrhsVC71D/ljsaeKcTNlSHaEhKs1ZWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umAOFeCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umAOFeCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE939C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728779753;
	bh=SvMDatzEwiEt/vRaH4YbXHEVYzptTaeTNj6be/Y5lDM=;
	h=To:Subject:From:Date:From;
	b=umAOFeCTEnAEgkgDAx2rsn30PQXqozfmb4K8jtSITMcUd6KU7WW9PdvPI3Baj4kxo
	 5a56QZGP3aC8x8DaDyQviRitnIG4zq9+ijH2dJtIpzQae6L5kXHF6ce8BTprURDJo3
	 2xuzBOLu7BJF7x8MkMSUwJg2tk+9uUgIC+hwORVZ/nQJKiuTWucHpDtk6wA9Dp9FNX
	 TqqnBiI+71i0tSIgzaln+CcYZdfVrB77x6OvQ5tVlwLYACOqwyqA/cY3tnGyBJM2xP
	 8wRTqWwbY0BqzKIpzh2fkDXp/RyqsgZWw2NjmGJI+vny5e5xFrkNzhePLqhynI1Zjy
	 //1h3s5eOLXNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6EDCF2569
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877975360.31353.7808578276170540657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c53eb09b09739e7d1578efbf345c2d7f1237a30a5c4b7e5fe3eca887fdcf64
Date: Sun, 13 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728779753
