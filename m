Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6A71C28E
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738388754; cv=none; b=UOCGtwBtJ2pjX0V1+xQHFjNH1sYDb8ahRLlXWUgL6Us3vaseZ7ZvlNoYFja+IQ+5npJ62SUf3T3wXoo34JHi9oqSjBcaaKEy5jXAqzjFWCDCM49sM8M6Ejx3ei2PfDd//rATACUK0/Vu/696URaxfLZL5kFAGeWtXUJcEGhCovg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738388754; c=relaxed/simple;
	bh=2fIxiy3CB5T30TyPVCqICsz5ibtiJi1Cz5V1IL4piGU=;
	h=To:Subject:From:Message-Id:Date; b=lc6LvJx/2Spa2xWm6mijK2Y+L06HhMv/dDPOYDq50XP/l0mTRqSbRHYjdfy+IPJkLIYecyrRDfddkXaezrpxR/ej7Gp3HZY2OPjpGQi07bcBNVYvQb4F0pyABZFTnMYUnNr8jq2gTLX33Tu/qplL9s5NEnOEsyouEx7W2gzpvdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtcCQxrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtcCQxrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB40EC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738388753;
	bh=2fIxiy3CB5T30TyPVCqICsz5ibtiJi1Cz5V1IL4piGU=;
	h=To:Subject:From:Date:From;
	b=XtcCQxrtXlWa4SKn4KA66kBSfJ3YgU80qPWKPfoCKSoWp4WJKsYzjCl7gg9kKzlkw
	 1SN49EQ7JlFKU1711CMUCcNOrfX81wyr6xOVS38y+GPm/KIDzqYr/EWLUsfgi+i4HL
	 gyV+hcxB8H4PoMOxM4XPpVVgsDmLcQ5ik4JMokJdPVZ2epf+lUaowTdqQ10NRf8/W7
	 GZ0rthdfc3vD6H8rz+NgaWcMDaIuqIx9cm0Bx1r//CzFeSlcasjpJi0fhqObAdoSXa
	 FuqRFfhcpd+YgZuHD4lI5uDijuP2kLpkud+lAzYF3uM0fa8EffZSeumErPtftswQqE
	 fdZrYBthEpLXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F5FC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838875363.15542.18184884081020805430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ceafb38ccba0ccb33ae76a1af87c13f4e60427b5618e1df9aa6453e4a43779
Date: Sat, 01 Feb 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738388753
