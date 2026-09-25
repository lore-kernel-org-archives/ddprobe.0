Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE424A1E06
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790349634; cv=none; b=U/LmtJesrjgU3DjiMPHKlqubfdnC9IL887ekxEdOtpAhT3NTuoJelM9UZPdaXq5ThfAVRywHA6n6+dSNa8WgGCxmzAhNIOEi/7nK3dQVpy9zYCVpX594gDux7c7zNEwKgY5jwOpKff8sfzsUj/dRqxhUXtniI/CtYSENU4DKIlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790349634; c=relaxed/simple;
	bh=2Cn0W1GWLckXVHvhjVPs5wZJWpbyjAoY2MDYzoT3WlA=;
	h=To:Subject:From:Message-Id:Date; b=umH3mPLUmB0BkxODR0T3LCCbkO+ZoCBCjC1yw4/d6WIvx1dfjnJVGRuxOdYhGlAKFcRgqpdBGkDNdk//y7QsrColhFShb0630sfmkg4IQGCjakIqDPWw9RQY2Gaqnl1yP6R412tlnOmD63jcaEk9x7Qy0bhQzfekys5va1+6HqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/h/ZeCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/h/ZeCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790349633;
	bh=2Cn0W1GWLckXVHvhjVPs5wZJWpbyjAoY2MDYzoT3WlA=;
	h=To:Subject:From:Date:From;
	b=Y/h/ZeCalN4NSgoeOr0mpa5Nv2gMj6TOXiZ8TG3Uebn+R/+Xn9ej6chG2QIf4Uy3v
	 u31w7aaI0plLyG0VL2V7o1zI/ntdNO3ZT7uJ0kSbV0SRF02D1iFshjB+ZFPlZY9rhe
	 zZVZMxcsr7xeLp+CZA4JYBePHH23JetOOqsrwi8iH4eJF7B1301lYq6pE0/7984CUf
	 I8JvcTOqojEfjZooDG0h3D3oD6ZkliQYZ6z+k+fV74eif/WDlA4vrO7vnLDu85S+B4
	 izCmt4wUFxxZ3Ar768uK2ngHs4c0Z3V+chtjIkDDObkMYh6GV98YhuLom8NirpS768
	 UbKH5i1QR+kJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC4C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034963369.19086.16537695414064920410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d81dcf6a0fed7db84d534742380df85fb3dc85623183f7fdf1b4adc5482cb1
Date: Fri, 25 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790349633
