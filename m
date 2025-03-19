Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5DDD2FB
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742345396; cv=none; b=LgsWkJfpY9UIzlOmZ0nObVVxRWp5Q+LzJu7zSBD8M8x5u8iTCSSaNDLTbsAOzlqj/6Vy5tdBcIETpzK9ytlINnQIOGze6oQfqHlB0l4VriaQL4tyRvhDZqJWoaC4vTovQXb6IezFoVy0K7fO5h5phc8AtdVo99wBGrwv7G5h3Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742345396; c=relaxed/simple;
	bh=XW+Rico/Bl5cZxD7JIfvaPtDEpMPHKShHkdSMIBFkkk=;
	h=To:Subject:From:Message-Id:Date; b=DrdDyzBQWVV/CibjhFfDU1MxblsWB46i4Jl3NtN/1/Q/28IGsQw9UzNew+QQDCq3n8GdKgkyr3wjl/WiGuADioxUsrHrE0ogKlAbwFUk8SZFlgCaKE8vNEgygyWOw8E+4uuCzTBxZ6lPmYVqbu/9d25hAcDse63/Dp0mG4ILCY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZT/ypH+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZT/ypH+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A6CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742345393;
	bh=XW+Rico/Bl5cZxD7JIfvaPtDEpMPHKShHkdSMIBFkkk=;
	h=To:Subject:From:Date:From;
	b=ZT/ypH+w1xCEc5U3BNYJayOsuJy5kZUrgpVe7O48bwvBCX9bkZ0EVvTi3HoiCa3LN
	 PfPT150hRPdPbJqEGQvw5xm//3xynCKxBuJr5QkPRPq7DZ59sHyFv2YsAA+AUo6TRQ
	 z7ppQpPwyZo0Ea64vkthx+PMhMfrd1VtoC04uihjpJEng0gOkHGqIRsJ4vKTsa04Ah
	 4KkkEfDMkyP8sYzvuoymlaJzK3GNZbSpX01fkoKbbOIAZiX2v7FYfGL36j6QJDodHs
	 4U4dH76KUDxK8M3QmUSg1tKPvQLtnahgVtqpOgBeou3PydlVeUwYvxAu25W3K2KmTk
	 8Lo3yjcu+TKsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA673C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234539366.10829.7440372272943903088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93111f06f5480798d9cf1cb1fdc77d5ffb65ddbeec792b8dd6671f6b75ec8e75
Date: Wed, 19 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742345393
