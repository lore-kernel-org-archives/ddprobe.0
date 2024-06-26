Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2C618EFCF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719417803; cv=none; b=TfzvKLIgKhRvwjgTJFtRU2sKSgMGxkYqSRLo0VfzB9vk/3bDST2JUyYpTO40hm7vzjXBkb6rphL+lNE551FDyvLdrKN/KkBO5rgJK8U61xOFxPouz9fcJ/l5vtkrm0D8Dl6V2PTfvi6nFnYsXKPtI4FIJRjXFm+/e3FdBy2lcVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719417803; c=relaxed/simple;
	bh=cCNlK4T00TAHc6f+Vk8l3B2siuZaEeFTANAi4edwwQM=;
	h=To:Subject:From:Message-Id:Date; b=h+nbpRG4ejzVvk4cmRPcfscDQrUnxEKIWPf3YEqdv2X/tcznnOaUA41w2uj6GjD8lOBdJDj4KxTq4HQgf4qdIRuawSVNwaSwxQ2Z2UyKVuzmSyUluolWP41qAW7cvpnMLro9iEIGOl+GmBd/bl9GiRfcoVN8qNhavcgRlLzoJeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPfIlY5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPfIlY5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD359C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719417802;
	bh=cCNlK4T00TAHc6f+Vk8l3B2siuZaEeFTANAi4edwwQM=;
	h=To:Subject:From:Date:From;
	b=mPfIlY5viTAaciOb+BOcUyYOv9op5YEPYaFKNJnS3UuUvF6XE+FFAXbOfKVlLNgte
	 JielKRv3/gZ2N9aHEHiBG4o3Kj/a5tqPEel1ijafdKSidcqnPBd7h7VUOmcNUqlLXN
	 +Bb0hS8sP6Umy/jWWYK02iCuER/1Bax+Iaqt7vLcFbfH5UhHzsHtH0trA//Dts9gHh
	 1ETmvjqXCvmpzmaahLBYW2SJ0w3FZmji58iSVslEqFJgHs+SftbAO39S6SdqCTfDex
	 yFsc0EKOgaYXYL5bUi9zyoDaz+nLHsrk+CWkRlAFXXw+PM9+VxoBk4MDoQFoF3VAvz
	 +lPLPDLDA1wtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC82FC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941780282.25233.14987241550505646854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc6f71995486ec118097a3b79597574c3f86c0eee8f5022ed37f65fa68eb3af
Date: Wed, 26 Jun 2024 16:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719417802
