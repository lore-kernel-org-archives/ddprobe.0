Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371BB395AE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786675834; cv=none; b=FADIPUDLG8YO9MxUDWU6haO5H48Lz9Mk//TQH3qGYBL1wXanx9oQxB0E2Yl/FfXU0/R/JRd96yH30y+NWmPROlKZCAzM1a4493IHPh3VIlPGRF0ft7c5r0jkltTOLZXrCmGHFUbscTzdvRa8CVmOWYA1PGKCfkr7fJI1McUeh4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786675834; c=relaxed/simple;
	bh=e7pF47ctSfWCCD7PT7ldp9j1RqVnsgNAO5MNJYEjBm0=;
	h=To:Subject:From:Message-Id:Date; b=rb1UAi0uEItInCiUl52mVoMFLA55sFQHxVneO3fKfKekwU+awdvAVPeTC7XCJYDJnJUYUvqZ6uZnPANtDAz1a9p8vJl01TgxkFGc3ZZaYIuivRtALpZqXQ16vW6AAR347GX34nCJAnVoecRoHRub054qLX2UfliCARZcbFq7ik4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVAmD6b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVAmD6b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2425C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786675833;
	bh=e7pF47ctSfWCCD7PT7ldp9j1RqVnsgNAO5MNJYEjBm0=;
	h=To:Subject:From:Date:From;
	b=SVAmD6b8bvts7qtQ8i5pztxer2HV/IjoYxkOxvnSh/+UfS53I24hiW9MO+71ALIN8
	 XxRyEwDLQ5mxZVW3v7aJQ/3N1qbNFFb2ZMjesJk7XXC4rI/wiWEFRxbwnsexg3Wh4F
	 k1wbo1vn92UZQLfRe2uYFici/E4dbDSoCm9PH6u+3upW4IheT/1G+fenkA651ni4AS
	 CChdluNQ+Yd9hxzbmpObYLkjWSu9BxigZ2k5bqNTjDcIY4Eynyp0DYN31PdwRCT+KA
	 jrx/p7K08cXG1N9eojce65mlxAqQX0A62yh0MHAhL5NcZ4uMYjMtEtWstNPiyk8gJ0
	 pH6W2OeeUKDvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF16FC5DF66
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667583368.15890.12382485547021809804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315f3d648ad12b20d938d6717b636a376448a9fea66cbeb9a14a2ec2bfda05f1
Date: Fri, 14 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786675833
