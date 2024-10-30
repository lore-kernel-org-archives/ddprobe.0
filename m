Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437B41D0F7E
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730288754; cv=none; b=UN+ibSepS9cEEwkFqPO5zZ+NHF66fOOK8hgiVbfNDsLHmmPgKD0Ykb+TvEPsAXYrejXmyTgIgDNsOKIG86h5KEqpLKRsyblNhIQLqnng5EmSNA/ifSOpEhO87Rqdvmvsw+Kt03PzCnsYgV+culPD8xTrrd+QgjXz6aQ+qEIgh08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730288754; c=relaxed/simple;
	bh=35F9eCr8yeWbXAjSgRJz+aHopJllJp2FFpOTZIq5M0o=;
	h=To:Subject:From:Message-Id:Date; b=pLemApWFIql/z+s2e0u2ozdDLRxKFUkDH4ktOZWKPrjR/KnOcWwZFobjPRAWsGRbexAZi60HeDI6Aojz3ETbKYDIkzLe+STU2HTohv7MY1aCmixAnq8KwXgb2R7wX3QGLGTf3f8jFWuLmK9G3UVyRQPQAMYuVPKc3u8OS4I9mrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMn46Bsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMn46Bsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2541C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730288753;
	bh=35F9eCr8yeWbXAjSgRJz+aHopJllJp2FFpOTZIq5M0o=;
	h=To:Subject:From:Date:From;
	b=WMn46BszXo3pvkSDp71ecUeqV3/+N3mkCTVkD4yxiIldO9udk/IN4VLNH7YxBeJsE
	 Xv9/K6uVwVgD2Y/+pY3/Abxu5J2eddYyXIayqnoqlf1dMBjhh4g2Y5XvkaEOZfhv91
	 ivORlLykyf9Ub154UooTMeEx9KJHqXDSgCCZ8v44i/C/r6wurbAE7ktIWfdWMioSuq
	 b3vvYBV86KtXQtnqd1f9MH1px26994vSbXwTyxNlS7Ts7/e5WCkLhv+GECi0GKjJ2o
	 5Bh8lqz1gkoFyYR5RxZQXMIPBMvfBznqHM2p//B69QSOf0y8VGRe3uZCekgCs61bXZ
	 k002b6o86ffdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E22FD5CC9A
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173028875363.4489.13067972989937777848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdd797e9fef536dcd22ce35b6835009cd7f267f6eb243d95efd4df8701d386d
Date: Wed, 30 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730288753
