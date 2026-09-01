Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9B45D1BF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788250234; cv=none; b=cSKoDcQlAqteKPSI33Bxq/0OwdjRDO3BbM408x2DTDuaBUXK76wnYT1e0RvnXilXuoKm/fGGhhHNa1bs7hCVu4SLOCV3Bv5h360ur68loxDmsD5FB3p3JLgTyuzUmCk7pupCaBTuuwAmkTmk0Vhqs8DTl0cq257SRt8OBfLjNhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788250234; c=relaxed/simple;
	bh=t9e16dpEf535HJF55GESm7sFlBO/cTmjPh01UT1+0nk=;
	h=To:Subject:From:Message-Id:Date; b=cebysKTgAv3dX6ont2GCv49yOhho82mSegmmCKZrDH3UdQIuBWp9/wq5c3Ga3LG0cs8w3TzPCcZ97tiF+A6Ejs481Oj9NwDbimz4kPF/MDyIPRHxEJHaq4f6Cvc2eR/fdYuzoK0l3xqpZJNylJNuvlzoaxE8kFRH5lTcqfXb99U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU8iJAH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU8iJAH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE558C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788250233;
	bh=t9e16dpEf535HJF55GESm7sFlBO/cTmjPh01UT1+0nk=;
	h=To:Subject:From:Date:From;
	b=pU8iJAH9Mz8XTGb0OcUJdSZbEkjVoMBPZv3eIaou6QDgujhvKBkVFemkYaC9TNUHW
	 nRYjrlnHSjOJI83eeWBO8i05hDkrrR0ATxNGB64API441U0GLeJVlMDJzmz19cqNV3
	 ycJYAcGnIPTH44xO5tvcRA3fcndG+NroavsDBJ64ogq7hq9RqGR5yiM5LWw8vkbiTl
	 tKvbQgwuYlMqc3fRZwv+jjFVNiiSLRWIt1yqiibf88ATJ6QzOyCh+RE3oQDHD40rgS
	 mZnqYqjjYL+7SpHhXmLncSovTry6FeEhVf9qICwN6kvcPqVTDlN5a1Ssig1U2w7m58
	 6KaRsL+btRXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2DDC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825023369.22880.9238117558676367403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d918b2071a3bc56103139fe0b73bf696d528964207c195fbc4b9a12ccbfc7e
Date: Tue, 01 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788250233
