Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412793839A
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712998163; cv=none; b=uPi6xlG4mdel8Aw3Nv9MpMGXpnN/AVm6UWH7ePjTtmSkQLo6shsuoiZchNvrO9A5/w+SC+pu86Occ5lIfqP9mjI7QheCQnC90jg7vfOhpvq8pSeWcuudJMzDUAeP0d2fUmVgUlUiiHuPLTl6kEmMRbX8AWUdjvgYmltC/Ni97Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712998163; c=relaxed/simple;
	bh=UZE2UomtVzauvwA6GnDVRAh+1fvOFQ04OgiYJkp64Y4=;
	h=To:Subject:From:Message-Id:Date; b=rgPRMXmu2/4Z9e+zL0EV5RnPEvnfNdHCuAHQyG8ejqThzRlQEs7bpnnHOw9SGK+s9S/ZKwjHGC2oaYYHk39Wr48qwIH0/CVRLhrh+hy1Yla8Agt1DWuBdVPJjoscHXJnlGPH8QKsGBdsic41J4M/dmOjTjPQ67mUGjmj86okdrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1pU7E7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1pU7E7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE99AC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712998162;
	bh=UZE2UomtVzauvwA6GnDVRAh+1fvOFQ04OgiYJkp64Y4=;
	h=To:Subject:From:Date:From;
	b=t1pU7E7Iaue3NRnF9aDNWuTXKs6SYYYAcJcOUzvF68tZobNI9vuOxQIQR0m/npKZk
	 odguTZD/w+H1JmafdB0IlmvNNqh8EOtxPb/gAk28rUfFsgFkAMDeSnqVz+vK4S65BT
	 fYzpduFSpmw0xb8AF3QiXhKt5xvwRqUOb1GWyaFo39DyVcZWlJrWyrTgdwBEnGJOGZ
	 M0Ws4CRTzUZL9ugiduIbN+2B+wuvvUEM5aLVnu2cIKJc1YNUFiTlbTwo0/EuX0OeuA
	 RjK/U/cjiD7uy3mQ2zMcAoGAZLaz1+2qemCJrcjMr5aLNT8cVSyDs0axos6FcsZupi
	 ZU+LQUKX/e73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2A8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299816276.27038.7192258059464444821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e74f9f504b04e5870a9c4a184715df99da79528946e944a45b29105c6f530c4
Date: Sat, 13 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712998162
