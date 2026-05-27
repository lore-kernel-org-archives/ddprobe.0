Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F51A23BCF7
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779859354; cv=none; b=lgy+9uQqBC7jAiI+czB169zboyx2YOmW6cfgSD5CDdtBHG7kg0zPgZ6axEm7bhO/7ThEt3JBUV0hH9GNlJXLvbdGWOcCoI419B3bHgNnYKluywUxnbW25LL7wKjorp0ClMoMoqvhZAWThWz3WNbEhj1iyhCsxU3weQCyuXHDoaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779859354; c=relaxed/simple;
	bh=nxABBGlz0Yz9xbVnVF7uFkV14qZcaXNtk5jZDszslec=;
	h=To:Subject:From:Message-Id:Date; b=kg3ews/JXqHo7qxUOUv3v4lXuJ93NR6knMlRblZ9PeZOxXToy0gvc4AR/yCuYVbaKYaVER2p66+mpq68r8bXvRl9y44PrL20a6nJy3XtplbkZWVVJk2fnKfrEtsxyPp5iifi6ILPBB0rcrmin8xinfPzb+pmVFiF7Q27HHoioa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVcTGCE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVcTGCE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0199C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779859353;
	bh=nxABBGlz0Yz9xbVnVF7uFkV14qZcaXNtk5jZDszslec=;
	h=To:Subject:From:Date:From;
	b=iVcTGCE0xVUAp4kumojt56hoSXFh/k30PIOtGfHVV0zLiivM7s2q/QHBS8kSW2Qxr
	 StSm+ygOhqlGL9GWL4AmUvBFzrniSJ8a70Dbp477ntrSXukouO/6kfZRAgVwykj25I
	 CjfjDRRjIdC+1ukIn0jtAR8P7cVH/tH4ef/va7CWCgUPhjmj/4v2wlwUxH9vou4EYk
	 l1jRguOuo17HV6wL0S9hBO2k7ZDg1iHC8Al4R6hJGTr49LTHJphte9fLf72GzsdAvP
	 fbKHDhMjYr5XHobYsipt00Rfn2q5DKRuEJdltrsEImGB4wUxukD0DrQqV6Jq9+xXsK
	 sJZydWGZFM/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A1CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985935368.25080.15932318490727914782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca395fb9013dcd3d8627ed3e769211c25d50b5f24ea24654eb04eed8e8c3dfb
Date: Wed, 27 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779859353
