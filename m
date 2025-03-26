Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43119049A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743032395; cv=none; b=Fwria4FNyjBmiDKyxJZsfv8TnY7fP+3fHNYGV/Hf7Y3y1P0VItlWZ6TUfARQEXN2U6flZBtT6da8MNAaDx2DpQGVkfTtdWtKb/vG4U1XPV6wmqVrnu7AcRHX9sTyNWQ/0qQfIvE01P14O6cueIMHFGOH5K+mLWC2j85BhzXxncg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743032395; c=relaxed/simple;
	bh=dSuZ9I6J0Iic8x0g8zQ863ogc+f7MSxhM/aNkgFxU90=;
	h=To:Subject:From:Message-Id:Date; b=UeFXbvLBhnbde6f25J6XadXLAJQ409J1UKFDY+TmztTonXWEww3Bg3S8egSPP/e3P+JON1zbbuyDUnXyVG6feOno7KPDefvw9jUqx+tuSkZ9gwjLulVBZ9WWTDNdKZ3P9OQs7Fth7GiEMI9OzOlvTfKRArKJDnAisy72VpSsDtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRGAFjD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRGAFjD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A98C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743032393;
	bh=dSuZ9I6J0Iic8x0g8zQ863ogc+f7MSxhM/aNkgFxU90=;
	h=To:Subject:From:Date:From;
	b=CRGAFjD/XM5STytieFcHhRuXRpkZ3X9uotpMtu/Yfyb2Z5fVaE3HC3oHE8fsdRofo
	 V0NF/vw/s+f/1nmFdG8ugKBNbroxbhVdo4XV8yJePoqZ5qH0wa+qN32f2byEbHpDRp
	 ULC0rKi0OSechJ6e4T1YUzyCPLpqsYkuX1LOdiH3asNVvYlZC29AJoBPh1IHljW4Gz
	 qid4szSlG/inQ24UrCIO04X0mc43zDmn+dn7RdI06an5En/NxTshjP6ahj4KlxZywa
	 CM24wJhjDnLa0ithHFLRAJefuFpwoCfICT6gVxNakcZecHYtOmGbRZL33vQK7hptUl
	 zWBdKvOev1oag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C9C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303239362.6024.769103643362557204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fbd1dde926ccfccf5feacb7d68e44fe0609c14e4641aafd034f0edc2678cf8
Date: Wed, 26 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743032393
