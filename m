Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC018DB24
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752319794; cv=none; b=MvOQdujAJqRiR0j6NuJOqu5k9VHFWxrExhOwtp1uwVQzARlPCQfwN18AjdxZC/VGMcuVFkMiN/h6jZFEXNGzZEv+TUw6q+AIBckoegneK+TuJSVp2Rw0bVSgcnnjgSB79ZN4JT5OjSN1ctf2+uqRbMrNE3O05Yf4Rc/ozTj//Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752319794; c=relaxed/simple;
	bh=bsDunvLAYp6EJgP8TQXI4gev9NBDOwSWkwn+FIGnuJE=;
	h=To:Subject:From:Message-Id:Date; b=RhnAEFtjamZ6b4E+8XW9abbe2VWosFFqflh7qlqYZkCehoMXNUQ7/ZfCvYrsNl2rvQWhfCpOcieqFOMKMuxZn/9lH78Tyq4cA+v1UTi4OCAnPMlQiRRvwCTOEkD8SPeEaYrexXuMtcxTx/aNWjvgXcpOlbgouvVCHhqesXDed18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVD5Y8XU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVD5Y8XU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752319793;
	bh=bsDunvLAYp6EJgP8TQXI4gev9NBDOwSWkwn+FIGnuJE=;
	h=To:Subject:From:Date:From;
	b=nVD5Y8XUYrsPoDopolZYizoafriQAbpz9KxzD6FHpvkMoJrqCk0haXqWT392cBdFT
	 OYtbSnS2csxpJLkihdQ/zXmOOctIj8k+Ybyty2qfr6LXoj1YiYKQyrJqJK0QQxfSv4
	 TyAiiOTr3gNEfAxPR3yxhDQbEA4sKgb7HvetFSCAMwXiww0f01HcwevzQfb3jl1PAs
	 FjT4vjZ3j62lJmNXhWaaS8hC6nEBUtSdDDVI1yv9pXP46bgcWbmsaGK2GAfoaJUaM1
	 aQOXYKrwXfK1CF2A55qGLjhY/qgmCPenbY/1p5RNrcRqSpqrifIuh4KQLu7zq3Om/E
	 7vtjsZABYd4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE9C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231979357.1720.15000894900770918722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2079dd490d9b634aa95b4ce7baa6f8735aaccd4daa3218b39d72d6fcaad8a7
Date: Sat, 12 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752319793
