Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3C20311
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754244594; cv=none; b=skctysgEkqQ7QSKD0NWRTWjQhnDfr1laXjy6TrbKy/kOAjMhUTbTZQo56hkpQHFPhVOc5QDrHi0YRssqnrrHKH5g/Cnrm2yeXpBiYjdkNqlMtYHTvw9t4B1Tu8ikxR11DeMAHgjHnMeVu+zYhBMgquWweXMk0It3a5V2TeZNqWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754244594; c=relaxed/simple;
	bh=TYimld1vNDkXO4p8MvXYjKe4eigRjglrYZVxx20WDNI=;
	h=To:Subject:From:Message-Id:Date; b=Odm4bo4227Mrs0vyL6fHBPWoyOmjmK89Vm/QGBgRtB4C1BxheZa/25VNBoFTueOuhpvDbkMQr+qG8DPwOQ5tWCUCd5ViqeafySdxsHBa6k4BCHLqPgyDe9+k7oJXqhWUSGrMXaVUJIYHoplNeOL0zriRTtGi2BYDAayVmEbA5Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4H9i/BC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4H9i/BC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C74C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754244593;
	bh=TYimld1vNDkXO4p8MvXYjKe4eigRjglrYZVxx20WDNI=;
	h=To:Subject:From:Date:From;
	b=V4H9i/BCPmd5BdNcM8eXwQCfKuomUltHYny8ZhDBuQ+69pOaIgeckutluuaKJnwD8
	 RI5cy5XlLdqHSA/JRUoTjou+OkKU9Hi4Ux1iP7zUs/LmaqkGUiyPCyzlMDefwvnWvh
	 Zyc2jum6p64Xa/EuEVRKsKazTivKYUSKl94v0IwDHePMgb6RUz5Kpgj3LtmxrrbJ/L
	 RbXNhrVswf7aGShcuyXWBq1koxlG2+isqAnvT6yZkXxg5TAxzutrWw2NbbhLa3oOU0
	 abJW9ZzPfg3WA/PRyxFIF5lq6otUhzANXFoOB7lOPUBi4+ZYuuPXL+orCLWujdEj7h
	 HMHB9NimJFW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97150C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424459358.5954.2859436793253397625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d5fb0a7eb4e204ce5d985a10271e5d48411ff8a459c6987803d05a90c9c82f
Date: Sun, 03 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754244593
