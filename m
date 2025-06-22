Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941D2F2E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750566594; cv=none; b=Mqx3+hU07bfseARecRMXD1Vt7TQZ/uX24oxvs/w0R70IvJ9k0tuCt6lZRTOHgxV9Nxd+9MNaQ3xuynO08q0bhbvpKSRUA81ExZiyAqAJKCltm2dUJTpMtvaoFH0DZs7eVET0RoTPSytvHIpURcpc/I+OfyxyE/mU7eA4jZOl5aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750566594; c=relaxed/simple;
	bh=JH0drajtgzdBzsavw3qasXtzC2ltqsFbyWt3eghl1v4=;
	h=To:Subject:From:Message-Id:Date; b=Wea9p8UbL54g+zOPlycQC0DbJRat0LRE9AabDcnPgqt+4kHNpoV345n2il9e+ltDmNz6nhY6UfzblCgKx8K2AOkTqmG4COIqsBIsLwXzjGoFEb3HyT1bgsQvdA1DUN2hyR2K0bw2xZOj8ZeB/spip04zwH5VyRy90TWKU1DBRI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI5EGU37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI5EGU37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750566593;
	bh=JH0drajtgzdBzsavw3qasXtzC2ltqsFbyWt3eghl1v4=;
	h=To:Subject:From:Date:From;
	b=RI5EGU3751TmeElT3z1Bp/2/F911GJi1DGAlxfyQ9+E7HyVg/03B9gXmexxFRDvMA
	 AX3MYtWJfOjGNJBp/U5zCycDMG8L046DTnqMGSJxOCsFWqWIwOzEm99RxK8UkzcXwG
	 VT2rgfZSzxrEGQe+tNgGZ9TYuZBHt3aMkM/Y7vAyhToIlQugk8jJ/sWp9kaG2fSe7P
	 30plwIf7vNTzBcHhtD72NxxSgOjrjztY9Y7EDKbF/P1nHGe0cxRy/vsk/XDQIkXGQm
	 inwqlT/1lCyss7zI76syf1eKtrZ/cqfkSKq9pTgWTdUDDg1BqnyWbCLNMx8ahB2gbV
	 lx/CrLecqedAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964C8C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056659359.14130.2022269567148030060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f5bf7145145967dc69e2f91b75a468f749b2708dd08c9dea766426d6b92c93
Date: Sun, 22 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750566593
