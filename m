Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A65283FC2
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052194; cv=none; b=suL2Pc+ANRnkHqxbTc5K4HFLVF6VeP+FMsYXuGWamiFHnDS4Z4edLKql+iD78Bg+09MXas1lvIfOSsYYjFQppiVM7MgB9yWynfuqvB7zvfAaFRawoPRAkPDwgaCjSFtKwDxpzAot0Rwm/7KXFBEpVKrYTij4SfKeYGOSwVABHgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052194; c=relaxed/simple;
	bh=w+RsqziembxUzw1YV+BwvIA4+V/I6dY934l/SWNMS4M=;
	h=To:Subject:From:Message-Id:Date; b=kRbWJBArKQ+XUT0nz3tPdiOuSoUe/ZVpvSkR7pGlGCdjeOsAO10mn2xQJ+iVLgUyOoWoas3hWSuXGOK6LshZajXbpXypJ1Xpdj/KWgit9fbrsFfBm4xldnehYce9lLiEz9pacKnkS2Tg6VHtbbB4PBuNH5py9ELsOCHgFVuUSl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKzp0gBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKzp0gBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2735C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752052193;
	bh=w+RsqziembxUzw1YV+BwvIA4+V/I6dY934l/SWNMS4M=;
	h=To:Subject:From:Date:From;
	b=dKzp0gBRyTGYJa6oNg/CHknN7V4EpWRRVtkpsQUFYXLPbCfTI8zuT2qXtwuL0VIPQ
	 BQMEA2m/kbL8W7Xc9Qjw5n6GrKve0SDImhmWVqExv+mGJK6Fxa0jIMK0HDeldc8GSg
	 ZywBz9L9WSkm4qkS6izE3PtldhCIDiytSCnu1sdyrYemIijivwwDkyxFDdJabfXYXn
	 1OOEwfh1MTa98LrD7Vlg4HimdwbWKrS0OJCKBwD4zHyZQseMKk0TGBFdYjj8iC60z8
	 1jq1xR/F3KXicAoV8vDnfc+Lo8smBaAo9r01mCp9sMf3Y9eqsKHeSZP5t9SSIt2oCr
	 wY1vBFHvK7TvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920EBC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205219357.25809.5673498004897352441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4465fe0fadcffe9ead90125601c5d0c2435f9f7dbe5a40589e2a755c18faee82
Date: Wed, 09 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752052193
