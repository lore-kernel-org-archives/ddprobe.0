Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A0C256D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749004794; cv=none; b=E9LUbuy+k4L2pBGM/g48Ksbhm+VKfA0fUvyF6ubN4d4zi87qhuqkk2KoPVz50xuhWuxcZGMnqXucBAH9cyHkokCyy47/7zqZbhLP1mWyBYxDkA50A1hTm0YQyXSFL59J2BuohNJ1B4hwBhZJn94pt7DqUjP+PevTgNUCtw+sM9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749004794; c=relaxed/simple;
	bh=zBQLeqSlKJpnfEII6bw5FBa8AGiBxPBryEYfBHHL7Rw=;
	h=To:Subject:From:Message-Id:Date; b=TrFWzqqdMxbCJb/SYja0PgMQe7Wr+EKF9IYWlSl2mpbYM0gLBYWnQaa33l7CqYZ2CIGV+e7vH7BgBKE/IOXXG06eZyugwrpcFIbVeQSZ7BWIxCYogjQp4R4HPSKisOCGOdIihAJZMKRKRJwiR8EG2F4T4pF8o5KTO1A/phmZNVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxWKmo1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxWKmo1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E793C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749004793;
	bh=zBQLeqSlKJpnfEII6bw5FBa8AGiBxPBryEYfBHHL7Rw=;
	h=To:Subject:From:Date:From;
	b=SxWKmo1n7bhq7rrNQGzuNnGHV83tO2sir9EJ7GXjK9lhARcr8qHTuh5RuRV848MNi
	 Zqu6tRINz/DRa71Vas/7VFY2pfgVvpUBF4PisqpekbDzRTXkusrzvuLkedPx3vgeUu
	 BjrvwkEvoACeaMKj5MUYp5FmlmxvycnRdRF2MTeeBYHEvZe28Ze6t6ubEQzI+youA3
	 d3CAVS9Y6V9H/d6AKv3S/va1kXcB7gqTolJuOQ+jS1qNcsichcOBk6N5v0R/F6xEso
	 Y4hRCOFI27KdLKy8hqmVCppx4PA0ug5pJR/DpxgsM2FSalFfqW35d3G3XrgGwbZiBV
	 gZgEnscppuBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DEC5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900479358.22142.2127970535530217738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b670c49a581a472a471d79e3cfc4b7cb981fb9a3b9cd36f3380ee3381edac18d
Date: Wed, 04 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749004793
