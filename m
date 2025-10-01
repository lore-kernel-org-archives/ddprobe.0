Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CB91EDA0E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759352994; cv=none; b=kHaEpgZDy+BgpfKWurvqaHzr9m2tujyl8GMnhW5HJnJH2qcefS99uF5sVwyANYmUvs7vbTgJX3VQLVKN3SUHPWAkrwD6gk/obSa7KRYEIHYb/dJMdrEc2D+PBTcnPZr3JYQ1UiRgIxRnljC9hqgCoKRG3UdqM9XWw8Vm95RrJgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759352994; c=relaxed/simple;
	bh=Jb6xra8AsxIoJT6D8GK4TTTkAA8sBdiDGkscpSNdfNU=;
	h=To:Subject:From:Message-Id:Date; b=Rr5e5rHNDgLS8THK8AJdeXzpPEut0nJQ03Ca8ZVMzKPV5QILdAhSkFuvyZng515mqF/tqr5qWngMhzBv2WeXxCXplxDaLz7z84Ix4IF4uPDLoAyquF4+j/CMh8sp8VvMeA07SYoDKeqZm4lwL6Df8JECdUwt919GqH0V48ASOH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjZlEqXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjZlEqXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759352993;
	bh=Jb6xra8AsxIoJT6D8GK4TTTkAA8sBdiDGkscpSNdfNU=;
	h=To:Subject:From:Date:From;
	b=FjZlEqXLAvOZ8LTPL4ceGd5sAgcznWe+0hL6rsYQQEQTLsU2HVCkmzfFxiauYqugA
	 tLHm/guAfyXp5vkcu4hdcsozC8fdGSG+nSNCxBhBV35SaruYFsjPl2i7EEP/JB+BY/
	 thv8t0QLoiXonyHeVziy9LoSlO/AFq+Cd2t43Tyq0kvJwRygJY2AVZQVrE/fgACBUv
	 gkjYvI7FlpZvXnedZBh7dO61p/lGopqv/Dj94oQkQyjvVhg1BGzdmV5NyLX+Dx6QBg
	 0pBHPNaHodKGrnjjTLysYb1duMNnVV0vqLf3Lu2lXNmWn5bX5Mjqu8mtha1BROsokp
	 VhIKmzgxHaQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF01CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935299358.3403.16788437933844538561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae828e83355130fb895fe47240ed78efde4a0ba4ba8da02af96aaac826416409
Date: Wed, 01 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759352993
