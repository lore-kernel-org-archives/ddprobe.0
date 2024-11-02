Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3863D189B88
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730548554; cv=none; b=gcKu/ESoh2RhrSGK297v3hFVjsk9CQGRR69KSHkzq/sX9MOBDG26/VTdk14d/oiddjnoiQJWdThP1K1wirJ5GJkzqNTsLAHylRXUCQNd7OZYpgK3KM7ScxFTazAr8M1v3fc2drDiSULLorElAF5osCgzeMx8y03BvpoAPP4SJIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730548554; c=relaxed/simple;
	bh=9qXJCM1JiYUqGEOJGSJ99CRTtGO9IFOq89SoP5KLVFQ=;
	h=To:Subject:From:Message-Id:Date; b=l8/W6mqtu6/kpSZ+S0Rm+ZFCkxg+empdUXkA0yjoGK55Au6kHwH0bNQmGZy5O1nvpqom2GKFZoxYJd40yRaSpC+sIXhGYJFIzRaROkBEU8W+AXExs7YC3kzT3SG2V47wnKkls7JXYcg4C6ZHkL4fSgg8xJoRg/ADWZEB32kM9/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snAK9Wma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snAK9Wma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7FBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730548553;
	bh=9qXJCM1JiYUqGEOJGSJ99CRTtGO9IFOq89SoP5KLVFQ=;
	h=To:Subject:From:Date:From;
	b=snAK9WmaQjq2bbuie59Yi5X9dfz4eF5yVPPgJDa7girBUTmBRQvqEKghsrOFlfTMY
	 ZnIUo7xgVndFstVfrGxXL/Out5cZyc3JjIEYWxxOlJ1pOPQglu8UbMWU5rPL2p/lud
	 bB97yceo3BdrfeWYEUMl2nJ30/fUN5G4ZooBn5VzZ6taHze7aI77azJh+6/0EnhOtB
	 /Oxq0pPbbMRyHc+lajrurhQ9tdc5X1G50EZqpwRD4VycgyfKycyBH5VyYPhDQjdNfy
	 f3EDStL2LH3qfIuFZcoAZC6ANjHXaObSe9eeL/upQoRgeYwY/rfpBUf0xdqDduoae9
	 KzMpNMb9b8r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA65E677FC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054855362.3957.5070052456159366734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ca2e6e5980219ef368f6294bd7441a1a79304bfb0fa45001ac4d8a79694cce
Date: Sat, 02 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730548553
