Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2DB10F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736614554; cv=none; b=Mzu2FLjpscLy7OUcE1G6IzrYjthr5bv0sKKH3Qda8imKN/bGjkiM2iOr1OgzUMVczc8jQD9/1vBLRKC1Q+jgvkkUag6mLKIFFTMsvls0feyHhGykKnstlMSBHeczwZK1elPpNxTK4jVSzq8KK8Y3jrlcN0o27h3OAttrhaRFeVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736614554; c=relaxed/simple;
	bh=E3W2/KOzklVOJxEMZINNayomPkQBXGetMire04cg2NA=;
	h=To:Subject:From:Message-Id:Date; b=nacEz2rDlQ6OOZVLoJ+60kAyCQh3inO4ieI3gqA543yqY5NLdtNlp3+MVM0nuT8r5/gc1fM04Nu+qrgv2hOoOiTNUDpWklbt+8etACosv0e0uKRvTQcgHlSh6MFL2KLf6uVe3x+O5UvwSrAtOWcytt31198pWN6I2bAUXHOkfwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpd+dW1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpd+dW1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508FC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736614553;
	bh=E3W2/KOzklVOJxEMZINNayomPkQBXGetMire04cg2NA=;
	h=To:Subject:From:Date:From;
	b=Wpd+dW1r6mSVmM/HwrbZWypxCiuHowEnW1poL2hhQymOt1pRivCZs5ozaN1rxapni
	 g2X6Xw2n9J1bdqgg7khzw2/wiMtDwxe1E1jZvYLSuMFAmtBg0515mKBi/z6Bs/CNGe
	 5iMZN4gsOxVwmSlgVm5UlexDXv8gO8sNXKCtg1h451pyty+e4uMNWQTZYoosMDNGn3
	 Tpq34c4YFwb26NEBxtIAK21lk2nU7tJelKhJNdKdpY6xlD6kbdY4NMJwybkQAS7Aeq
	 3FFPqmi+VZVwwic8CU0DuXnU8ZN00/x3J4fLHj2NgwCSJOrIX25L4bCuXB0W5pafXu
	 ILaJ6+2U29Gkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93309E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661455358.6256.11137735790271838100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b7575328d415664303da6e94a3111086b2373096fc46a28732434cf02603ce
Date: Sat, 11 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736614553
