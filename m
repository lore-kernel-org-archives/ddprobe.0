Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B129345A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752233994; cv=none; b=u7gfYi2/FXDox/JOHNjFRHrEvfPdzljj4DvW6snhmYOYnfje8PKBIfVxxyubBGGlPfzjEqh/cKqpgF7F+s/a+hG2sP4dKSsTEB7UbNGAP4HExdLAlWEOAlNctVquwOI9bakDCwnKH9C+gGddwNpfevoPdWzdntNHNGm1tske9GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752233994; c=relaxed/simple;
	bh=W9N74FDvcMkyv8/bqE2GCI6UzpiDNd0FSxSpJjXijKk=;
	h=To:Subject:From:Message-Id:Date; b=FeKnj7WhzNCzMswQzjFTI0QwnJVuJnqlsKNhG4PxXKmK3k/NY2V7T/SgrEz1JkJeI6QQhu6IiVtJ+74eZCSSWxGulmoYDxzgzayJE4riXRsIumkzYsut+MSmQAMvZ0n8AZmVaHHJvCxz3uEBIsR3GGrxV3Ba/JkAakOF7wCmK60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRzaqyBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRzaqyBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752233993;
	bh=W9N74FDvcMkyv8/bqE2GCI6UzpiDNd0FSxSpJjXijKk=;
	h=To:Subject:From:Date:From;
	b=YRzaqyBuwiz8A41h+MSUEl8m9AuvJ2i/uSAK5gKA90Aoq2Bw1Nq0b7XvzfOQ2NTqY
	 65a1N64EamBmACeZRIlMwRLmdFS95+43kKk8W+NjHInUWZqPgQz93uiyrd6lPUPTfe
	 isUtkfO/vIdvQ3IhTK06//OYChN3yVRtzO3H0FagDV77B62o4cYi+Ioc7xKRP0b75G
	 MV96mOdyylXGz3ycFXty7qbkYWQijEVTMbFpeKUDThayePThR2nNBJIcwoqboqy5Dz
	 Tv4xWAoreXgq4jqdBg6KloagCvIzk7K+ykrggN7+HPKODMqwb0CrI+KIUimzDwjXSU
	 kwxgxgZGhi9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF8C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223399357.14230.12831784048673951955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bc3485ae6a6d8e3c4ddad9d8d217cc08a6ea268999ecadb051d0927cb062b2
Date: Fri, 11 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752233993
