Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0203321A2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773805493; cv=none; b=lOare99mcDMf/H5nWUOaPwTSErSvuOd8gnBBJqdMhxpZr+1p7paQMyos0xbCxX/NwcUTz0z3CK6qWwgqA9MFu5tFcawlLG4r0K94Ee/2H1jzQbNOguxUykbuhx4X0arucvtRRy91+BUUbndAogVYKIMWiykSbyQ31KZs1/zjVzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773805493; c=relaxed/simple;
	bh=kY1GMguJ1UjCLoGnmAWArxAWPoaxPJHVliOeIXZJlgM=;
	h=To:Subject:From:Message-Id:Date; b=QmlVMr1P/sv3CfAFpgvhVPb65H67+7pWTv/LphnnepC5l60s9giEhpLf6Fza8+9o1S+bly7gubps7ImKOJtk/PSnvA/ULL76K4kf+mPqto0Rkh/GKzWNrnLPLAKdWi6XP/6S6V2c0y94S/i0bfXV8h4UkQIWE+Sfhe7HJFRBE2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSiOfKjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSiOfKjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0871C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773805493;
	bh=kY1GMguJ1UjCLoGnmAWArxAWPoaxPJHVliOeIXZJlgM=;
	h=To:Subject:From:Date:From;
	b=nSiOfKjU3r4BS9FRPEjAotehGvyXNi20ClysNRVsOFDF9X14/HykQGF4q/i7otiZ0
	 hqnPmIbst2mgMKZbBcSykfLS1Jim9imZUa1/HFJljoeYguYJej1qR46bEFN2xIFB4j
	 W4kNxDMpwyOAbAGWSUXBN9Z8SaG1NcJe+Pb79cjYf8o9HEESdSupC+FMhE658PB6P1
	 Bd4un5FsM5E8MK7ITZoILgt980Kqb1rrSa5vv0ere4rHtHJzzTCMTBaVFjTFVt77T0
	 x4feqMmOXSUWJj9UqYXPJtOh390Db+JRBWPTq0O4ebWXYlIIIQwmzKFAucst3ChJR9
	 bmjlh93PcaLtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ADFCD0A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380549357.15707.12629363029784366613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a2d7d901b506f9feab48c69f30a5a0b0bf0b4d3594ae1a76152731cf53a436
Date: Wed, 18 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773805493
