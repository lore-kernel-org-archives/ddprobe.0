Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0436A63AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706151497; cv=none; b=u7sKrrhblHLGEsCC6pKCG6APaBjLvdnHvt1xD0md6xEI9OW8QZhbKihhZ2Lk6sxJVmDuVI7pQTX0Q6VoiJxHerxVvQAYdJ7ym9GvSxFiTtBeu/OBdaYkPEFE8TC9pimFfrhijczM4Po7CoMOGKU1CdyoOL9vXcvGTGo//G/XnIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706151497; c=relaxed/simple;
	bh=9C/03gnU0DFJKIsRppJ4hm/5amKNBGCoYvZpfgLh8K4=;
	h=To:Subject:From:Message-Id:Date; b=Im+ApdHRj+RsgbstPWrJgE3x3tN5023tKOc28QyoKHu+53k43v7D89W4nMXJWIVMrjcMDU4HSAetzADsfh48AgxRZuW/RVmhCgOAV6GALXS1Vy9r1FdnSjKd73pz9BMN8f0M/NY77xCnjpYUEVXlcPFqJ0O3AFXNwxd+V1/uFYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpWTIo3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpWTIo3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77367C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706151496;
	bh=9C/03gnU0DFJKIsRppJ4hm/5amKNBGCoYvZpfgLh8K4=;
	h=To:Subject:From:Date:From;
	b=hpWTIo3+iwo+FdCNivQUyCMBVY0HNDEA5/SQ9rjI2iW1z6FTvrkMtd3v5EOIWCTkn
	 LZaY+OMNrnB6MGgTAUlN3hSyfcIvh8ImGUxH0pZfHMyqnn218d6YqHTq7O1m0zbbpX
	 3WcgwTD6u2601mhOAh9/tWVPUd+Mz29iFxlyvvlfFlww3Br42SMUtyODTRtbIP11Cf
	 LD6h7ihgx0OuTbleTIH1+VcZx76AkXPznmek5DOhm6vk10a0tDcghwG++hllSQgte6
	 WnnZzCnQMTlTelFpBTaKqL2nupOY12Pm8Nq8G0Bmeb+W78hGj66hAWJGE6mJTP+wtX
	 ZZzwq/5uqsL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B462C46CD2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615149636.5962.2693913758128437188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a7c15e7664136cee8a88639c908b3bedffec4ff0472918268a47d4bf534c3a
Date: Thu, 25 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706151496
