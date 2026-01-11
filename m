Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE4500966
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768112634; cv=none; b=G95mN1fn78Qo9GmZpXbiJBtFTj8QCRZRtVjZx7YyTibL40EOGFsGq01WnF0lF4hKGAYqCCMr/JTKDopIxfZCVJ9CwtUqMRAcoME1uLXMlV/LgMBKWNA9XB7GZ+5kx5qPWnfZNG05CGD/v3dtoAtav8yEjLQUMYyGkTyh7jF7w44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768112634; c=relaxed/simple;
	bh=vhvpHcyZDCUhWub5qTysaz4w6h9dOOIyE+9SrHO4w7o=;
	h=To:Subject:From:Message-Id:Date; b=TdxQj1cr05DkPFG06eeRKQcaDKq05ibZiJOMGDxZhJGcX0w5d/qFiiCwjsIqiwGDPWZXMpt25cQ5+sTmCna6SN4OAyeVmAqCEd/l/4uMbU0RyE5V79CDi9COcTnr4wQRSP8DqPSaZmd4RJzvwwI/oHkzzEYFVQmKCWVQ65MXTNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLBh5/OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLBh5/OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768112633;
	bh=vhvpHcyZDCUhWub5qTysaz4w6h9dOOIyE+9SrHO4w7o=;
	h=To:Subject:From:Date:From;
	b=rLBh5/OA7D8nrhjbKpXBZVbLG2Nn0vcfaFIcw8IJP1CGcf3OXPXefqXarUsPy2c2E
	 6bVKw9AgU0IUzn64ctbIEyBXceBuVZa+BL2T6PZMQp77ig04tgcx85TrnrokJWaDeX
	 Wjt3KPxzNJAmsH69YFSMyZA5Pm9Z9THZ7b0vpYttYCJBUP/uouvvOL87GF8eXqOJsG
	 GZEBC+61RrFVQf9+H1D2nMUPhwyg1tCmDSPr6Hz2GTX72+glSwC+QPLHDljBJa3KYw
	 J41koSGStixgC9Ghhz+1l2JQuxKuuMw+HQIKklPxBlpZHsylYONofT0WBq4ijWGD7b
	 r/EiABlWln7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94339D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811263357.4647.1729610232921016383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608072702d6f2e05762307913d4c4bbf8a2877b63d1f4a8a9dc9f1590ca6ede9
Date: Sun, 11 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768112633
