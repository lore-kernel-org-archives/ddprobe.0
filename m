Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AA15B1EB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765479174; cv=none; b=DTcZuRPDbymJm7+aee1bGOkT+pgiHi9f2Ru/mSviZyvbwESX2V3bqfOOvzgc6SvGIUql0xDAJYEyA1gAnk2Q/sK4I/wOuxesrbOrDjtETGPB4FQ5h1pEKfaO7PHpCe07aoSrkIZtEmdFPmnG91ozvAwR39vR75wOuv+qxbr53bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765479174; c=relaxed/simple;
	bh=VdFMLRHi/jdEh9aENiX38Larf3hQ1gsRm+KwrK8c45c=;
	h=To:Subject:From:Message-Id:Date; b=DjLZ0OHwyK92Tc2u5ifxEH/t1hpywRkLD5ynNbMJnDUDFNbKAdQ2DmpnFShup6RaTJfKi2tV0EPChFQtbIsdfLCtwi2LkYMOar60eS/2EfbTI5i+J6xMWOGSbdhYxha8GlOustfVavUOYZUZaJFQY0bz9Lm4QPoWUJnttb9rUyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb85TX8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb85TX8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765479173;
	bh=VdFMLRHi/jdEh9aENiX38Larf3hQ1gsRm+KwrK8c45c=;
	h=To:Subject:From:Date:From;
	b=Fb85TX8BBLO9VviZQCuMDwhAzS5UhmzTKktsT9wd7wC1hS0Nvm4+hRgy1MkRDvPZd
	 /jYGS411L4n3Cfsi/B+bfMt9pmOWOzm3dVRUOOcvRMBiBcCe2eAEN9KVhC6A/ZSJqb
	 kWGxneM4B8Dk1HFp+yEVL3Rt4S1zD4DUtXZPJITgVSAQeNKBk9YoVwGTUhvl3nrHKo
	 K5jnCUv8cSoZypLFDcJjGCUVlAefJ0tlbEZUMaoO+/70WKuZtYAPz+Gegw4NHL31zd
	 j7J2qgZHIRhhoPDuO+VeyjSj+RycVAPUrrCcAIV8wm0OWIYdr1x8zz/JINQOuL5cRg
	 edMTgcGe1OefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9569ED43341
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547917360.13014.6051133667952860758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fe3ad1321faff4c6c03901af866d94c50922ae137e3687d0e58c4a125ab2d0
Date: Thu, 11 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765479173
