Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F2428A1E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753563594; cv=none; b=Ap2bDsT8EzcV/fGTtllI6S2HneUIXCHuyBqQ5sjLqobu7THX6kXsJwDUhAueNCQFXCQC6C7O9chTi4yAxIW0XUzNhN83OzXgFaNdpJ6nSSHsPgSW4VB8pT+gnstIqODpf7glfqAt6DrUa9E4UlJ+p2RA1EBY6rR36jX+rRxyWzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753563594; c=relaxed/simple;
	bh=BgRJsmkxmeFkkRHBNsDwAGeQburQA+hsAwZFj4dUigI=;
	h=To:Subject:From:Message-Id:Date; b=IEKQ4yMAj4RYupNpg2MVlP84dXwnp3wpgvAML24bK3zpn0kj/hyEGbuzrh0ekGtvYj0pUQ4f/YWBLK7phSoA8B2oemrs5JEXRT9fFTFxJYQ5tTPYgWiiGalAQwQAV3BVnRettKmZKDUiNPnXgyu+0G2rbgACiusPTccIORx6+pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6XBFHEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6XBFHEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5340C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753563593;
	bh=BgRJsmkxmeFkkRHBNsDwAGeQburQA+hsAwZFj4dUigI=;
	h=To:Subject:From:Date:From;
	b=R6XBFHEF07Die01AMzupgIJvDiVcv/CfDIAWq6rgCXr10gM3yLw4/lzQzdjEYMDWV
	 z6fuwUIwbJACMb9TIo3Icmk2MYbD7Q+dw89bSctd93eC+LKetSnx49FyeUomDU9G77
	 S642sPM6iTyLHjcfdZ+2omN6c7TrXaj53SdtvhkPRdx4Vq25yX6HRYwuP7sPGQ1xfx
	 EP9v5QuBlsw+EhNXMxJsMNJjWcGjJ8q51+q2hkTle1lH43oIy7/Muy2oVxaPjRYMSq
	 3RRxdn+mRM3+9iqgn9BEv1lSxndwrbJ1CD4+iQyA6R5LgSXrI9zH4VIar6/EBgHKwb
	 wHk6HjhKtiMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91361C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356359357.19186.6598936296275707753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1df2ca636ef0a1fe90fd23a138904ef66c1476d178409504c98b2675d88494b
Date: Sat, 26 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753563593
