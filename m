Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF4B384CD6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789726834; cv=none; b=k7eFsRBRTbXkemPlbupZxlNsgNf1sZ6qJNIZdTmSa1knlaq4cVhgznv1f0hN5i6zRwZOe679vz9LNMNfHCE2foDvAsT2Wg1WFlyYPqt9266+eYNdMUaGaXDeljEB5m5Uz5ljCnUwVpFIoZdJA/LyP3F8gqmdRBVBKGADT4emKxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789726834; c=relaxed/simple;
	bh=GOTTwfTQ5QeYi+QIQNAr1TCT5JEbs+/RyQuEhz9/en0=;
	h=To:Subject:From:Message-Id:Date; b=Znjpx1SeDiSrKqAxNTtddGcJYYr8vpxpRFzjPV2TM+/4VzIuVjf1TPKwkwrGRmgRQUO4JGzjmbFL/QF/NLXOUsfis6FBqBer5eALfHNqszZysKMKCYdN95EuVF56DeAJQrAet5pc91kDZYgy7PlKNVYtlw66I4X2PHr8b4Jsrrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uy6s/efE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uy6s/efE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE599C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789726833;
	bh=GOTTwfTQ5QeYi+QIQNAr1TCT5JEbs+/RyQuEhz9/en0=;
	h=To:Subject:From:Date:From;
	b=uy6s/efELaNB7HBDV9YXM2aKIPygxz7jjL3eHFyde4o3FDaeDOWWhFTLtbKp+7bus
	 QQGc72P+J7OyemRkcQBuRfvaDp0yy6MPDjwwxMEaLeFviPXEPKHHZbFudimDsAw5f3
	 pP7rZVKZWBoCvDLl6MsWUbJhzItO13DnSKvzKRIQ5UTXY7FQ4Rtwhh1dYi7lLPKBxD
	 MJHqcH4yf23yVlKY91iym5ThwSbHlFcT2bNZ2OREKNoUqwq53E4fS4fzxD315KU6s+
	 /GA0nma2S8XNx6/sijiPyxtnpqvHtzfQAKRb/G0rHVbapelss8bhAcQW4BYAx2d2WE
	 LvDK4GV1qyILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA89C982DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972683369.24291.13399231590942363171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044cdb8a67b697d283cc75e22cf59eb0cb3db60306e91f694ce2c8afc6a01ee4
Date: Fri, 18 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789726833
