Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0CB3E6DD0
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789539034; cv=none; b=h9iNgcdneTYKN6mOZlXmRhGTdEYLsRH3hrHjPhz0THtwrP9FO7qtUwuM2S1wMXppdBoUVUJr4pYpFAKmhUi5DSGxXMmiQcJm2as8BQBdha3zUUk3D9Wxjs+cEXgwTVithJh7alUOQ/N/KulDJyok5vdZP8eECobP3vKt10Nqqe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789539034; c=relaxed/simple;
	bh=Ijj/YVLyqgJ5fDDCQMtaAIJdEoe2sYvxyuuV+Q1d7RM=;
	h=To:Subject:From:Message-Id:Date; b=FS1z3zhQ98dMiANBogC/5z81j+Ua1jUE9aesD1ECynrlGUf2RzKX7a39dvjErUCXZw8dl3nbIUtNyBwZrn5yZQN7PYoJJUf0Di0SnImLsmjnZgLQmU6l7/AGscEGX3e/F7cjb4wcQ1QFDVo5Z6Fu7gxZhAsG5htzsTddBMEUz78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDKD4+Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDKD4+Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FCAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789539033;
	bh=Ijj/YVLyqgJ5fDDCQMtaAIJdEoe2sYvxyuuV+Q1d7RM=;
	h=To:Subject:From:Date:From;
	b=LDKD4+Vi6SWMKDFZvaf5VIkFqbcYNyw6U+KGXSZkye1haQa4btR4AJmIR/3bnDlRr
	 xkTGUk5KckveRTJG8PCAVr/FbMMUHFUT04oTNbh5NVCI446hRQje89SA9FrS2d/er4
	 tjPfVv1lCT1rj2UTxtjEzn8/HZCnRDF/9WBgeZK0+fsn+2ZDt2LIUWP98qx4i90rKO
	 fbYfUoiNSF3fiUjIxkRZ6fKwm6VZ/j5wy4v7Um+XJCulLlk/4XWEu+7Sfel4b8FVz5
	 i6ShzoNKgTLAHRnQhsxk5nXUZ/c7LfVqJkDlDIIk+d3j4CFQnPMZI/sYobAm7zCRhP
	 4j8StBoQMfzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C1C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953903369.29193.6652548579876749267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f938b3675ffd7c2091c4108442805f91e481f7ae9913172594d98c8e6e7da0a5
Date: Wed, 16 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789539033
