Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BF30100D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782302254; cv=none; b=MHrFd/laFVkyByMiA4qEXd2c5WrcWqH0AaholS1H1iWaFO4/xoz+dsk/SdNGT2vRwMP0ou9xs2t6IkU4k3EEmW170Quiw0q/R46/H+wQXQSNzykPOVhbMvG6jS4atLwV5dOkqO5Dnm87zERnq9PDXx0/3QvyCQF+7g+hzhqbjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782302254; c=relaxed/simple;
	bh=fxaerOX+lTo1c6xfCvFb57uUAhG2K+UvxyW0w/MeZy4=;
	h=To:Subject:From:Message-Id:Date; b=Bu3GvCqgKlAFw+NbKpHiA/CwjnbNx3SHDRG569VDcBouAqt45ceTLxfSXYjIvA2L/XFqt4Ue3hXJ+FApjpVglSLnfjEwUGRtqHQux4y4HZuZsXAJnkJ+GamrpUss1vyHq1KFizMIavndqkCBVs/lNo3CZ55fndu+GKNoS444EKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4rxu2Sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4rxu2Sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BCCC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782302253;
	bh=fxaerOX+lTo1c6xfCvFb57uUAhG2K+UvxyW0w/MeZy4=;
	h=To:Subject:From:Date:From;
	b=N4rxu2SarurvZYE4c/aA9Q7zIRth7H6e5eTEy/fJuPBxkjyNNwaucU3PGm3+q4k5U
	 yYHi+r2bkhqL/gXLGU12TB/eLTfOaVo8ySX303YUqjo94XTg+YRIgsQpHUHid24wFl
	 s7i8ho5k4cqEhJ4Qv62r3iTinm9tFJtrf5AnX90zQSj54ZdDvlTzik7iAbAplZmNEo
	 WfonbMhB++R9oFe+8QaG2RIABrkko8XHqd/QiuU9uAy+edbdLqr4jt4qr6jEUZ20dF
	 RBxatzLhvTX0hRKvXrP808WJKpyhkPO6xOoYgGElLlaMT6oqdY4Ftnh4TGmrz954SM
	 UYZjWD/1PPDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA1ACDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230225370.27632.14046185652377820144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eeceb13e74cbe710c30ef8334418698469eff9d1b03562cb9a4a9e061e11089
Date: Wed, 24 Jun 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782302253
