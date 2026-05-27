Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CE13D5677
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779895354; cv=none; b=cQgl1RkRcMdB5OBWQShAXV55SlmGJvN4QYvxCEpwym8Ircwfz5V1/6L/1nhs2vvDHFI6J64tgYESDsyCE5pCgAbrO0CC7ltyz/k3FCaDZEHhMVaPRrKgyq9CFxsJorvpbVUxUWi6FCD2KaJCmO0UZcTxGiYIPBdYNqWqlrTIhJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779895354; c=relaxed/simple;
	bh=RFtTUvhUeiBkqorv3Th6ZloM98AjS38gP0bd0QpaA3w=;
	h=To:Subject:From:Message-Id:Date; b=Eby3ujXvPKrpqjGnPYfeOKya4gJDv+p789ATe8+EekKRzA2Xbmba6T87rTYr6799al4NCapduG6p+Bek234XlpoqidTSuAFODcXB/+1xi4hocs2CDCVBeh32YYjFiUw962wy0wvSDrMDu6Pd/Ettkfp7CldWogLwEs03u0K47L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBtxxvkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBtxxvkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89F8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779895353;
	bh=RFtTUvhUeiBkqorv3Th6ZloM98AjS38gP0bd0QpaA3w=;
	h=To:Subject:From:Date:From;
	b=aBtxxvkRU0FgK3ie+abF+QSPBk3PeHE3eUjUpXsYJdZwdZG6fFM3/Qo7ctuuZFX3/
	 UHRqIuOH6ECP8v/MjAN1m6Qo3NH2c8qjSG1Na5ki8FipCEH0R16V68UYRIgrKiZy1A
	 00MJSAGLtMU6wI/tHcirLiCAqTkXFvfrYuTgXCY5AhdU0WfJdJ06I060yy8/eLig88
	 lsGnhu7Lzu7Ee2rClU/Dy7TeNZXvyYB8/xrsIfuFMQZaihZJpchROjUdXqwTgLMq2K
	 1qFv3KoRm+Cao4AWIivu8Y0AOpvxA/tncWElggpDM5CA9jNABOeFjTWykDLEgE7DRH
	 gvHpUeOBUWXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA648CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989535368.27756.8423799776909403882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cecf776ac7807ccc4ae157f3269a27db6a7b6010422ffd875dfa3d597d8c286
Date: Wed, 27 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779895353
