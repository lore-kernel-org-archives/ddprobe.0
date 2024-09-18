Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC503D8E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726646754; cv=none; b=Nj01v1NHedBX5vyCZs/80rfKvr0atXPHBviShEcoS0CAkXSbihHxHR1nmsLUH6lKlxjWHkKCNk4/BWdzz7r4RFOhKBAvFTL2XnG+c0WIvIcJ21rChVF2RCu7QFswmMgAb0S8hlzvNsdpgE2BsukUyvho+csOdsR5W14Ei5+2wLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726646754; c=relaxed/simple;
	bh=YPS8D2F0+D2WEmDzTQHWShSTtETygx9CVemWMIrySsU=;
	h=To:Subject:From:Message-Id:Date; b=lpfzeP7hLvSzCLE/DrwwTS5iaYtMs0P5x2rXByhyHQDuGt5QtpyPL66ydgu52tTX3f1fa3FrVRCuWEJyyDmkjBnmAxy26yC4VbhJmtCYbpEn0uCngpd8F1BJ+LW1CuX5pFcZrs0xiQYQZ3TYp30bTB0WmUIJnUYdpPs2NN2UeXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNmAtzwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNmAtzwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C3C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726646753;
	bh=YPS8D2F0+D2WEmDzTQHWShSTtETygx9CVemWMIrySsU=;
	h=To:Subject:From:Date:From;
	b=rNmAtzwbcGS14coX6+DQUWLwA7xfOPuCxsP3L0EbWSAFNuOItXuwjr2NCrKk5KZNM
	 qAwaljGfpNW8XJD4/gOU+dOPjlLvQnLOrG77E8S5iQpmlanyoRpvUCRsHmKSZ9VI8y
	 opcodcrPqERg9wuR1H9VnoDUY1Ojq/5w406dC6MmtWzRXUh93Ql/LoIiFbYNfviTXy
	 RpMGE8hPkcel4lMqVNskGvgDmZI30/4pUnoQXm+Ga9K7q3K2u7fM3gfP+EBvpoMV0D
	 sVJgsS+bhFN+/loOm5HDUlbKnoOm9dCFH2OUzH2KTNAFxIgLhaQdN24O72z+XLczpt
	 qWm+uE0YfkT7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2FCCD18B
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664675361.32075.5601741904264182130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcb0893ad7b35a733aa89507c967f39d0a87235862fd0011067dcd892fe01cc
Date: Wed, 18 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726646753
