Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5928886126
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714518743; cv=none; b=QapRZ4gS/wXRXm3t9dMxz+kMCGCu1+ftGEChwqoUuTo8U5fqqJOngsHqJkuETiT5AB4Ogju5Su0Gvw07WmTrHnm1bDqzSpRPq5nQQwn7L85ko4y5qrHqsKkJIf5qz81XDJ+G5dBEMTdkKf3Sr1PQRdZM9BBPqjDRrG0gr000MmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714518743; c=relaxed/simple;
	bh=MfWzPkDqj+pA0AufYN/UNOKcb19IJtXwriVyhFNOacI=;
	h=To:Subject:From:Message-Id:Date; b=ZYRjowQuUETQi/Ktikc566B8r8XCaVzL98GXDjhMCHUBkW7mSiVW+7C1CMMCYuLf6174UWaZu3pSS+FZVRRYESPTFvPlES1N7RcBCggTw0B3Y/cXuzh1pZoQlj2BDP3DLPn5TLeWVLgrfKk3UsnkJM6EEuh2qZoA9B95m+QyblQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Goy1zjKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Goy1zjKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80BEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714518742;
	bh=MfWzPkDqj+pA0AufYN/UNOKcb19IJtXwriVyhFNOacI=;
	h=To:Subject:From:Date:From;
	b=Goy1zjKGKP22wbZUwDj314gn0+7AVj0/4ZSFrjVBI8VwbwGQugZo1YQFy9sJJ/Ht7
	 cn8D8OMV4ZePXQPfgZ22fzVtaIYnYojVqNfGiW4twcuLW/GFGE4EYYvdleKE21h9xh
	 DCES0QIXPTu1wxHfY25s9+jcTlIQB64Cfauh1Y83eeinYLPSXfZnhlfAiGGLaDuSdg
	 UoK4eUupEN7yn+TnNkvLlLfesDQt5JxyQrK3htA1pwNzw85xcQmk420/jeN8CIHyxS
	 DwNeoxcdDz+G8KHiGbw0V7kT9wq6uLUqeyO9Qz53XLRdAvkkUQmA5gyft+XG9aBXc7
	 m3siUdSujGG3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EECC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451874277.14102.9161059948918567013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaceece3c5f4b2f81d23732f9dbe2888419c430efc0c6556f05f0dc2abd330de
Date: Tue, 30 Apr 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714518742
