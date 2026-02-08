Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F45340D90
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770581634; cv=none; b=IhjNEef8I57H73JSb/ObAo8RGktawZWFNsgvk4bAy4QiPfCVxAY6SRfS7NH4rwzD4Li/3Kw65Wt8zNHULaiYjoyjtp/bP+jDDu+bXMC5BqOsu/lRel0lZySv0nBkshjjyoqSGAaE9z1X0Eyjw/Q/sqZGRZj0h+U3iWaoi561vBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770581634; c=relaxed/simple;
	bh=NqPZbljgRdcw40HRCXnK21C59PtUbSXH1X1HIRPBe4g=;
	h=To:Subject:From:Message-Id:Date; b=ttTOMa+1qE/Ui08J0riKMA0AdEvctGHVRuJaE5vsdAqjkfjlpqHuP4gnkIvGK85zTiM0GaEoXQdN4qpeeC+bOQCjREdiM/6ovo8pF5VZDoRDWJIr1bQ0kZkLLvLaDa2vrM5ptvevGMDa8NGpg78cEMvXN8AIaAl69II9rYMJbJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmydqwUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmydqwUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770581633;
	bh=NqPZbljgRdcw40HRCXnK21C59PtUbSXH1X1HIRPBe4g=;
	h=To:Subject:From:Date:From;
	b=SmydqwUnUrff9/QqFQftoQyzGWULl1UPK7BGG2GJz5k8+q2EojqcSTOqiqW6bajP8
	 yKMWOBrJGmpCtJU76a1RRXCsSX+gVaWz/xsZiD6BpCvQXTyoRzdh9xU8Mtztj/o+ff
	 JwvV1cBk0rG8a237l+lNRbkcAj4SbAgOdb4ccglAAiSpsBzWB+C2e5tSqfePQESae6
	 W74b7ZaccE+646eNW0xRA4y7+8QfifQsBRXa9JFRbixiLjcd2fE3EyZ3N+O3gfzHin
	 Q5y/2lNSIM/PsGkCKUAx3XqBULhoe8hrqlvMXE4IHZgfmj1ErXzhUFYfN2B4XnkFSB
	 oTdd0mIq+zaMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418EEF06E4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058163358.29136.15119532337069532129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692be689177a4e576759866cae5b6f90d70d8dd2946fa41223fd43d022b68c11
Date: Sun, 08 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770581633
