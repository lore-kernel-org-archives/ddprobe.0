Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8330B525
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772694294; cv=none; b=nmelOisBhWS3kHT12AJUjEjFAdXlinAzX02db40xlAuIfDrXdfnoJUixQtytZMuk+YzTU7/62AkKgkzvBGemLhFNq02pa77YiLsr8iQM/dwHVWRtmNy7dNFy+6LeGPT2XpO/0DgKwysd4TPXRQW3XIMWYkyim0KXD4whs+RgMDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772694294; c=relaxed/simple;
	bh=4yalz/7HFlRWVVKEfMX29ULz5H/Qnf2PerwVw7unutk=;
	h=To:Subject:From:Message-Id:Date; b=nziPG3gegRqtHsKMlFLv4r52Ku2j1EQTgWxCiIMa5xpfGvcZF6eHEbzLyOcl/pIychhowVrOIkfdbk/13XmMx0QOM7Z+WGazL8D52lx9FmidolXOhutDOPF6RT0Wsu4o9l4YOTVN1+ClPVnLzA0FE74Xvxo/rF6obeHjCe3cbuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5vw3VOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5vw3VOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB748C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772694293;
	bh=4yalz/7HFlRWVVKEfMX29ULz5H/Qnf2PerwVw7unutk=;
	h=To:Subject:From:Date:From;
	b=g5vw3VOAIFLseqca4fB2EyJwwTKnQAgEn0HRhtKpPhpF0o89fhGsVmPL73/gYps+f
	 Jvd3OsCXQcGRbD2eVoiX+Z1St+hCe9J1J9SU0m3xt/BObOamV9mBaCRoDgaEnMWgpG
	 f2/Xw8RdNW4MoK5r0aaPTnqpBiC6WgDbd2vodFzz2sb4IIMzTLS0u3fg+rf5x/1tLP
	 JHFE5BnkYm+9XWdZpM16xjiAM33Df2AGhkcWnmCoK7AcmzyFvkyzPVdIAPMJYZYhSR
	 SRUECWrGjzw4aPdMKBdlJBGVQEgfhKW1ADga3tOTFJJ9ep6DJXEQmwLrWshZn8UR6O
	 3uuEnIuHOxXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B19EEF310
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269429358.20998.3419633819129905795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0581e25c0c8ad5c3d48350ec87f22a3fdb4c2a1fced668e24f691340064166
Date: Thu, 05 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772694293
