Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DD714F70
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736217354; cv=none; b=GRgIMEhOr1nyO9zVswPW6hqSyqNwcIY+8+T8Z9Ajmkv5gDIJtzYv3ee81ANhrKRgMmGN0MINRULI0Q/Vy59baBWXLL425b48Zfx4EkeCFUbuIVxd1VXGwEFFCONCDWfdjuWUgxdScIHZLepGFDXFEARHRlyw+bKqqR4l2HSRZS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736217354; c=relaxed/simple;
	bh=tom8BWzdTtkeDwmiFg3C+EQmDfkUbASAQuTM3ib6xKs=;
	h=To:Subject:From:Message-Id:Date; b=r23q8P2ykHlEhqMIApttk4Oav0iHRF5M3Cv8a5Tio5jbdWk8dsYKvx9aTXvCVSitgl0/KnXAyBWhLxbtE8CTeAX+b6d43b/TV0g1e/LQMW1Pp2UBDZJ6Y8J6MR58rFq5OOdN+x/25sbynEg9kWU5ySqLTl3WerIpWLDfgCEweQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHnf5sD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHnf5sD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DCC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736217353;
	bh=tom8BWzdTtkeDwmiFg3C+EQmDfkUbASAQuTM3ib6xKs=;
	h=To:Subject:From:Date:From;
	b=cHnf5sD8cp3S+xVPsIeFoI8l1vnEerFdtFi+YqzXCKYvHXT6kUAzAGJBTs83AtfCf
	 Hj3+VyBZmDk8HqX6Kp5E4q0GEjPooD54ezwTexvVerD8d23A4zTn8fEoVPB/3+0VMC
	 +VuvD548QayH+qO5hxQLdYYIu91WJXmagOK9WtA918LBdTdL7KSOOWwE6ybo+QLjNq
	 mOZdTfyVfMKWFse4mCbc2G2PBQryKMKsQgo31PxdfnB6KjC5PkB6W2wLxIKRfjy5aj
	 hNrb9mn1AQLfusWiEViJDTRaYvZRWfa42A6VuniR2bRNl7h3yALb1tg2KUIqMrYhXA
	 p/VDl4JZfxtSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DBE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621735359.13014.5392341757167201982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c535448e0a400588a44fe6e3511f7d53878d315674897ce4285760fe41183360
Date: Tue, 07 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736217353
