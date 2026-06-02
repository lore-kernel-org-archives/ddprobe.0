Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4630C38D6B5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780373674; cv=none; b=M3qx7Wa87LyPmRnuwTFmHjIigEjscvJwCEBlZsHHRlcAdnBmCY9N1P3iuMUvfqzftjTrRcFa+bpNLcv53nRThnIttaBeUPGTqtDQb4RRIr7KV1tOJJ71nUN2hKByivysf1BsjxG27gTIESUubDbnQcz/kB0GgOmDWgVvX5JfxaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780373674; c=relaxed/simple;
	bh=NuwWsvpp+WTd5bu/1kIgpciLvGMz8+ZE2pU7QHCVEFg=;
	h=To:Subject:From:Message-Id:Date; b=pYnHf/5m+JJXFPtTbZGHE8aNAglr3IGKrSSk48gl+97+NBoFMSf3fad4UJRC6HN0XimOmMNlYVgcNGUShKxINKr+D2DusgGdS9cDP4s71X5kzWGhbXm5EJYrqFKoG1MqYRyRCoVRPdHUk2wfyzVOmPYg7VcCL9nYdV3QHvmhG6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJv/j1+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJv/j1+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D54C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780373673;
	bh=NuwWsvpp+WTd5bu/1kIgpciLvGMz8+ZE2pU7QHCVEFg=;
	h=To:Subject:From:Date:From;
	b=tJv/j1+M0ozJOoPD1xaxZHKztnSA9XjhXK4GidtGKtiaarEWoQSQsS2BMWLAl67jV
	 Xj4c4hiy7Xmg1SbfVLUAAx53Zgl4sfF1ZudPyemotAYNBj/XrF9Hu64wbUEpyaZFYu
	 ECYYoqa2jEraiigYP6H/yfOXl15HvfCrRXSs/mnIyZbzQ5graIqDf3G2EGQbW4Foaf
	 7weLPtwtS8VMNTnra0P9bpojSIMqNf+dGgSMME8/JySoevhfx7ikHXjXc49wS9PnhY
	 rQe305QP6iUcwkxuxKqRkPM9IAms3jrJ1533MUy9Fm5Lld/mSS2Jcr2SbR4/TO7+nB
	 e7HvBxzQ9z+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE126CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037367368.28860.1725650627900959434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897a067fe6e8a374d4977a5815f4f040cfeace8f8b771f4b9de4267de7702255
Date: Tue, 02 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780373673
