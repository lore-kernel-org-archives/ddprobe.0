Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB733FA5DF
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778069854; cv=none; b=tfJifGOGhuo2eHEEnkYI2Gg60hGqUhTUXzmRLFuRGb+pJduYbeXyho5KpCx/4yRmtFM8B7az+dN8AlvaeJXx+RbG1zAP2/+KcyqmWD4CS00eL7m+HQ1vFrs3SFPwoUzYCEkKF90gXZmX+qwon0KwMQFXUVcjxkFj7gNjMP8RhjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778069854; c=relaxed/simple;
	bh=NPlyQuGS1S566uI5DBR6ldG3R+sx/jpFyXbbHFHfFTI=;
	h=To:Subject:From:Message-Id:Date; b=ZbYiv/iMoT5bT9zwatAMBy1QWmpCijzqWq16gu8iY15+Td49vNyXtJwcqB34/Tw1rD/addJmQ03CmS7ijP9lTm/LciEOBHiQTqrkDX0TFjDQ2lK46W1Oku+VUsP1jo6Jc1ogiSQ6FJtoohD+FyYcAj15t2o8yY/NbB/ED9LWmoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4RbksU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4RbksU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778069853;
	bh=NPlyQuGS1S566uI5DBR6ldG3R+sx/jpFyXbbHFHfFTI=;
	h=To:Subject:From:Date:From;
	b=t4RbksU0EDi9/l3rB+DaUEdaWPWeGE2VTeTfEyar58KCQi047rrG+TGFVqTyQ3RBg
	 +RWSdBdskbPbVCQ45VFNWCfiyF5P6D2bREB5QgqOO8AKNpHEl9c7C94DPK28gtZrEB
	 RemetXimLeqo2DvYy/wk+Gsu09bbbFd0yNWKLd2yas2Eev+Hqx702WulWLzx8lCbI5
	 uizAsrRJmfDcztJNADdnjks6YVllU+SXo939E9JJjcJ9nrWL74khmw64pQH1JWY3Ko
	 t/IzQpmgeaP+oDMCb3Q63FKCFwej9+lU5LLWdaEb/r3XAUrN2ZPwV9dE8weBHig5QN
	 4HVXh3Ncm1yBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCECD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806985368.14623.3749316903898526545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1299abf1d2ed09a7f117de7ee5c37d988fec7a4d69519bed2fcf2f7f79c38105
Date: Wed, 06 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778069853
