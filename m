Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D26322A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746069595; cv=none; b=IDFXDa3XUO/q95dQdGei8u/W6G+s5TKsOpUi2TYZmfWnSW0bR18gGVzH9u17GGvl8GVmXrHSjlF5iomlLg1PYOJ0jjJnCNiCa7T6k2RDSLsQv42w5rWtfX6mwggfOK2yb5qshdz1sX6kxD0akCVwWgobhpAj0XH3qLUM63bXzh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746069595; c=relaxed/simple;
	bh=JRz+FoJNPR00O4/H5wtlF0vdc3UjJ3sVG06iXb+Gnv0=;
	h=To:Subject:From:Message-Id:Date; b=dPs8yL29639n04a7wO4q5tfpOJAe6QFu2Zej+nWV0d+8wDorxJGwti4yAKm9nSp66Pl2Uirf52kQa+qp+DjaqY5qjpm4nsj6PAEiE4rxzsaNRv6p2lX4ov0XcTQK/iRERqKOYSVsFuFWqhd5SJwWIPzNeC8wQ4u47SnYQudH/qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKeRgDiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKeRgDiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C9C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746069593;
	bh=JRz+FoJNPR00O4/H5wtlF0vdc3UjJ3sVG06iXb+Gnv0=;
	h=To:Subject:From:Date:From;
	b=cKeRgDiOHe7bGcd6DcOj2pHRRkISHcGaRg7KmZzdVOirzdnMoRQ3xuWp3V1AkG2p9
	 YNY8seO2YBXKLwf92cbL7YIBsSjVtl1Q/QR0BsCjYKY4MVeZig1kKDhepLGUFixIQD
	 xmmdQrlSJFAP0xmwhyYT2bhuPohQWluL9QzMvvqOMAlNpwmUy7Pp/rPEUhVqIGbkuV
	 49sDmzm+JFRryaIJ5xn87fAcEpFJoWcxL9Vw9ep0mpEPXSUtrAFNDC7zZV6pPVyVQS
	 8N4Vv/MAA8bNUbC0LDOc9B3oL5sHYo/bsITCaY4SWLseD1LPqbprk78qISOdqHC6jP
	 FAGCYqICzeOxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96303C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606959358.21878.3928960609050445765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4da8e4a11b9f57f9121bca6c04138c43a630c806ed46928a78481e0c2a630e2
Date: Thu, 01 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746069593
