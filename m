Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A242146D68
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728737154; cv=none; b=i1b7s5GPOTH4q6VjgCK18SIvQp+jcPue0/HawnT5oCJMhR93+dia5ZLwsvUSfyn24RnqU8s1rEPqB4Jql+66bZPL8HaA4a/UaPi334arS0VflE/mD5Tj30Xj7dwkPTM3ra3NHj8nvNZvijf+5LcokAOUMySHOieim10IcQ+iC6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728737154; c=relaxed/simple;
	bh=waBkLzX+rTN6PNfudpsEjj27v8/jPX/lklCYztu7WU4=;
	h=To:Subject:From:Message-Id:Date; b=p1U12oWS6/pGqVJii9usqvOsi7cJE1sn8RPXbSSOqR1JcEB2nrrulPkaOCeneqrca6AGCjJVRt94/9gxFQnifyLwbf0E+AD7kbKVr7R42NfAEvLX8rk0iKbwp7ZWk7d8l8VfmbXW8L9YL7OduydF9rG2QkMtsMnv3GzP6pbpWdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImW+j2PI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImW+j2PI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD406C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728737153;
	bh=waBkLzX+rTN6PNfudpsEjj27v8/jPX/lklCYztu7WU4=;
	h=To:Subject:From:Date:From;
	b=ImW+j2PIdw5cIFVnraxBaDFZsaW+cv8ex+WD5OG4q3MinxkOKTVV81fTEQrRDWTkD
	 +zS5+xuTUgYtbp2Y5RBDz2k68BZdvwE52yJEI7EQoTL07NfFb/2mbtwF6yaXPF8GvO
	 ygUBxxkrQ0KU2UsJxCcE5y2/vsRsh4jBX0W0XqVfPSXWa6YDURT0+tbhU9egu/RJTd
	 /9Xue/Ud45AIdFs8Oow8i9mL5pKCGPtsIDA8hdFm15eQVRb5gMJFMtZ9S/BRGBEfHW
	 G+Qq82XbOSPhXcO4PaRsL+1/9f7U+omy2jetFl0TtGIVSOKQclO42XjFaUnuxOFS8M
	 p3PY9iDPzs9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6ACF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873715358.11068.12431047118013412837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704cbb468ac104d787f0dba30648686239234506f8244fa8d1adf667953cd3ab
Date: Sat, 12 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728737153
