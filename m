Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF75DF5C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713631823; cv=none; b=R6CeHNptN+A7TA9nqsYR6CvaNjNALPK1NFFiY3H6Wk8Y9sbHP74Ttz6SMZgFTpJVX2ggUPw2YsH8XmJRleNXVKuYXmCgqT+Z8F2aGGcSGl+DAIiFiCQQSxZbNXMjfh7B2FXpY4hFqqQVOUj8K8Rb2sb+yigt555d5EsfVwDTxbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713631823; c=relaxed/simple;
	bh=9zYhVR5vBLv76soL3yu9be77V0Rju7GMF1ReLoK0gKc=;
	h=To:Subject:From:Message-Id:Date; b=Z80Lxpb65CXHr/56FxsdNyb4NewCQoOWqATYjxLxbsCEOjhxbWW4IwS5kGDQfd2ilULPxVWzq51lCSFAJhg6WHR/TdjrtqsPpwuqTpiKDcjmyZVGKSUe3qFmjzMbGzCdXld/7oCv/Vd0GNGfO0zYCe5vuJYl+l4Y8iYI0Das4TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Arz0FHf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Arz0FHf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09D9C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713631822;
	bh=9zYhVR5vBLv76soL3yu9be77V0Rju7GMF1ReLoK0gKc=;
	h=To:Subject:From:Date:From;
	b=Arz0FHf/QnAkw7hVHNKwEAyxXvb34hQ5XJSIOR4Z8+U5n4stGMUUuJRluPz8wPAlu
	 5EwF9cfAbLvHzX+ANTyCDaRrcILgVAGrJeShj0XclmfsknVTDjj5/1t6N22k4faQ4q
	 Z+cPnNltAd6YpBgGCOoM7xeZ5/i4i65wGsXMN5UlIA05WrnmEgW/uUIYd0CLPVCaiy
	 JGxBZiLd4id66L/QF4rpW8kb6AOu2UPNeNxV9NSWLg/UeAxRS2z/4VykfqYD4I+7DW
	 Pu1Jq/UuSl/ZblbsBy0sEs01EVG+XUeBwHtgPL1kSzvv4Q+d71jkBa8szq2yGjbl9A
	 eCgHSpZEhjagQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE75DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363182275.26724.17964361743719249715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667b9a2fd18bd7dbd389bed4131f5dc1ea8d9221473b66cf2427d0050807e3e1
Date: Sat, 20 Apr 2024 16:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713631822
