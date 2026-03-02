Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20168334C1D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772431494; cv=none; b=tHyRFLDxE2KadW4OeJAwILyGYT3iIE+1Vbu0i1+GmIQ2H8AOXmMdK//MVGyG4F+pMIrsj++Pcs9YWyszKgyYo3mLUltZHJHbW6mNWGeS/75Md2hOQvOoCLa061vPG6Pm02uNlH8Qi+fx9Aq+y3mYSgZIViPXFxQxY6iJOWL2h18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772431494; c=relaxed/simple;
	bh=CGZVFBDEym6O/OMAgLBdTQbcTf4MNzpgFMldtNaYqAU=;
	h=To:Subject:From:Message-Id:Date; b=q9ZiGKGYdYklP8dLl5rG8xBNiO9GsNbHUB7K7q6Cw0iJ3Oid5wUXEFN1CEjDB9QNY6S5IpEtIAjx4osCXAgr0u/hEz2fiJx6xzZweCG2nI9raM5yEAwMPju8VYWuxqvezIbctRDk/XJmY4EBJYhP4gufiy9aBTSpjbz9A91kGTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx+VYofg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx+VYofg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CE1C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772431493;
	bh=CGZVFBDEym6O/OMAgLBdTQbcTf4MNzpgFMldtNaYqAU=;
	h=To:Subject:From:Date:From;
	b=kx+VYofgimVWlx0BmF15hEVY3LCu+3shcVOZjqG9Baa3WK9z35gml2HYiNEO1GVeU
	 6ykHjzKiFkheec0K+mCcTNk5+Ur2Ukqd2nn/QhEXJWgrrofsUFJAXM4mn+W2EsPZkY
	 DWbVi3D666oCmdZ8vzslQNbCC2XNfBmkSQHjFJjDu0TmK6N2FpSqNq0H2LymDWOsnx
	 r7nnfjqLhpZGAbhoV8g1rDMHZtVa8cIP6Lg9pgtYmH1e2ErDPF0cUrz5kVWwm0dNth
	 ASnRexBcII0i71J9NoRYxynbnnxvFrcO0Pv42PvSEYejJOntrGtK/JUubFcHErTZKY
	 PkbVs3tauAUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA712D58E5F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243149367.31778.15292357603259622608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf988ab48e107d6332acadcd272a5b2e68ca27d3ca20d0d164ec6676016ef44
Date: Mon, 02 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772431493
