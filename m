Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C73E36D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717286723; cv=none; b=aKhF2lDUFkeZBS3qC7nguDltgZpaxbUtnAAH3/X1VtR2JI0YgF9vJu2rR0jZR4asLpy3yF2EduwS+Ls5E2Et0zQmGwbhQ29GiVZJOR7PNs242yZ9qxODEv01UUvfMFxIGYxomzNVa0yAoNxbkCHQPeqARf1JdACeWjfSY7uU1cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717286723; c=relaxed/simple;
	bh=bZr/EG+WPF3jlvBY3D+El0NmS180ll3GPRbf5sLG19U=;
	h=To:Subject:From:Message-Id:Date; b=qvPIvrUmHKqWj7eoLVnRtv8GN/vAHUuP1U6bAc9BG6oYDp88xDsZpcKY3/wdQUFjM38Tt8e/6AO4kEBxAlfsfZ5/NaLKZ1tu4eEOLWGWp3thN/ok+fywuDSOwofR3DbgrIKkgAuEH5gXuqehBUeYeSG1/C70cWIh/nS6sU+wYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg1VPMSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg1VPMSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8515C116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717286722;
	bh=bZr/EG+WPF3jlvBY3D+El0NmS180ll3GPRbf5sLG19U=;
	h=To:Subject:From:Date:From;
	b=Hg1VPMSo9MCtX/enWzzo2ajMtgVZ3mNNf5fUe2rMCa4eY0MPTLBl+SXmvAtGtzyh7
	 vqFZJfaQpTNe/I6n6tGmw+S3ykS2vWmAb/HbyVVMTQwDhp39twI/+YBHl65Iwn4WSL
	 Dk7SM4W9NaAOSBUYa8ffV14e6u2eIs1YuFyaDvpOrnCtVpbRKo19qPnA3NsQSeJ8jr
	 5oXrA9Fr9iD+1JT88RsP5Vmq74FplnQixaGry2DKu6+ZlSf2094uire7Nknk1L20wX
	 L8WW3qU7/fTfKgll2DggdjfgmbOvAxG45RXCm2EjY34D1JqZn9HBTQ1F/D71sRDtwx
	 o38wfrQziQ5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECE0C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728672282.5896.16418938254645951536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7984299270d2df063a17480fc9dde2a5bc91fb53b95cb8b8b882d50aba74686d
Date: Sun, 02 Jun 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717286722
