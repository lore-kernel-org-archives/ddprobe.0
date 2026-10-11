Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D3E3A5E8F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791721234; cv=none; b=kYYyWQncRviKTi0VS5/OKlLmAu5R7x8B89QwodDRRydFNE2c+r3W4r7AjH/KO94Cbpp8ANXYOI2ubYJfWpVwmjnL0I2Q6sLy1I8nvsDoV50OVZB1OsRz8qJdguc3TsKePEzKktwmJ98kk5610E5jGRooHIkf12iuo3oYfiYCbZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791721234; c=relaxed/simple;
	bh=ef3JHFZZXiNDWqNFok1lBlIGAv3UCL+zFAWqDr4Vl9k=;
	h=To:Subject:From:Message-Id:Date; b=qNV2Nv/Zi+iLm+NYNHmuDj6sYeIvrCsWoJJ4j3Fi97cteRZEs4s7oeOzT3d2J2TYHkkZS87oUcs/qRIohYRd/onnxuIIbAZpajZ3PJKDZOUsCC7v6/URLyjrsDhgaxfa/0M1nY3OenlM+Vj6G+Ks91s9Zm3imit2EVeoDO1dYaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsdRuGul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsdRuGul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18C0C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791721233;
	bh=ef3JHFZZXiNDWqNFok1lBlIGAv3UCL+zFAWqDr4Vl9k=;
	h=To:Subject:From:Date:From;
	b=EsdRuGuljhHX2HpMyLa6DmGqggpmlrZ9kGyLwGoz19H3+Ku4H1ceHeXX68hcw9qvt
	 Zb+M7GsN3a65yR2BsSG91vjdfcVtlP9UFh1Y11hwkKcdt9gwWKSmG4bdaWoqfdgraU
	 1VWjWY3svjFkKbIzjV3WL2KZIvAqKf3cgFRa1IV86elabF0+H+szfaO4e6FUT5Hkg4
	 fyfn+/ek07b5ihNQSf8l/mygg1I6mr4e/Jv636t8HFU74oCZMo23x/sDqcckhN7N6r
	 O7Qd7HI4YMQC1B5dbECP9irFD3Xe67nK4tOWQo5Wlbc1JTMuJdDySlWIFiklqSSzJY
	 G9WGEfdZ0m4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF25ACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172123370.4140.2960471540050502348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc4d70da6410c839735b9be73194461d4587e30b01838bfeec6e616a7d220a1
Date: Sun, 11 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791721233
