Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593F041687A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790267434; cv=none; b=Ut3k8TvNmv93jx8HQ0SwuAjHDsfJNaBdM82qJHgwyo5lafz9CDkvHJYlRAJ+GQtz3zpjiyaFCoePA1alL2NmBkk9CvhjRbxpRTsPkrqNaeCD+i6EVILxradnRWG9K2NY+wYiYBLW+yfCeBiKipQ3JqdDstDEg2849/t32IhIoUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790267434; c=relaxed/simple;
	bh=CjaenBAo4YSuFvaHV3c48AqXjZ4FJoTGlW1Ekjd6ZQU=;
	h=To:Subject:From:Message-Id:Date; b=pl7RnLfUWbfTlldHkw4p4yFwoYn2x97onTAQUZh2k1diensYzhXhWivbt4anoBm/nOXcEd3r9S9A/HgOJmfkVtMkSAXdnGKnGcrKsnqRLbAhepZbuXGqFBx1y6rnIctmuDGoamNqM8xFwxMxZ6fwuS0HMFwpbH4GfDGFfwx/tJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDziMXfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDziMXfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1CDC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790267433;
	bh=CjaenBAo4YSuFvaHV3c48AqXjZ4FJoTGlW1Ekjd6ZQU=;
	h=To:Subject:From:Date:From;
	b=ZDziMXfPXA7GxBAlGxqNeVwGS8CAaxfyFCTlhhvkLCSQwAxvef0jlCwRcNkOSqgx6
	 5moKbnOwZzRP7ICQZTz+Nmtx8lu3y2LK5jD78g8//u65JHcSrlS1T0HmgKK1m1EQX/
	 4wq8jxyJIqLOwtJqRWDudUPed2ukHdiq3xC9DrIxFIAisTUEWeQTnJIs7ut2u00Hl5
	 5W4tALSj68CGefMV2pO5Vo/N2NfCrj4+4tHboyv++XGSQJhpe3mjmm9BYXQePcoTQ7
	 7z6MsPHktSZQtMxjqGT4wI4WYEAeSdZbfz6rrprWy9KneuLi00A4LdBlsihmK3kwOz
	 GqRathH/twcuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ADFC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026743373.2080.2561503387997112164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051bca77e05dd9398ec3479e7583da6ce2904ee06b3196d83fa939cad787ef30
Date: Thu, 24 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790267433
