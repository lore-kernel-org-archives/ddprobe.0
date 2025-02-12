Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DE127183C
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739373535; cv=none; b=W1anSDGu25RKvv5yq8XyrXz+ZdK4y37QuqPVUwrRcQK17iaCHNhy4G2NGGKIfINwoRZAzhr7PsYb35ze0JHokhgSSceZnhVo9pAxJ33r63zLJYSQipURj14SxfOfuj27bGJMh3hMOA8brdSz1iU/urgibE7fWLLcQkzHqFkUB4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739373535; c=relaxed/simple;
	bh=6LeKSBkNMAwncdt2Z/NbyuRc2diP8l3SvHKoZvaMwRg=;
	h=To:Subject:From:Message-Id:Date; b=FNWZ2ZX9HCvC/psRxE6GyLXMEb7CwHz8pxy7+U35cchj4U1pWlPmWbqpPt/WIKTMeCL9zAHbIlU0f2GLygninS/qupfY2j24dAliD4I4RrjyPjZ4jtpeGMA/Kje6nKqWyCFzjScvy/jd9IX0mPxtl2mlkZRz48pnXPKuldlA6l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iukZxpFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iukZxpFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A0C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739373533;
	bh=6LeKSBkNMAwncdt2Z/NbyuRc2diP8l3SvHKoZvaMwRg=;
	h=To:Subject:From:Date:From;
	b=iukZxpFDVhGBk94VVM/knuoyoFZOm1v98jpuvysppFyqvRHyTvX5DMF6o7/5T/CGC
	 iKddgbrJQshL73++EMepW67hYdGsn/el9x6o58pyyeEN+cjtnkYQ0CfoqDwypCsaSY
	 G10gQQCtET+Eef75RXdSUcgpVpiNKuAto55FdH9G4Jjd1v8zgh49IlOBQ8HCLKCved
	 +wWROcUyvkVoLCtE5ekAcnBwfWuYsBAV56y3JapE3Zunms1sTqBucj1dlF4fUB91qY
	 F+ISEwOsMyZ9SIpYw5QNTWjUVf1RFZqEi5qSrrMaeCnXF3BUQyjGaKAy6+fhRSWfmL
	 Jhx4EF8+N0s2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A1C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937353358.21736.13396986727624927227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990ac8f28beb080ace4411a6f8297e43b69af7ef00cd0beed2733430efbb80a1
Date: Wed, 12 Feb 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739373533
