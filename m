Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC011CFA4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705568297; cv=none; b=S33mWgt1usr1hUDY3OZHPeA55n5SOl1g1XkkaujQqkr7sJc9kaojGzkR1/c3pveEJlrkydq0QA8Wr33nqnc0G+2kQOEMSb5LwvIqww+OX54nz/9pQfS4mhUdVNsFBvnehIQUfwosr/+A848C+2zxw6JJ7ifKETlb8FhdS3g+CRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705568297; c=relaxed/simple;
	bh=Mr/NbSiavQu1n1AZW7VT+7KOiFLzzOVo75opVvj8NF0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=dyI/p90wBpNPSHG1mqiRLT1dWFYiA8vojQ9QgadAqAdzyMMAV8cQEUTZPGlXYkePtAKEzBs30C6hTI/DFh3vi6PKH88jeAN9NHnFIpxDvVPblxexKPk9ojg1+b/YpXNnGNoC8wUHUiT74LNv7oV7kWHHHj2x5ME3/grugRG5oRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTX1f8gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTX1f8gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774C8C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705568296;
	bh=Mr/NbSiavQu1n1AZW7VT+7KOiFLzzOVo75opVvj8NF0=;
	h=To:Subject:From:Date:From;
	b=rTX1f8gd62H/UyqXMAneifvnaUOMnS6ffSVKAYORdYLJUl+IGBXEzQjtlEJACS/oB
	 fHsSkhGdZxXoyUdgcqarqhz79WBA6E+o7ZqXSwCAyQYz+hQ2SOCr0ShMFITSBv4Elp
	 t9CPz+OpMRhxC6YRZAto2w3s3JHbHTeQSSVTrbKpkxUsIzWDgg88kDRas8XcCNN6w7
	 JAns+Lzq0HKxPjsL/FEcplsWoq/OJbjHf+CV1u/At/SMfrLn7Ve7HMSfqe7RfWHO2C
	 J6TFVSFsUDg4NeMfi3wTVmPQL4fbgeTs5U4FsdQWROmLO61Gf9nID+CIL4H6kfh4L7
	 3EzfmdVJZj90A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF4CC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170556829637.15481.2876239365290300202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d2b467cfa60bd05b244272f127ecaec3419d87249879d3d706ef9418dc9988
Date: Thu, 18 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705568296
