Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0A38D69B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777405054; cv=none; b=dQEDihkrpppFqUmF6XYwpvPkF2lQxZYIjlJDOf1VeOygUwJtkMshKeNNCBjJnxeH9B3iBR0lSrynM1HazlzZyziU8k9KD5J0XkzvCeVIc7JwDQ4D18Np6e/0aWTTjdf4gP+Ojj/CbOXYZr1haGyGj2XvP7XwMpXPk1/2Eks5RO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777405054; c=relaxed/simple;
	bh=pPJDLXHdteYDRxrRPBK9UDR39ANAGoIFHsILIeUlG4U=;
	h=To:Subject:From:Message-Id:Date; b=KPvzCST7jtLM2i65qgJg/R3rdsgNbgcm4WR4p9pfaucwqs2FgF41eDAMkiCx40H0YaDndd7gM9ETYvaHGY8zXBjxCsrpZBjKyTb5Xz89azDWGaDpLQ75YsRJWT9uEC+hx3plkoCkpdCM62ZNVktqH7+tlzJTC/Wc98FcZ37rhaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4RxOVti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4RxOVti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0C0C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777405053;
	bh=pPJDLXHdteYDRxrRPBK9UDR39ANAGoIFHsILIeUlG4U=;
	h=To:Subject:From:Date:From;
	b=F4RxOVtiAxv8S3azG6/PJs20YGa2Mxc2tNseMVYLPGmVIK4eESHa5AsifL/z/Pgck
	 zCGhiF8pTqwFIC8JaMCWXV/BxlkB98sRxyrpaW382jZ+JWTLX5hKYCyXmvKumRST71
	 dCktQjKTQCUn5mKXmkQWAXUM2J9yeFhOil5ZQ0fVSwvhG/TnB/bp/w+635fbVpIxuZ
	 0HTah3aS/o8ySeRFCf6PGVHLA312MothoENSWEz/lDLrsrBrgRiB4lX15uPeJ0Mew2
	 zMRVvQzvXVkHg5W8V22nbYldzRWmJaIamaX3ekfHvcRHndl8Ud3ZPuf9hHlsP2DIS6
	 rV5WXnrCuf8vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B0FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740505368.5299.8306730852717851917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2e654bcd27db15bd205d3314977807ee4c18d513f1e2a4f20ff1b841ab1344
Date: Tue, 28 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777405053
