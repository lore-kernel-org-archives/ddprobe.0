Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316A4274FE3
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766509434; cv=none; b=loluSr6V5mfrLz+XuMvupZnZKUOaBLNANk9MJ44FJvdcIe3wL00Sh6J9fsNGcTCPG8+hmML0OYDt2tS42L8vm6pD2ArU3eKm0fNYGsV4YVf1gOCCzdvt6+VcKOjka7uDp54RKF1AzF5/U+//Z0+h9npH5MykCpNGSw5XL3aRZSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766509434; c=relaxed/simple;
	bh=ovw+d9bn7niIDUT3p4EZJC+G4HeBRjsmoyYy+8xWJv8=;
	h=To:Subject:From:Message-Id:Date; b=KtQoZmHcfrnKlhoqpa29dAlMwWuRScpoiJ63S5WZ6t7zMv+D/TRZ6Lcvd1NyeXevchCheAUL3v0wwLwtm4vWSyUzVaw73sLiH1NEJO494OhCAk7ZqPa81+YrIGb73AP8DFRmykfg/r4TJJxm+FRVa1CBFpXzF/fBs7KjEZTGiok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJV1fwSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJV1fwSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5FBC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766509433;
	bh=ovw+d9bn7niIDUT3p4EZJC+G4HeBRjsmoyYy+8xWJv8=;
	h=To:Subject:From:Date:From;
	b=TJV1fwSejS2gMhwmfYrbRZJeUAv4okmY7LFroqdGWLT52O6/EDcjwCbWIKFOtShr7
	 6+UkLwcy7dKR9/GGhvOP25trQCXMfeAg+p1Xq6tSkIdKpqVB4LYARSZb37ao4z76N+
	 HtshC4f6ELTfcQG/FUjXBwwgtScctOyiS1yrbdYpQM7RU0DG7C2M1bkyw/bjdrdIhA
	 ZXRcO9q5pgvFkeinRj7sZml44GvTRfogDCF7Oietf9R2H15E/AHKxFAH60jTfDoich
	 /aj10e4jr5T5B3B1NtLHYV9wV7GUpnbZW45OC2L3ebvXAF5/GDkTc2C87Y6VrWZaac
	 oglpHczhWAHLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650943357.10080.6306727675219525578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033af9d94484e8d89ae42c2688b61e0616721b5b1b3a6e3ce269e770e75d268a
Date: Tue, 23 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766509433
