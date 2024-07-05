Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE7E1B963
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720202723; cv=none; b=HRfKqXPOScABbYNqjgQxJ+8mOt1VeKNRoOuQvULm+di5iOiOG61B8m08GJi2vR97JMqeKkjeOUchc+uNZmXX6qtZ3MKQdBR0wjCsu0qDe54KYPuGCkdZrupXdhMfk85j/Litqc3E1sXxhd8+5P2BIub/D2z0Tyx2lyzBvNF6nIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720202723; c=relaxed/simple;
	bh=GG6psMA2U72lttAtiO2AwiTSW7MCY5z2tDCB3Vy3y1g=;
	h=To:Subject:From:Message-Id:Date; b=YEc9EKJXneCvEcRfvTvCss3j2Vu+TOEKVbmXRiCcXWM9P9dRMPlSrxqbPN7XI9nTvfkCnurpnovt9Euq50lyGVcPNlGzRJCT52ILBYgnuXqAODrbfYqUJw0RO/jeHERRJ9rHvD5aJnC4IPeg/tATKducjz7PkOZXSyM9HoMPmGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCJFkvba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCJFkvba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67CCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720202722;
	bh=GG6psMA2U72lttAtiO2AwiTSW7MCY5z2tDCB3Vy3y1g=;
	h=To:Subject:From:Date:From;
	b=jCJFkvbay0/FmSr17O+rTtHyMI59LH1yuUC4XBVpssYFRV0cxD3PHWYjMOD8FRn1B
	 PjQs5LdNU6/w5k03GMTA0i1RrvIQNDP0VagTOZYmWsiqUHnEFgd16wXULct7pZjvs3
	 9flbhpxlLG3v0g5ZFMRCXORF/qxW+lk3Ra22qyD0Jg8fuT1IUp2ELbnzaVl5riX0pv
	 FwGDZVyOPXZqJ+in2HbPDU1e/RtGw7o9nXOwCpY2nBktcqEkK5vKdvVv7Gw8GXONgk
	 8+AyuzyB4gbSlYZz4qMzL3BQwgVCah+d2N3+F/ASAdgrPVs2rb1zLVbzmCSH4jU1mt
	 9XmzHY0VZP+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2337C38150
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020272278.19387.12012930631242228294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f97940a58b497bc421e1da392b779e1775a095c7bb1d225a607b0c27c014124
Date: Fri, 05 Jul 2024 18:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720202722
