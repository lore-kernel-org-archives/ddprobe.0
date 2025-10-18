Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C7354AC2
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760779194; cv=none; b=OP4cLrpE85qS8YXkcKfpgRiMm52tTgTymZL5zaBO4NozMJBlLHZReXkAnM4yDKdi3SYIo7FFPLe8bL4Dz8FvUlT9Ki25r0m/dLedUDvH7aL2y9V3wKOC/wyTi+pq8naCFIiZx9FoF8Kpn0WXxR3sAe85bUWzsTbJXsT90+BTIaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760779194; c=relaxed/simple;
	bh=tw4IT88D9OD5yNlJLZAwiVMziVaHzDJ7EG1ER2iDLVY=;
	h=To:Subject:From:Message-Id:Date; b=Fa8Ge65Vy0H5Jz5RVkUeau5++tNg8gDpxdEyjPk31nNcg/4n9AZIuz+sGcM/Ge7+BqbQmsAFtri+1zwgkfK0cgYLyJVOrEDYK/wgjbX4JKcr30YJBrwocDM+mmShYYmqqKK1AERMXPqKls7nYU+h84MpJtZE/uDRKKVh+521GFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJjPOT0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJjPOT0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52E4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760779193;
	bh=tw4IT88D9OD5yNlJLZAwiVMziVaHzDJ7EG1ER2iDLVY=;
	h=To:Subject:From:Date:From;
	b=YJjPOT0JTVVoL2sd1FAocSCR4O0dGP6Kjh7cNdECiiaPA7VG/typNKrFPeWhhivp8
	 bzalOKqIFAFD/b5t29E99PfRtz5Ex9hrLNoLbIkhrpOsGrySwVwFH64DPitq0WhrXo
	 hypK6t/hTieFGb92xOvZacQuM1FXGZX9KGTlUdJq/pB/BhXczvhMFAIT+XlXBXSg0O
	 oShBoFekDJ4GMegXGjDuyf3sdRd42DXjw5Y5VTyK3fvieIZm8fRdt+ukTpUh5UMEPP
	 Npzxp/fQAwAmt1gLButyZnopTtA+YFYKgCiD8GJDOgD7OwOboHZJNIbd88c8jGSmDm
	 eAdofMJUAxdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01D5CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077919360.16031.17612556899490859912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b53c586283ff0cbbeaadb7b126c2a271cfc5bb1f462fbf0e8d31c45d8b82dc9
Date: Sat, 18 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760779193
