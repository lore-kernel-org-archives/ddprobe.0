Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8002063E8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737781554; cv=none; b=Gvbgeyzqf0udfXU0+961J7wGXvDHNK7KPpYvjcoMtD2emjsugbTUsWl4AXp6fUBW2gPaUTa11haNDDMmwpNxJtkVDPuGR//UVcN0YV2bNAIRhU6KcDVsBwFDo5RTQoWMIM6qlRtUYOTy2ZF/DG8+Eu7q4VH0XLvHglOlvJZuyhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737781554; c=relaxed/simple;
	bh=JqsEm9fQWl88GJQnMveCIctlbiO3R+EPVacISXlGcY0=;
	h=To:Subject:From:Message-Id:Date; b=VnGJ1DjWAlQ4gSYXa93cKQcjaoI3ZnYb+jXiJEU5WJY5aY3n87Dt3FxUarVdq0rx5soGCFt4acPZ+3uzfplrEpBIlajEBttMPaSef1bHygUDw3QppoqNqPO1Ug/OB1YnCdbY67sIy4lE0VGxQlvOeClDfc1P+RW/nmJkkf1/aTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsQKoSSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsQKoSSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CA5C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737781553;
	bh=JqsEm9fQWl88GJQnMveCIctlbiO3R+EPVacISXlGcY0=;
	h=To:Subject:From:Date:From;
	b=KsQKoSSHtFpLLzOxPlM6jTjH5OvR/05ivstGopNShye1nxBqdj1KJ2B9VIlkEzU4U
	 wYkM2qkM2DmQK0GFdspf+wiDYfMQj+XS4wjnZJgm7eJxo0t0XGyUZbpGyx4rC+mhP8
	 NsyYdLoGK4y6AVylghtIf0Yyjsq4fLk6DC4rrVcMSqvgmSdOMoD/EYxCFPQTUwoDES
	 iu5s1saFqHXxicMvxaP49XWNLGueyg90ShVLNUOfHS6OPug1IVds7p8a9DoXrXh9EB
	 +vzzO84qFsYotCXKCSOIsCXcFbP8CgZXMGbLxGNkpug4ccleeHiatTWTv1lBRGyiv6
	 yA/nhC56ZpUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0B0C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778155360.2971.5558645260707992742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113686591e97c3b44eded78b4ae3c4be441a5f40327352e9929d4710affb1673
Date: Sat, 25 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737781553
