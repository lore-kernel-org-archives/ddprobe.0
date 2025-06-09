Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC722F77A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749512994; cv=none; b=gjNiBW6BK0CyPIsJV1sPagxFb0I2YeRO0d6eXE7Hv6F2dajccaSB8200PU406fe6w3TX51xuUyQdSsqdV7eDHhy5ZiXr8Z2YjewMAZeopVQBOY8L+e+M50FTagsyeG3YlGo68Gx91jB+yLW7409l5oVLoWv1nG+PloxDkM4ymXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749512994; c=relaxed/simple;
	bh=ZNSFWKlWgk8rzTkr9WnooEtcKcLBiceQn+w+2dEWjLM=;
	h=To:Subject:From:Message-Id:Date; b=H/PPqTJfTLSgovhGT3Zs9aXpzBb64ZBtqW2vRUi9Aq4F9yZEGraSzUenwgHVfsn9vuTcf92mz594xuwLzdAKaIaBrgxIc54t4/1fTb0PSLf31x1HrTVFbPpk1Rh5SyIByuUwftW4/jYIB9e3g04xtuvFHPX6gR1tMmHjYtYJmuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxBUNamx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxBUNamx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0148C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749512993;
	bh=ZNSFWKlWgk8rzTkr9WnooEtcKcLBiceQn+w+2dEWjLM=;
	h=To:Subject:From:Date:From;
	b=VxBUNamxMVPDdRtihF9G6K+zH/WfxsSLBOYzaXPMkr+P0b4me7Ry57JJ/3d2Cd6di
	 vzmQ/AlQWLEnlzZ00GHgJWYX4zuNNQM6re67tMnqDzDVe8R+WGTWBnBTdqkr0kzEXW
	 Z3QL1ucV2MrF+Z/f9dAHcz2J2B1M6WSm7u0Q0Th2IrXiLWK+Yg0jxB8n/faBHUVs6i
	 ZaNJPuHUuZFFhN/HKXm95B8kG7CM0GvZk8dNn1fv7AL2JfGI1CoykRKKtwz3RDiCKz
	 LCYh/bSRGrUnGK9twFyFdY1mz8Sy8ESEL7PeeSkYfPDz/WS3dOAEOcixkg25lPfUzY
	 qxllqHg55dC4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C0C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951299357.9750.18134679720948007677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf165258f0b750494d3815aedb08125a809af187b6c66219e1146d74f6c7f5b5
Date: Mon, 09 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749512993
