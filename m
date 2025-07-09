Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF91D2E7F34
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752074993; cv=none; b=YrTw0wKqM3uHDmCXzkG/kRMeRrUKz7UuzzFg23yFyP+9kGfE048g/fMmFrNcGMg+vZd8dcco9/VjR//OZTK98Q8dLw4fVAIkFij5XdqXBxvffQc20/Kg6aTsyWTlChyrr2g+xOAzbWiXJrFYrFrFCCYKAicCFwz9aWfUJ6DQuV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752074993; c=relaxed/simple;
	bh=42p6octGrnG4KLazyp99ojvcNoxCpSJzCXOs5tVADMY=;
	h=To:Subject:From:Message-Id:Date; b=cRSjklIY06JJ9mOU8F34TEb3zM5zmSdismQ18P1iJuhwUkj6gu5GfOk+/T6dgrJq5QF/QLh7A0noH3wF+T5DE8qWNW3Cte/yFBQIJcGwTQibw9Dq3NJyk5tlGYADeYu4MLvVFnjlfdHHahpTTct/MDw6Vir2hnZkV/dE1soMV78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTIhiOmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTIhiOmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752074993;
	bh=42p6octGrnG4KLazyp99ojvcNoxCpSJzCXOs5tVADMY=;
	h=To:Subject:From:Date:From;
	b=cTIhiOmYvvpISYo4xkBWKsFdl1RBKcg6kYQ4tP4VXdwu0UzSi4cFUdDy+RRVep2tL
	 xtNqjKQM61gvsbdF/5Frhf3kx0+0kbQhJmTsXE35MFnbWSKZzON3n56HTVeeqWdI6n
	 c+6l7sp/f8tbEnR6Z6KUdA+RRZwaheBremfFJr/wm0NRs4JrpSErFRG0+ZAFf0ZDwZ
	 jIa/WoJ2Z7ueXbQDXleq8a6tDUCwRyZtYawzm6hJ+CsfXN7Y05AzwASEyYtcsvR6xq
	 UmalFbh9LcmqErm2lpcugCVQtSy5clQD9MZ40fmC51+1c7QcvbfsE8AWSjQlrgSAsj
	 mP7xkVwZyeSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED09C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207499357.21242.12244781541458974055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b31a7ccdcbef48acacae0134b4dbeb7e929be249ed8915ac1217a97293061a
Date: Wed, 09 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752074993
