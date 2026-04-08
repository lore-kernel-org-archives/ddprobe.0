Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C62E62A9
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775688334; cv=none; b=mRZ4SeIcrALfgDHyzpEPKdfoZEppd6+wzoQk58iT0SoWpqLbX7CxyOYZ0Sd0yGuFiZ4TNHdTVBk5feUnQBFvIz1VzNWAmCEv0jajkiH3IOfQ0EI0uOxN1fVC/KmcWgAFB2UY4h30xr+2Lw5kOKz7Rs/oxpl0V03yMWNdoOOFRmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775688334; c=relaxed/simple;
	bh=WAchTwrXW4eDEJ/lIiV5H1L1OTxXUPzIkZIQXx4/+VU=;
	h=To:Subject:From:Message-Id:Date; b=e1oSRBxmfrzg8JOLObcdMvYDvkkNZvbaLBTkrkTbfwv7SFx63zkE5s3xKOB9tODcoNYRnRzQiqVDLMf4Dgqf2Q85WkCiP247Ov8Lwgr4CGMgfK6QYCJdntKDic9C6RtlSosUwqokv6VADSLBff3NWeBBWV5yb8FUBlh3/hafd5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUWAL9Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUWAL9Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6902C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775688333;
	bh=WAchTwrXW4eDEJ/lIiV5H1L1OTxXUPzIkZIQXx4/+VU=;
	h=To:Subject:From:Date:From;
	b=GUWAL9RdR1iXqZuHO9BT06in/JwpQBLtGgcB1h1RArhf0TfPXkDOA9eptJCbL/Pwz
	 Zt4tngW4IYtdLSuRzVFyZHjTroWtNsr3T7pWmgqSokHNqCbtINtQQ4mNJ7uBjSPCTM
	 rh5DYBvWyv0CnNQuz3XORh+mklTi1tBv2FRZ2t9juMykPakU5CCteHqS3wNgpMhPKz
	 dhPdrkLP9zGyTfF4zSWtvdqM5b6W+RHkNfKQEIRceS3eTfEJnj4hXHjZkxVFAGca/v
	 nA0CI6bJ/76z/MeGRhrAUaWyva+/d6/VeCdNtE2M2jGqolYnP867z4z0+cmGJ1GtQq
	 pY6JYJBnkhjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29F210FC456
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568833370.2463.61337631760987716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b8d8ea2de63af3794edc1808a4e900dfe3dfd297e5eddf688705ab42d5517f
Date: Wed, 08 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775688333
