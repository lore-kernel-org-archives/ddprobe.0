Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0566192580
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727711753; cv=none; b=NvhpR17sCbAJU+ST3BMJ0LCnUehWFa3Or7eSXZ1uSIM0xcOMzhfGltzreVNe4rxdcRbZaiRMAqf/GA3L39kxu9ZmIRAll/hKlXF21dzweE6NvcYlFbHpjdwseV1MrKVVzoZmwZxML2GjzHrcQuq++Rr5vIFXyDj7THqqmmLYKwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727711753; c=relaxed/simple;
	bh=McTffCl8kMHcEajDUon4Yiy6X5ic9s+P1SgPFy3DwA0=;
	h=To:Subject:From:Message-Id:Date; b=GUyLLCTN/oo00lR/TjTAJ+XQY42q1+8+TjaziSDJ5v1+0YlxbMIUTM7dC4IJYiWTiXh1GWlrpnXs9atm9xZB+ATn8fhnBbmRIvEFmVFNyYH9LTbKck8RuGiIS1uisxMvOx3Jv5R/ahJcnM4g4uv/DgZ1zGaoXrzs13yR6ivhsNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCGydFL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCGydFL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF831C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727711753;
	bh=McTffCl8kMHcEajDUon4Yiy6X5ic9s+P1SgPFy3DwA0=;
	h=To:Subject:From:Date:From;
	b=gCGydFL/WSwb6L/2YhC3FnmTs8jo97lVSjf0mnQF9qufCPsAMTuMLV8UxwKgiq/Is
	 0+6ylT9gTF0RClPmKC79GrC66d1fAW1/TcToy4oVOBu1l1CE1+Q9ega1WrnfY0CsZ2
	 LMgISiBCvp5YwIf2lEZCdNA1/0iwZKVvfjvmKmNvy9awIQf7/c3CnlIp3D7Or1JrT5
	 IrhLSIlivsHmoA15TB3qNarRjM/mwd7cYZqGxurwzq/Y0WSNCnlPrbVtAfZNFqtcX4
	 76NyDsTaZ+HtGCrF5afX0BICvDXWM2UKYXhE5v2YZoidycuqs4wdC4m3eEtjf5v7P7
	 zlBuN8vIZ4vZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB8BCE835E
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771175363.15133.4875700735987260435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfbaf675d9ad243418810ac2cc84f4c01507bd16084586d66cca7f213678713
Date: Mon, 30 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727711753
