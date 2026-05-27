Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F2341B37D
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779889354; cv=none; b=CVhO2QQOC0NVngkWZKUpCA4kXzSFPa7ViPlsLMjddF8Q0Hv2bK5MRgohQ+Is68ThvPsy+W3rY8tfOJl7QVRutG6fzJ+PY4qcmW/V8g//MUVYCX2CtmBagDn4F+7YxohTUgFInPvtB2TDrJ0FGSlg/oCj+XQbJWUP+XPkBar5aYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779889354; c=relaxed/simple;
	bh=SLohqC4Pzit+yycnbQc2F9ngZ5N+AnWgeGlzXfmwKTI=;
	h=To:Subject:From:Message-Id:Date; b=kz8xvpPra9rrNc6Iwn0bxWmvTPjitol2c3GL6MByru+JEulF2fM4IQ+Q6iXUMI5/FYamQerker7hic1xlV3skL1I+MUZ9UTj+tFGPN4vRgZ81IkO2P4GfFnlziHAMEddQySIwZ+l0eVgCdq+ncf1r6oCEcLldQierd6MWwj0MqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg3YQNzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg3YQNzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F2FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779889353;
	bh=SLohqC4Pzit+yycnbQc2F9ngZ5N+AnWgeGlzXfmwKTI=;
	h=To:Subject:From:Date:From;
	b=Cg3YQNzqzWCtQPJvvQcOiG4PCr0SPJDQdPPm2DZGp3prsrK6Q03gYlog3Sc2rrQWc
	 Xr1nCy1Woge+qVhYlNKm4Ooj8xhOazJYjLjOvcPYC5KMQe8wJbvYtjCQgBzKag7Ewr
	 qPj7OzzQBCYRffP85zUEwEeG9r3KR35vF8bkry+m4JHLdty/XifwI0Y25Dqk9M7m5D
	 o6QU/aauKzq/ixwH3dVihkQasv5PnTUvhNJW5qMtpMAO2ZHbfhBFe4uRDZejRzt+fQ
	 kbBdzJ9xcEES03HpffnyZylv+lM1Ys7yefc9JliIm5cDR/JqIO449+4TO/TZmig9J1
	 SeJWFsOdhfM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C7CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988935368.14477.3365586372282830788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb50204ee8a6b257ae22b9383a3a0d53d9a7efd0b0b07938750a4b8484a00ca
Date: Wed, 27 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779889353
