Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3825E2309AA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775733934; cv=none; b=i4wiJikwZlbUcbbCLMo9dJlefI/8ICUBSeww0Fca1FOV8T4rsEtq13D+MvAAewX/tXWNhAwcD0n3j7k/xuF3Q0nv6SZjpEqIJ9L1oQQQGr/EKig/pVDICe2kQqjwsGEx1FoB1nQdUzt6X/kmzfnngQkt7fubvrWTpj361wWAe/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775733934; c=relaxed/simple;
	bh=lSq5dExf+1pE5qDFYAKy0ILLeKsVoRrh22gY3oOYR+k=;
	h=To:Subject:From:Message-Id:Date; b=CCmuZ6hJrkKo1WC6OFP2EVuLD4NGWdjPkD+JPlk26ZSfT+spNxYcdf+DJJCYvuFRCg0xKyHjRgHbq+h1JXUYu9G+SiPMfuPRE1hPzW1X+rJApwpA9WbXx4qepk0MYDdBRnwDPG56wT6DO9JR4CHNxE5085rE8mzGuoXh2+dXCaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEGjJdGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEGjJdGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD853C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775733933;
	bh=lSq5dExf+1pE5qDFYAKy0ILLeKsVoRrh22gY3oOYR+k=;
	h=To:Subject:From:Date:From;
	b=DEGjJdGwAOhVHRdfVXBceTj9adz8fUhh2nP007E97+8GlYTMUixJDTajudyL0f4Xd
	 d5BkPUFYgaVYGRqHFCRxps2gRlgvNJWKbfpW4ISlZdmqk2sA8MpZRCI5AA/DeMHmPU
	 wsRfrGWm+MoEgEZVEsDV5ZBqv8AOnq5sB08ph+b5xQOZ7xjsHRmUK7BgaMaPBmKKw4
	 E2vgek64egVhH29o/ybYqO2hUB7zn+8HDqlMWfZqbdKdC2n30m6PH134ORRbRSCzgF
	 +GeCb/86ViWEXcRdj5STWE1b8Z7Rtn3UVc5A1N1YeoD0HodVByxG0HxceU1oO8L51T
	 cH9QtegRn6l8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B067CEA3C55
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573393370.17621.16163937312336130851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70357cf7c3dde1c3ced67b3b53f35d2888e44d18a9dbccc48e69da0e978f203b
Date: Thu, 09 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775733933
