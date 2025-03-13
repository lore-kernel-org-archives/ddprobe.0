Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531B22AD22
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741901934; cv=none; b=cphw0hn2IMwbnvRNn93Why69udT9CVSH75KdqApAKb80vH77fmn5Nqs3O9ta+K01VnK7MPz2lYrSI6Hk0CqSmXqBvqXGY7DoOSZYkQAxXOMkzNaYz+d4j1Y7UQK8oq1e5qbJiXVpvajYctRi+6NCNKU9v0EQjlPPkAMa7nsqAzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741901934; c=relaxed/simple;
	bh=5UB4w0D+AcAoyrFY7YwVXbMaLqSPo6wbt3yg8De/pfU=;
	h=To:Subject:From:Message-Id:Date; b=qEHQEWfh+3NBQwBr3AE1CupkQz4Ma4o7wJLTBKJYc5qDHLOZqPmKgFU6RMMb8x3um/dyGXLcKYAodlE4Wh+fcdKceYFQFdbXFUKDcS/OJQSsmJocoikmI8Ek7bzXrzvtP2Uf+g6IYL/GmVp6D/PTqwBaYMM2nBNWuD1JdDAMfrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzTPfQ2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzTPfQ2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F6BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741901933;
	bh=5UB4w0D+AcAoyrFY7YwVXbMaLqSPo6wbt3yg8De/pfU=;
	h=To:Subject:From:Date:From;
	b=DzTPfQ2V2KngQV8+X/M2R1nWZUqPC1gZnd5bbCSPXSaCoDYR4T9fDr4kvO4lfdPlT
	 VdVGhFxeMRk9C3/SQpL/eeBoBxTVUAffoDiIicd/c073d3AAVQHGHDvTMeZyJnibcv
	 7iSO8BB/lDvEoNwMFR2cnnZVvJnsY03CXQ/HeoZEhp4bkSy5oLa9tJoOvnwFjlYozO
	 U2XPsc6jonlTQMINDzRCMe5L/OMDylggNkNIIH2bUO0tItsbu+OIn4Fdwy7312p25d
	 +0dlfON6BucrXE5N7LwZMHhLdNFfTxi1Fs4yV9LnrdelhAMCrRI5TcWcpzayWBmIwr
	 NMWa1+xN4CEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A2FC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190193365.19569.9577775093405465306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82cb2ff384bef839b4d17eb768b87225f6f81ce4cb16a333544266486ed892e
Date: Thu, 13 Mar 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741901933
