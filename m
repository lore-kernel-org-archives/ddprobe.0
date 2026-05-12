Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC743D567E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778564434; cv=none; b=MzwCpYMpnI5myUliDwipr3sr3PUxcfmI6YMJk+yKEpAbZZUjJ28PQYDdyhUyMjuPoaWeGRozWuQz5uWqi+28C96tnQtwZF3mgY+Va1jGHIMW1lV0SHiwLeTLW52EoeL/aP/Pw3GfF0IaSWaDUjwuBFqb4bZBe09vbNtsd0bUJrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778564434; c=relaxed/simple;
	bh=MsgQuaPiRt/f2YN/lAAHDa/coeQ5n8Av8Eu5UK6FbaA=;
	h=To:Subject:From:Message-Id:Date; b=JVl1JIHPvVh8M31orX+mVBs19qNvVVkSHSDbjM2hYoshqVVcO0I8VAzy3PFr+rDPRH8SVPJHnTOMtdmngfyZgDOPYc27hp4jWlbeTi9fUk8UNtgxMcucADiM3QFxOZn+3hpWxeqkBNCRmmAYNMgZhVdux0r27vTeRBOuPey0iSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnN8y/P+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnN8y/P+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778564433;
	bh=MsgQuaPiRt/f2YN/lAAHDa/coeQ5n8Av8Eu5UK6FbaA=;
	h=To:Subject:From:Date:From;
	b=XnN8y/P+HnW4DHw3PO7WgdhfLvWHg8xY9LSkObDBqJY9V1xQBcG4ehg+VP0dBtGCn
	 wRlXmpTeaOeTclCZTc36x9ADDvxe6m4Yh9Sg2LNeUVfbrpGEXWjSMUIk2bfw9AMLlN
	 +w4TRdn6BnS4rVvWj3QT+7eBvBI1SDiXNbdTLyhkOGRCP7IdmuuFEbUO8+M+GlZfgD
	 ng4YHjXRmwM/DlocBU7AQFVrz6asOoBZRSdXU5fd2RML1TvoIZyfkJPF+9s24SLpmA
	 EHE3QPYBMUvV6vr5iQqWoKuwFzoKDtMnvgv8w7FetpYOR08qkRpvLi1LNFu5ZUu4Qt
	 XoSxtYy1US2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF4CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856443369.29893.17924751705107665557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99f8af1326c7c782c86d2cd9b75f075ab9975662db0a3289cb40a3371c6faf7
Date: Tue, 12 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778564433
