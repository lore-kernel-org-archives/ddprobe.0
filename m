Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9D2C21C3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762206594; cv=none; b=ddRr5s2whh/aFumaNH/y7y/FaCok0+4yWkCPxc8RQDxboP/zizpM25+53L+TsH+/ZcEM/8QHP7xNfIs6GW61FqFGg5/x10HQ4+8NOEpRh1JVuH4Xqvc7ICmtprZ9lpyoJU2hPfr/lwq5hy5o04F8Xx+G24ZcsHPi+XT1DoanE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762206594; c=relaxed/simple;
	bh=Obpvh3sQ9uO961tvjdWxFir2omN+4ZvF+joyQ0znK24=;
	h=To:Subject:From:Message-Id:Date; b=m+DKMeoUwy+idOFveCFrVfId9NaoRKWz+8e2mCcIv46nxTtZK3a4DrRLS+NSsOL9dind9tnMV4JPDdWn1oBVPXPAnqUuA/AHWEijgR1vkryRRc4K0RcfoeljrVesJi3hKnCLTwpO919B2q9umFMQg/Xm/AsCynBrlbWO6ndA3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnRPfXGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnRPfXGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105AC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762206593;
	bh=Obpvh3sQ9uO961tvjdWxFir2omN+4ZvF+joyQ0znK24=;
	h=To:Subject:From:Date:From;
	b=JnRPfXGHoIM+rv0N7IgV6R+ZR3zaVZXoAlQahvYmc88bak7Lg0mEB0wguMy4dUw1l
	 xTEKqc3lQjUceXfXaRuN6Hee6E5rYzDpxHr2Wq/n2E+j/0s0+A+ImjTYpkxCfvUon9
	 th2hKlto5ziEjpC4V3fhjYItnE4BiN5niIKk4hgQM2f28XMb1aZf2VDZNm5ex5Tujj
	 onALZ9YA//QmV6tVqgV+IxxBzCPw82T4emgKUbG2FqGS6nTUbkiTTBEm5wJwXXtXp0
	 E2a+bl4INPSijLgMHu9cT94Z94gRhPLb335dKEI86mm/Y/OUzi7Wg968oU4Qn613hl
	 aGC3zKaOFZjUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183BCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220659358.21025.9022459030551362264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23930bb55f6e6374a61bcc970113aa1654d4de7ebaa85ee28e19c1485ba79c27
Date: Mon, 03 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762206593
