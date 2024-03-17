Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2D31F941
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710712697; cv=none; b=FyWSZMiouJEj0zFFVC3KmW/55osF5LRuvxhtFO+BRRKRrkB8U/gT68KsP/PD89BPbAIia9LhpGt/6qUKRcs/deRBOEEPM1UVi3cdJEXB2E3Wd3NmhvKyR184OBkS659pvL2aOp8pqpi4VLPJDIiazLeSgUFsD3gCdEjYo0SZFNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710712697; c=relaxed/simple;
	bh=1u/w9cLPrx+/yKWouOvG9XX/HxHo5C9ZHn2xaEJifjE=;
	h=To:Subject:From:Message-Id:Date; b=IeUPacRsVLHAUbYgSa5YzNGiVIq5Drr/+ftrJS83XNfCUMqjl3Wj3uMN2Mm5lcJUD40BJZqh4VgkoFay8FR5XecSxWsFxccR2TtLOAOLXz8n2890l6C2wO8LhJ1/GHlSnxL3Gg64nDyBQ5QnIgAY0s9tvK238+OWSrbzTNs/S7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdwznQFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdwznQFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F13C433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710712696;
	bh=1u/w9cLPrx+/yKWouOvG9XX/HxHo5C9ZHn2xaEJifjE=;
	h=To:Subject:From:Date:From;
	b=NdwznQFZOQpe+gw/TQz7VZj1pXZg8ebZ2kfssrJxa1lMHiSEVKje6vL1yiS06LYXN
	 +bA1g2XUILLDpEzYVRFRq+LtutYDALNAiFtoq5ecNYQOgRcnLOTq13LdZ4uxomXAid
	 yqlM71mENYD2zcNeRcM5wN+4BkZZ7dQtocLznNqchjSwd4xO96qg1PEUIID4kTMt1P
	 e3L5MXlipuELTWupS80hVQXMvixHg9zhroyaPC7zxeWPTkDMfc8eoHIuNEsGmSjbfR
	 dpnD+2ark9rxKrFk+mC81TNq2Isu9K54CXn4zg3OvYqVumiNDLfz7mTHJqyH+xiPop
	 xp5xFy9MAZs3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C68C54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171071269637.12527.18259637185006373059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a42bf33a1030aa18356d3818f7a775626da1ff8c61e77620e2a7b540ebff5ae
Date: Sun, 17 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710712696
