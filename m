Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5440337CD53
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786996834; cv=none; b=tndDPJ5hYzE8p1EIgX/cgMfBzDS9wL5yxBO+l2BwmQUQC4cF04uLJ65kbn2wcU3r4XKNR6oDXMvIb/eJfn3Ih0PjR6cKVhBrOW+78wQhOpnDfAs5CEUkwlkkGDg+QhSiiF9aXstQyylR164dNpy8Myd57OvBSrI8dfYx+Av/6Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786996834; c=relaxed/simple;
	bh=UheaycjTHWGtElgcb/L9a0Qq09CRv4HeIpHKtV2DaJo=;
	h=To:Subject:From:Message-Id:Date; b=OyjHrTMdhMtb4bTBg0RQzJGXt58D5qtvU9Hhdtj4UoeJbMWrZokenqBNaJW5viRhqHZOjo+4FmXUqsScZoyl8cI+uqJW8MtlRektCC7m969bSrdwseceyRa+K7/g4TJFkBe2nhl4Mcbbji5HG2CRdDHdfT3JtwW5bThjfji4INo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUtpOURl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUtpOURl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE770C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786996833;
	bh=UheaycjTHWGtElgcb/L9a0Qq09CRv4HeIpHKtV2DaJo=;
	h=To:Subject:From:Date:From;
	b=jUtpOURlAXzYkLNka4+6eYD9xmiGUd4Df0Q5oXG08YR9P9sErll96oZBUy3ble07D
	 XrU16vMcC1RDMSsTHOcKpPNi72aIPj2K3tMg4mn7Qqzs/tuo20TfOsFgyVPsHJvGuA
	 SedtbqPOM/y24A9py7mBjz1lwJneKwjXkA/BlakwMU3/qgrxI0LVAaQpaVAiQeQwbt
	 FfbYm9jaL3hB6Xp6fuYSRzA3k71WdKfsFSKG2SL33hkWo/BWLnLFiRPVfLwohdG7bf
	 JDOvc9YVhrtoqaUg1ri9gQAcpb4oTdDmWKT/W6mQaBIDFUhqs8dUIIsm939XnYj/Sw
	 DYNATQE3fmnRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4ABC5DF7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699683368.22682.16058324647287883916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77dea2251efcaa9c8a593789585f78b77392b59ac979e77de587a7b6881c2b8
Date: Mon, 17 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786996833
