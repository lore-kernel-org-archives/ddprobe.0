Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7CD1D432D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752187794; cv=none; b=GvdyDTk9GBBWjT8wh2CJXd3CpbxWlfnG3Ec+EtnJOwS0yoZkSYZW8STatj9dMIEaZi3314atSHfJAPOFGcsUVRQWPeMqjEzko6c5A2nQ+maQAE9H+98fAF7aIiFlHYX21PBjm4eCoFV09jDYlaQlSbib4SzhlJSXDHH56eZsTw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752187794; c=relaxed/simple;
	bh=2P2nrwe/n4aUroXvbmu5lSLnAzCEPA1YKeuvFaYfMXY=;
	h=To:Subject:From:Message-Id:Date; b=bngjh3bDbWn+phThVKYy60JYOgzgCdgtOxWqgA0xHkmGMQFaV9M3Fk7Gxlcd5e5PvZ7XvTGO3daglz0RW4eh4q+phvHQokzljjeYH/DgVuqqfxbb4Cqg5l/rWQhWsbANKeBMfdhbZY0rlvVZa1HZL/Yi5SdjmFpkHHJEHc5mNN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1pQ8J2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1pQ8J2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2649C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752187793;
	bh=2P2nrwe/n4aUroXvbmu5lSLnAzCEPA1YKeuvFaYfMXY=;
	h=To:Subject:From:Date:From;
	b=c1pQ8J2tLN8f0jfANcH/48w8BvQ8ohPCVAS9P7MJ1mE6obaE4kVBNBfPhI/Z4rf30
	 BRrL/1ECVRx8Jft0HYx8mFHKeyUFY/VHhY+HaFBdNFiHEURBVIGmCRPICiWTZAIoqQ
	 r10mGTZvMeOXaY+D7mOYo7nF8uGP4vzbeU/jXVnLELvGa9Pq0z5gDJDpaaPFRfVhCG
	 GXSSUs4/i5hArCgkm5zBfZaCJrsTg65rsoOlI/kxSKN4kbYfm6tnTMRjvs2iFD8Cf1
	 LmSibIhRENpR0bZTi2FLiwtsJL8+WDdr2vZtTACNu+AWLbtOtzwF6WTcg/mB2pl4f/
	 4jO3+jFe+1aXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218779357.11481.4789029070750624248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641899200b26a97b48e793be56a391609a4247a0a47510e11cbe4d53d8cc425d
Date: Thu, 10 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752187793
