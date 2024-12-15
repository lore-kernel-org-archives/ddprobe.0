Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2341813C9D9
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734260154; cv=none; b=pXXRiyVct9lAQUM3GMhfhl8VOIQ8l2NGpzIBZrMEbrB7OgWU3cGKv/7/IvcT8aUKGRwaCOsD50Lu/sKiBFqmo0wFMVR12ApHXaxeWmfBV7yn94Nx2mC3dIJvBzbkNQPxL5qGb06wOMq7+SQxfcdZwAvNUQnpeaOHBBd/DncWtyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734260154; c=relaxed/simple;
	bh=j+Ypa0nDIp/1fYIjrGbILi6TV2e2WNH5ThjeQddlnow=;
	h=To:Subject:From:Message-Id:Date; b=t94h3BVqM9KrGPuswxwT577x41paVJabqGiEDCUwAGbECO1K34oNrTvxhXCfAsv5OeSx86HZ758wx54d1mYBMG344wSLwP261OaWBvTJa5OyyDJyboIOLfSuGVQmPCCD5fa66IQekBw2Qa1Kca1JdtKUG4UGN8YogJDp2c+XCAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjuoudsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjuoudsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4229C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734260153;
	bh=j+Ypa0nDIp/1fYIjrGbILi6TV2e2WNH5ThjeQddlnow=;
	h=To:Subject:From:Date:From;
	b=gjuoudsq31oaa0E7IzhuR3LATGAVFew/JD5M5kq1E471LTfrZXEiBiw5rYj+Kbb0O
	 9APvnefk5yTrSjzo13+hAEvCjUK7CbZwdpgIiPFMRzqKQPbuE4Ecohm+RyK7PRwEO7
	 J6LnPiuzdraAGGXu93Hum61do1P6vl7EymXUoQbSIruGv9xETQZK+lVO1ryv2mGh+M
	 6I85iSNmZibU8HSEVkoI0gkRlleNBBL9NKDXzbZVwD1ANyR+uG6kkXpxKFaPFnbwGW
	 a16ivinqRRwduOPtv1CeRXZC7F89aIuswSvVX9hRl8mGoFaQJq4kiEJ/cWXqaZ/rXc
	 lUG5aTPp6MoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206BE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426015358.9978.11368854985909822343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299a7b5dbbc3f596b4f6bc01b0380ccaf5af046aff03a91d724aee9467db8cc0
Date: Sun, 15 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734260153
