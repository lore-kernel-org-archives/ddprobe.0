Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259FF8BE9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782215194; cv=none; b=nRr4QGkyiOkme9UVc4OVO8OPBj/ZXSEtaoxiorCYSthpZE1I4GAXXaFCRxB2b8/+563z0Z5D6koUhuL7GNLMHbYSStKlFwERFPGWiiRnsSFbVh7Y0PFuUgHSUJnqF1GKizAjCaNXEufj0UHE+EWiTG7ET4URh/DclEb9UPU0GjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782215194; c=relaxed/simple;
	bh=5V0/rAoVJUjfoFLPLcqMkLGTcPl0ZjxsJRvouJHnzMs=;
	h=To:Subject:From:Message-Id:Date; b=rs9P4FQmspfHT0fBSzqKSc6DVgrVW+i/uaLsFdmqTchDOefyFJuaUvQs23U9DG5NKV9N5QlWRsAIjYdM6AdVkutQmN/uwEUoCaQufobc6xfcnbrsRUfzgfvDt0fO05BJ5a3ISn+ttf5EpAZyyegiflK86Q5py/gWTkJy7BSdgKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb33eHzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb33eHzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0839C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782215193;
	bh=5V0/rAoVJUjfoFLPLcqMkLGTcPl0ZjxsJRvouJHnzMs=;
	h=To:Subject:From:Date:From;
	b=sb33eHzM/fDsoGh5z9mRvymDbViUlnpGSukXdmP+SV672QJBlgXqRNcKjTbpsPhFR
	 bAdd/nT4I6txmhMrSa1UkphZKJcrZ1S9kyNtsgvze35UY9/wUQOthkszIzAQY3+qH3
	 gPuabolTqOi9XufWFRr13geOJOdRpM2BSFIyfFb6QJr/FO1ThVuTyH92UebkXP/qwX
	 HoaVSa4duEgwGMv1KA7NmuJphqzlS2LGu8cBA6by09vBH7OVl4rP9zl7e1fEMBJCZY
	 TSESUf/VtaVSjGukBl8WNlAWsX0U4ZkibfBB1U2ySlU/LT6ijJ4ycbjSmV29eoJdNw
	 gTgGpH8/BF/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59A6CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221519373.575.11069091194290776244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48f36fe70abc5959ec7d642ff175880b59fe8474bedfcf339ce95faf4985d8d
Date: Tue, 23 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782215193
