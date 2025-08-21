Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF611E990E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755753594; cv=none; b=Us1i0tX0a05y0yyqncTKeZCoqFCwXfCSSWlRbmRLA+rPKcda533ZTyH55PRnHEltdjFo25l8O8UA0luEIdjXDNS6EEZsouLWn/wiBuKdmSphpLc6uuFQy3ocyeBCldmxQMfrtJO+sTjZeF442KmsZhVhfGqVsnwmAXCUStR2Pgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755753594; c=relaxed/simple;
	bh=7I9Yf/5bp/7Lk997e+N6O/CSUPAgGbeOQr/t1hUFnWc=;
	h=To:Subject:From:Message-Id:Date; b=jUtFCnWG/jGku3F7qSaDC1NGcApzQP1If45nRO7kZUaE5NFOgFK61Z4sb5lo0xfO2CuH7D84z/9gkHLsgBYVnVO25JEdJoDLyDNTLDcn7vM3yi1OPII5rrTnB2bDwczuVVHY6lZh3DOwyDPBYom+gMW3YxC9ym/5AUAfRjpJtKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4usuKyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4usuKyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755753593;
	bh=7I9Yf/5bp/7Lk997e+N6O/CSUPAgGbeOQr/t1hUFnWc=;
	h=To:Subject:From:Date:From;
	b=S4usuKyAjWer3j8UKskDinkm2AtoS1+wJLruj4I2OC9yrGqX+OjUPJqhwZYEB5S/5
	 /rCmUJqiL6xNeRq4vbNqfaVUqRe3TRwGGd+uSyeOayCzxW6DBSXOMOTrXorLyfVL28
	 TsndKYx9QNmw+KJxyHuHIZgOWWbXnD9Jey9R+Z8g3catij2zwkxT6FV9zpIyjY8LR0
	 YxSxubVtRGc3twY+73PdopA0e2CWMk0BubuAnytdLG8NzreybQ7wlqx2hGWjXNatZi
	 fnU4tZjjXMn0yoJOHXH1+tSpKj9nHQZbI3sno91yUO2B60BpWvzcVDjt11KtySfVTs
	 ll32OQOgyVzhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132ECA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575359358.13983.11999431507376590762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d1cfe99fb1acb462f64626563e4caf0570ae35747592432acf63159b717907
Date: Thu, 21 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755753593
