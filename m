Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066724503C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755740394; cv=none; b=bp3WCDKV4IxHDeJHRiTABf7dl3j8bXBeQRYImjNIA96qapLWU0POLD769LnfSqxsHoZqRsq/dYtGN8iHvcTIyzOeCEs5ratGOuzTn79/KAX+IzvujUmdC26d4jq2jMzykPLmXAs/Rs1izO92dfD4PGyZKuVyO3c1hq0QYEwbrFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755740394; c=relaxed/simple;
	bh=G6wlc4tTu3bzEkPq6NdhDnuopM4DWsgMlyfmbiO0Hs0=;
	h=To:Subject:From:Message-Id:Date; b=PFqQ3uupajx1t4bAPy9TA4LJeRdgAmpFANpXDtxkhXsFzpjoU6CRK36vggbyijodaZIwbT4pfWvAI1gl1iJH/YGuEW2/Au5OHpyy/ZgZ9FieQLucRTRUTy+3bziqnX+YenaWNwdBGT4bR8zPT0dWuVte2vE3RngUxCHUfxQiwLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWjDYEkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWjDYEkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2457C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755740393;
	bh=G6wlc4tTu3bzEkPq6NdhDnuopM4DWsgMlyfmbiO0Hs0=;
	h=To:Subject:From:Date:From;
	b=VWjDYEkRLPMMmwnbTFbXV0eV4hv9CV4uUpJ7GbaPlvTxax6GCZRaZLt/5xlfsgObg
	 3/XOI5Y551xFK5BXJd+zoK+QQSagG7VHSB93Kxg+tlKY9uGsN7L3i0I4SCyxLU53Ga
	 vOGz3tXZgfkOAHD4Bri+s4qQhNqiW+nUa9abFbhjdY1E0K+4kwYCM/f2Vk2aY6acyF
	 HkOhWpZBZQrOhbHbwvUNfZ0+SdywwEVFGajnKXIcHD5yOBmBSI5Gfion4Ra/5B0JdV
	 hA1rGDO3nV8J9UKT6Q+YEG0A22w0uDTpH207VLxgZRyPv1n57y/gFfLSicKmBP2Pt+
	 WAn27JgvbKzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574039357.31766.2230217621660318479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7148050dcdb3f86003dd801abf785443c57396139c45b60333b0173491a3a2e3
Date: Thu, 21 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755740393
