Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064A21A76DE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767908034; cv=none; b=ZWZTD7mLV7mLe3R8fnZqf6o7dgE/cQd1IdaxmfdVKCibwfoYpMJWrf/91u3kdgJ+IMUWYASWORSusZutXZXeRPP4cVXolwxefUaWylroAc1OAXlLXsbcygyfDHTjRefWKkiVZy6rx2WirRLvZ/n3d//jFbhe41cNkfJALgtwYTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767908034; c=relaxed/simple;
	bh=rdP/RvcPYRrR9INqf2l5AGXi2R4IwgVaclQ7c/Qj3ek=;
	h=To:Subject:From:Message-Id:Date; b=nwFkaHdpR/mO8l/OffJCHyYoT6t6FNoyFJo5vS1amAB6HcUvq8LfxpCO9dvMIU5XOyF0mqJr/sx9MKR+yOgc/mvddc7H1nLJiIr0qDWjgoJ9apkR5jI8gqhtlVelZmo9edV7m2KxQe7YE/bPFVCOMK042ebUDOnVXAaM13BgLdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWpcg0z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWpcg0z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1848C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767908033;
	bh=rdP/RvcPYRrR9INqf2l5AGXi2R4IwgVaclQ7c/Qj3ek=;
	h=To:Subject:From:Date:From;
	b=PWpcg0z2ZMtqKCTj2Blg5ZkzzvHZer+/nnMfUZIZsmZfgqYJK/ShycTXTCMyS0/dg
	 7tGP27ZDe8qI5b4YvmWQ4S2PwAYxkiIyeihWgZWqecmLql3YbBYY3liWuD4FmciEYE
	 Uf/ztid4g8Pr/37VfwQWDMSqkeiaMPpQx+Q1CcSDUAD8gH9avJtbJPgQqR1nbT3g6d
	 FAOoDAD6XNvveRi9hbh2dNH34+i6cWWq5Gpb6DQUX03LPXOxkt3DLwrXpKJ9oGzT3O
	 34dauPiQhW/f0qNMo0ujcAA56zn705/POOghTFuUKawvczFBAZOfVzIJ29Hs8kPzPa
	 IGMksFAFMm2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444BD1D495
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790803357.6200.14990160747047048595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c7e6201cbfb592f6d6a63522ea0976aaf83f9c521a3043112f80ac48b4e693
Date: Thu, 08 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767908033
