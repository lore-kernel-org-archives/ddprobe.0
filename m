Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF34430B9E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772353494; cv=none; b=PP/TETrkuqEIFtvTGN/iUTSUxcAzF/Jen4S0syQ8c09cRX/s42o4Ylay5Xpa8NikQOfaqWt4eSo4wSxecKvMQ6oVHsIqBljSCYEr7zy9vO4uaXMxNUjrYTaVGvaW56bZEyFOb+ct71fX+49832ma6rZvpnmukIBVdOGQkEHVKyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772353494; c=relaxed/simple;
	bh=GPE/DJH0X4JaTCGytQbv5kHGBaQAE8+CTw7+psdl7vY=;
	h=To:Subject:From:Message-Id:Date; b=ayd3KqL0dqhYJfPTgmXD4Hfbzogkt/OmaPSdvHVj1L51DG0Jt8j7cdm3/8WvHF0+AwgFMDYKbWmTItfSc1tW+hVcxaWFXbn6dvYq1Jz9aQFzIrAOlaXNDh3yXg/16CvvnGhHms1XLSwx7QvBQ+vHAJc/H1uMsUDOudPK722DKI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfddg5YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfddg5YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2384C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772353493;
	bh=GPE/DJH0X4JaTCGytQbv5kHGBaQAE8+CTw7+psdl7vY=;
	h=To:Subject:From:Date:From;
	b=Rfddg5YJkbViFe9svvYIso3ZKzmKaEvi4Dz4r01+qJlGul+bXnJdKma6lasnrqyrY
	 4rDBwIJfvCmWMG9jKuwuE75lm2QYI3NwVagD/KL4nNykWPP00+V7MbQ8WauWF9BW/e
	 O7FYGyZRY5xRcp6khgcPnaT3gGsYbskbetlZTPursH5hCeMc1LNYsE7ISOyAVRinld
	 qYZMOJ+QbLhsMUl70lgM5otEn84R118Yc7rhCeLzGbzUoWIZS5z7EDM/rEWchIMy8u
	 U4NuSoheq2Lk+0hpjrPyefHKeYMHdfXcoUQygKT+zvEOK1zzLmeem+k+9LnLPTBrwD
	 vRrjEEtq8oP4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B757FD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235349358.5296.10305697180825599055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf40c5000bb1cae98af26d23177998f013ec4a8167b61219ffcf93d7e8121f85
Date: Sun, 01 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772353493
