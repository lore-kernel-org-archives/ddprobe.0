Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3119D38AC7A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773395694; cv=none; b=rrRjGUNYE+zpBAqAvnLYqGt5gd6blDmGK2awr7pOgmcwJf6mntKCcySxN04QLHro+zhceicKQuHUgOkd6dU+/M59COiHonFl7BhvH3hh2uPKLCL+4tk/Jg81F3LaMuWFctayk6dC02zM8x9azZpN03QuoU8Ij13YMMfkY8X2yo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773395694; c=relaxed/simple;
	bh=Cixj/v5tl5fftTQ6yI25GSjzlSflDd2n3fRCMEVLiJA=;
	h=To:Subject:From:Message-Id:Date; b=ps7Nsgf3rhYEkPeQ1XygwuP3thmeBK288WxdE7BHPFQNrNiwNE9dFRHRLDnSxd74a0GrEu7d9KVgOWdQvlGcF/JBXQ06UHQ4v+AGdFJHe/vcdkpmZQJZfyeXcgjVtRGlDNup83f8EX7YZfwg46hKl9zUo6dk+wvKKrcuUbNoBa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En8MgijR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En8MgijR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A1C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773395693;
	bh=Cixj/v5tl5fftTQ6yI25GSjzlSflDd2n3fRCMEVLiJA=;
	h=To:Subject:From:Date:From;
	b=En8MgijRGylz530UqX9WxsoH396SH6XUF7Mzr3gf4SCu1uA54RXCR5qHiOKZ/XxdE
	 2mto9UVU8kdqRlCUBd6kN6PBms9n/52+ycbMqMHRHQkpaTBy0DBpbqMSjRRTbdtsHl
	 woykAerAZxnNriXRMiM/ZUdEgZceCvOFJV0OQyDL3YR2uDv2+nQp+k0dNMuDoC5ntW
	 D0/g0aGyOF73PYjDAiRFxTlLhDigjHZY4j8D2uXrar9PxFSZzUa9+0JvJhBE0/2mGM
	 iR2Y5c3UQksESomZwg34OSqilin3+HKThWCxxzuWJAlzB+lVWqyQr/CmUcW6JzdpwJ
	 lkpliVxphQubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90115105F789
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339569358.29190.377375996578362862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a9e3f7560707b36aaf5166e65df3a61f74f1a6d7ea8f4585cb3849ad4848b5
Date: Fri, 13 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773395693
