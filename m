Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBFA1A9F87
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767483234; cv=none; b=F4zy6NvMcdYMNuKndGsQ8h6Hpuv5E1Ul8DdJ4srxZ9KIOSaFRqJriX1tQ3O+rm0wrUjLA+jWonaeW1hVK+nk+mOL0329s4VOABj24Tr8KeP56eKlXhAPC2tmfYOKea0Kxtv01mF2gSd6TXoSRaMQQOw7aVE0bF0d0RVVMFeVFI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767483234; c=relaxed/simple;
	bh=Fn3wPkJe6K8HkuMHnZSlsrfMiKVgoF5zGtHaM3zH5Qw=;
	h=To:Subject:From:Message-Id:Date; b=NBvEqkJbIotAEQOuAIu0PnHa78K/rsH39zeXc4knVrA5ACqBkXVVagwAva/k2VP/rm1Fs5TdU8I14Rh7S7vbie4vJylbcEgL4txDN0KaFtZMtqH3R1cSaqIczQ3mVh2Uuy086Od65oaEVAGkkUnexUe+xVH62VP0EImpHFI9McE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfUNQc6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfUNQc6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767483233;
	bh=Fn3wPkJe6K8HkuMHnZSlsrfMiKVgoF5zGtHaM3zH5Qw=;
	h=To:Subject:From:Date:From;
	b=JfUNQc6m4dL+Hn0J7/1wfvZyOqZXTTqRpGV5oddbyuU/cs+5wQdOpxtoDOmIFYPhf
	 oXxjNf/iPjeT2TcnG4g+aX7askRYr1iWfXAh6Jg+0kGtA0I8aLPiLBaNH6kteljzou
	 fx2brIxfg9yEsXa/uvJWsR/BAnz9TZ9PLKZZMgrKrBtJHQ8DPmSzb+zv4AewjY1xOy
	 xMHkLHrcXd/pqV/NbROEqlaowwP1dDp6ArEpkVqwTzeit+eesU/o2AcjbTbexkKv+Y
	 g1Mzt+2IB35B6clnjX6yQLrl4E/vX2IvT5Vbt2Yr/SipuAxU+nQZ2HPggKZg1Rw9GM
	 V6IHDRGO91vqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94244C2A063
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748323357.8507.8445037024156363277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05507722148f651f03eeffb4e73239b72ad589806d9345964d49fd72b2e3794
Date: Sat, 03 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767483233
