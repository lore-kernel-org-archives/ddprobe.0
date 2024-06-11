Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7B6176ABC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718099303; cv=none; b=D5dxW1oTnlGZjIQ1d0Y650XPcBgL2uXWcgQgkUch140PHvGuW8h9gqORY64G9uakOOvmAih9wknFJgRZ2mJOL8/9CxxweboiLfHXzLIfE8F2wV9pPP8RKLkHdMlJG1M3KrihlSSKY8446+rr9zjDL+CsWk4aQtl5Gn8dcikrxls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718099303; c=relaxed/simple;
	bh=+yYhm8eRMCcjqdQhOFaR9WxOvNuH+NmF3qAiNBI2oeQ=;
	h=To:Subject:From:Message-Id:Date; b=nRGHAGyGO856Vt2+eN8OLaf+0S9P2XRkJP9q/D4rAMVHX2ENB8VS5+dpS+2j3CEVHUxDoWS3PfihN3bA7vORn35OlNdd/hWgYW5Hekb1F/oKvpYCn3daTToeA+Ayq86t5AIHJV4GRK9HPBHBPpgcx2Go8yDpfsRqxsHZTTeL+ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6qeKspl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6qeKspl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D200AC4AF48
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718099302;
	bh=+yYhm8eRMCcjqdQhOFaR9WxOvNuH+NmF3qAiNBI2oeQ=;
	h=To:Subject:From:Date:From;
	b=C6qeKspl/p+Z2urWrAjkc0Di5BdFuhEfkol8EwuoL0ygy5v8fZxloMwe9Sg/YT1Er
	 rVnQBvp2+x7NweeCvPYQyLh8/Vcf3A2muS9dLauiP/hlDazukJ+ZF8W+OQ55TqR7Pe
	 xspZRwvgEXxxK/5GXMR5zXovBV54lC+ErppIrptqPrl1/wMJCmAOyHavziUwhqTWwy
	 meU/dDmFgi7owS0rTaXWO8Li9xlFztBlIcF5gTYkWJzhvOOXhAicY8EADM/IJiLoGQ
	 Vs7S7h8w6bbE28I004S5oSWmpk/6XoD4VqU5J81ndet3WEyRmmZQeLsc9c55D49MWe
	 tORxHk/mDlYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB678C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809930275.11528.55323651766843071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1172e261724d42fa35f636f1b9f7f1eb9f8ba2ef25fd430407ce76f30ca364
Date: Tue, 11 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718099302
