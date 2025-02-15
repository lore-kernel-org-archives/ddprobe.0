Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA4313DDAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739650734; cv=none; b=MKA68rmTqJzmwamUG1rJr+Z6op3iv5RRcIbDy+8ovxxKcz4H8Wep34lwNkc1KBWW1fHw0FuadwJFAyGPkqfayNzZbYhrLxmPcm1qGA5310NPMaTBUsjNat7WoX48aiD+68dKGxtFB4Xj7eNDGTol+C1TPBwiATJJs68VhN3DoCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739650734; c=relaxed/simple;
	bh=ZonZr47fbaCCM/PiO5I7vOmHHFcQtQ/+Az/yIvrRt+k=;
	h=To:Subject:From:Message-Id:Date; b=oFL4JDvEGPFN4FDbWoRCgCns7JOtA0LIQXIlDKSmXR1j6CCFs2+kOOVsoJMnt3M79HNHO9XfVumCp3mtyLueFVaqxILd6XGZNe+aRGdWYo3/CbagYdBZC334nXgOcg3bFYc8N4s7QzUTyvaHWpZr4/gsVPR1+F0blZVT3sb9urc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQHhB/7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQHhB/7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B002EC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739650733;
	bh=ZonZr47fbaCCM/PiO5I7vOmHHFcQtQ/+Az/yIvrRt+k=;
	h=To:Subject:From:Date:From;
	b=EQHhB/7TEj5hsbjwqUn3reNqXH0T5yc4OD+IDIK+qSVyMxwpp0n1BWfC3Cefqt2jM
	 m8a2FVitVS23MFeIOBQospYIIzbeieCPs8o9qXzTZB4MVLatqJzWtnJPtMPG/arVDz
	 0ZRrHol+K16SS+MG/4hai8qbnmFyTB/ecHYN4rQFTn+fV5KtcAxhHjS4Dv1U3sIKk6
	 oGqbXTkEVV+2BKqO2uK3bOV0d8yeoOI1JBLuCgidB+uDqDYjfvqhwgtW7fbucdqLq4
	 Dgr6b4ca8h4esWheEKJWaNg0ZcCBVvWod3kMkveHXzsB/YKvRPhIAtaSQ/llS5NxFC
	 oQ9bj3UpDDKBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95878C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965073360.8234.12157832388698124554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74af997af447b9eb913df25d9bb1e20262c879af3a30768be78f32f27ce2d04
Date: Sat, 15 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739650733
