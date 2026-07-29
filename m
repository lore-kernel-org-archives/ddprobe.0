Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5138245C700
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785341434; cv=none; b=mF+Gpc/Uv6MXolgTOtTA4m5cfNZfZlXn+KOpGsJWWTrBoPrks1Mq7lgiv1W+YhjnNDA61o64o1ToyeUMp342TZtRqviL1N+ADJSeWJjv7DsXfcczT5icc9rh8MFM8+xjewPdz6keo8A5o7R86Qpn2JDcewOxkyrtLp17tuLTXwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785341434; c=relaxed/simple;
	bh=CwtVy1ugGodmlLSc6CcYIUmqMpy+3hxLWQMZQzUOHUI=;
	h=To:Subject:From:Message-Id:Date; b=Ze0gUHRTIYfoJk5nTW8afX2LY9ADqRAtL329iMeFdMDrb9Wb2axQTbHRjqpgGYbUdNYXizaRidUxbOeuDoah++b+dKKb2IwSsix9muXxEI3vpaZg9Fr4Uvh0MCmUCj3q1TKDXmCpwvWbVYw0eyyYy+O8pihl6ZeP6yY+lYZyeGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRRdykXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRRdykXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA376C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785341433;
	bh=CwtVy1ugGodmlLSc6CcYIUmqMpy+3hxLWQMZQzUOHUI=;
	h=To:Subject:From:Date:From;
	b=tRRdykXc/Qd8GXhSjOmpNgCdLN/w9Mi577lC8D/4cbNHjxsqjSBHcFJTRfBS7REwK
	 rHnnGNvodGwkHhT4KRxiFWO/AIUUZChZ8Pk8nGOPouSGwWqZoWOBJM2I5TRNOfPznr
	 cuUaujuPPi0keaCGyMu9AC9tn1v5QZIGByYZQx3GUdWT7bTTL0ORTSeOGhvAglfYbB
	 LTJNQZPdzAAAOnxQS9rV5kyLUxHRRTs+qt2ir6toPQ3vqfvj0sAV4dZ37XLFJmvgqh
	 Cx+heGTwF5V2awxfkZNTJrYUmJhHrx5kIt7DjfZAIXvlX8te5shdXWs44v1Jq3cLlC
	 9QeNg5V69GLng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86EAC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534143368.31266.11572059993489121140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3344aac96cb9041e3abf37d9109f5640615bd6eeb7e8fad74a857c2c474290
Date: Wed, 29 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785341433
