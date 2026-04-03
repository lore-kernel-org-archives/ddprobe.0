Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315471C6FF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775175334; cv=none; b=MZJ14Iw0Vb28Xy8HNF1f2nK5mqK6Mu8Q04urlVgIBldAbcWgb1KWq3zyzYWFYaMqAmkaiHlUa/818/9Kdj10um4VFr6FsnSVgvxEvEvh44MUfg6qeESbVreKcmgQwDkNwEol3Hm9X9HpvIRilBeIdDA0e3Rtgh4CkfGKqDgS4ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775175334; c=relaxed/simple;
	bh=YfR88oQz2wFZ8PLXZaHMFMhNwDR1jCZ78y8A7dZaFAQ=;
	h=To:Subject:From:Message-Id:Date; b=Ug8J5lG0cnBrGKi09PyXX+xSWpr3huU8vWH5H0wjzflCga7dORGtVF/n0bCB1vsP5HP0sq0/8PKgI9VREO29v1RKb1PmS8+ipfeTTSNs8251CtfLwJVYIwjbBddOUS486tcCvXPSApFBD3ZJ+4IcRJycgnKO7V4Ao4GhMEJycbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkjuUWhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkjuUWhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AD8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775175333;
	bh=YfR88oQz2wFZ8PLXZaHMFMhNwDR1jCZ78y8A7dZaFAQ=;
	h=To:Subject:From:Date:From;
	b=AkjuUWhFXmA5dDmihy/tt4p4LD/g9dhUYfkpRDZ0rvRm+mzafTIl++/dyUC1tuTYy
	 ehcQ3CRRcNbxF4aQMK1awl/fBlqMmRyKFOTnSvOeUK99Qh73mxEY+2EVKGDiqU4bu+
	 NROVqbYL6vIojymPTNw0NYO6ENa2bpKCyozNIIz2zY6Y0zW1oljBXZDCl21/PlDECv
	 atxoUA1v2sAsIb/42VgjWtNJF5o8j2pEf767+2uJ4GuCdwKlwRR+QCh0belaU/lDiZ
	 tcYOslG9bxE9kYGfr7bl4jdx2nl0guZDgXpah3fePS9MyT+h/CGvzJ9Gw5Q4Kwp29l
	 RzXz90vm05Xnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD445D6AB1A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517533368.2641.1663971322429519494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddf8e6910d602ede8856810403bbc443e356d5486cf3d68666131a43bf4c132
Date: Fri, 03 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775175333
