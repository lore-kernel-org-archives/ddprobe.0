Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4A2F4317
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749778796; cv=none; b=HcnWK11PV63FGkyZMdrVjAzmDJpvyl8KRnW36+mHfgcgzDrSAzrRfbVun2AnXOguI6DfBMLEWcM23j7mwGaNMCyjMX2B5CFaPzq6ZYNBfuQLAOkAEY7eiDoJaF7AZY44Et57tNVX8M/fXKCsPnKU2kTIrWR98/sVFb501psAPT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749778796; c=relaxed/simple;
	bh=+S/oX4Xuw5GkUlaAde/crPFTWSLCT4YPZkNjdnQISg8=;
	h=To:Subject:From:Message-Id:Date; b=CGgZ+l6ll/T+Bl2v2oiEVfvZWcPnsPhEq9AfFM1QLPzr7DAI/wkqWI5AAPa5NYatVvmKjOeyLUMDdMws7T+MsRgEBZ950KZB/sSAn53XP9DaKJNx2Npq+rXK0W4RAvvDEe8A47U8ilMhz46ksJPYq6HvMb/UoYi75b72WAUj1PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ajzh4yDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ajzh4yDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C016CC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749778793;
	bh=+S/oX4Xuw5GkUlaAde/crPFTWSLCT4YPZkNjdnQISg8=;
	h=To:Subject:From:Date:From;
	b=Ajzh4yDwpjZT4++x68PhjW7vlwb6TgHngybtlLdJ6jMpOHxATTwysS2hZ06MfAetV
	 nrT5lsIwIdDsDHuVYmspVxR6IpGk9tVPNGLtHVD1VF8RoVxKvxi0YzF/lbowXqw4aR
	 mijR++6hh41moDjVEIr0n1wSsDzwVaJ8sTzout17NRn6o6PctEOJFgFnmdsVoaadJB
	 UAS4FKdtg/wDJ0mGVnP028pHriwJuT1rjPiRGWza0iypVSlvxmv50B7qVE6AUxRDz7
	 Chhh2MS0a+a37otlqvGlekqfWr/Fm0PVgFYXyLKUUrzKH0pRPKdamKV5NCdg8hU8wS
	 HDxH+aSaoggCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8441C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977879363.21692.14669863202854642099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4a1de1a73e7de1d4f43474f3173f174ae7cd12d706f3cd1801a3502cc94aa0
Date: Fri, 13 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749778793
