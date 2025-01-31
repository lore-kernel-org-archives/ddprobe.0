Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6810F322E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738289754; cv=none; b=MAbs2Pcjt3RI6qlbSmE/sti3Mq7chId1LTt71fFeuBN/Fn7V4TZCs4azyllpoIPv7uAxCFrzMlaR+s6GxrTAwmQEsJfxscPuj/4lRx1j8qRraURdh6UIl5H2e2OIii7gSqv1s0wpnUGGSFYCYRw02l+DFgKqmiD7ul87QAowckw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738289754; c=relaxed/simple;
	bh=cDqO31nW/pIsD9gECGd7BKH82Z1+IwUSPH3RLVpbJNo=;
	h=To:Subject:From:Message-Id:Date; b=Fmc22mH7s5JEUIGygKSBwZTwLoeG+Juhlgkjiu5Hy665eHEdvP5yduFJfFDcCqwsQcmzR6pjUHvsXbK/LMHUXVb1BGSrHR2M0nEF+6VXKriFYO6BE/dqZ/DKHGwZ5NrWukfeveemPuyCUe9JzyXS0ZQYpnlMdLzo8l7GndgdWb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C39l4FRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C39l4FRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EE0C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738289753;
	bh=cDqO31nW/pIsD9gECGd7BKH82Z1+IwUSPH3RLVpbJNo=;
	h=To:Subject:From:Date:From;
	b=C39l4FRSB3hsswIEkgr+QxutiqxNzbmsMS+xtrUeU7/9Pm06xFxuI5Qb0XtFHRMH5
	 4PaL378SKtiTQE0Q4ZJV9LtgnnQK+qAc6FLCjyloZ7antLQpkXf469A1SbD/o6OabV
	 Jh998FHyVfdD0bXjZpHvANdrvCu0041736gC/3IlsHh5CP3DBVv4wavAYY+uH0ugLQ
	 80uErgDVeFXDBKZRgcZyxKP54CgjGI7awti14KjJC0GA05S6WQYvY7HyJHVfRc92mB
	 Blr4skSPH9tsk7t1LI5wvdBwRmlAodH2oP9ZiV11iM9/ytuwyyqEpl1Py2AmD+8Iab
	 TIANdaSOb2abQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6A8C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828975360.31137.7994840800489998640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc75273cc78f8529857d57feb5439af9323aa2d8fabe5171814935e30aa90459
Date: Fri, 31 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738289753
