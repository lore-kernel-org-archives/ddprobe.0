Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568712746C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743559794; cv=none; b=KWg66Nzn3wK/YiPstRFwcsWAdKbIMdZBi8K0Zwu3Phwj0P9ng8/+2YcDE1j52D4RsI9eWyYFRpLTvCkvDvffbuzKkBeBTRDd4TURgVqAj7I49K1Rndcqgm/Yo3mGfa1/hGYIQ7aVwRXCNztlWgTX6jZQAJAJIwPGBCV1Bz6uQ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743559794; c=relaxed/simple;
	bh=h7lnoewMoxDDZqj92E9H3mXcQR6TRKKuBUiZIp0HBfg=;
	h=To:Subject:From:Message-Id:Date; b=pXjs5+WMwtHuS1eyQMcKCCYuBf/XibNzWmTEdiJnPMqkPVlQRe9RYR/kBMaZjHsbyEYvlj/0hRwu5qqI8dPuGegS050ph4OVU2aTKoDnV6xd42R4tsX080ObkQZiTezhNI8jf/kIznFlUrFTjXtBCtg/vxcyNU0XplHmKTo30Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7cq2r0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7cq2r0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD00C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743559793;
	bh=h7lnoewMoxDDZqj92E9H3mXcQR6TRKKuBUiZIp0HBfg=;
	h=To:Subject:From:Date:From;
	b=G7cq2r0bjhsWAWczuK1paY95uQeBQEPCvmEymSrol5OhztFzhU0PZRI0yZWVTZzAF
	 QcknDHuSmlw+rOxifJWSN8YI+iuP6ulYAazH/DfOqRGOF0/8x5CR0hn7g/2ohKdYrn
	 iNAqUxnItMfOkeRAE8xQ++E9F5eIfDNi6VI6FA0yzGN5iA7uy1YH97bb/HexM7vFUo
	 4xs9Z0t+YrbnO3Zd4/xpdmqVAHaBbOuEo8U3Ex/BOvddGrwl3mzyVlMFvNBr45+WoZ
	 fD2wY4h0sBaqCjO0Vuu00j4LGHpN6fSTYh/OKolJlYdmlNVR/N55gUIqWizWNZ/vBq
	 AOnnqY0BgfeJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68B2C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355979361.12581.3002095970067234359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6af0012069590f9ff0d3e10ae7c92180374ae9e1dd2fbdfcd1ab759d935aa43
Date: Wed, 02 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743559793
