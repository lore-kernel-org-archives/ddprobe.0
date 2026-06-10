Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BBA275870
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781107594; cv=none; b=IWZmTgy8JtFc8Q5koOSPyhUoVQcmE0k6/Tz8zSxuqPwdVBKecrZ5zp3OabtS1NaL8pxRbyHVvEEx2rCostxBs3eEYmQ2quBj4/IIayuIWM5s9+dS1UmUa2eeKLD3X8IA6r33jlFnWThK/SihIIp02tIcg0Rhf8q9cf/7cZefnoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781107594; c=relaxed/simple;
	bh=CSm98m3a62w0J2rbz+4AuyrncdH+QIMQ1fTW/oL5FWQ=;
	h=To:Subject:From:Message-Id:Date; b=kFZ+o1H2hVJMqiG81cDvqAWmsG8smjqLIFZ3/NKBtnFZNZc4C2jQYqXSlxu0INZMCc+GqpdX0+F/BYKC02mh+Q7FtdBy/G/a9zD3aaHE2Wj4aRSQRZHekv7LGCdbI4Md1+iXNdoiRJnWvEYhYXJkpinZImDBLDPJoZwf1v+KFEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS/Wk/cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS/Wk/cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC01BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781107593;
	bh=CSm98m3a62w0J2rbz+4AuyrncdH+QIMQ1fTW/oL5FWQ=;
	h=To:Subject:From:Date:From;
	b=VS/Wk/cpY+v8xgKkrtNqw4keVSlWng+f6fSyfAkQvFfxB+yKkTO5B8Cc3RqRj1yPa
	 uepVrV3FYtEpwiSBXu075DRWjYMJf8w6qYsAa9D4u1t1tu0Z5aBkTU5TPNLfob03HL
	 rywe6ejr3ajp3wf6d9qLVlW11++sNqw2YFCczfDEl8imdnWy/sH+HO8lRQswozbubO
	 wTXs2nrdirzIgYOQLpUIlDs2ku3FzgmJhoS+a/bSimnz+TmX06t1yO/1RGaoHi2JtI
	 n1k5ig4A7jq7MFjoF9p59AzsUGyKPelHNYdG6XJmYxFBvDQ0K6WZtlaC88bk95Slqg
	 o9mgLXOohOh4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC61CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110759370.20910.2172990660295189571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32a9aa0c235981dff87a9ac86471a0db1a12abd6d585fb468d0fb3ea45546b0
Date: Wed, 10 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781107593
