Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED754C92
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756859394; cv=none; b=ce8tZJgUfXx+nMqDPaFt5j91FiC6Y+cEy3EcOU0FAKNdQAIMZuE3+BgM0HvxB04QPJREU0nSEI63VjcoznlIJVgVFDo6QL6WpwMxMPLDHeM6kLaoOIqmKsG+KQ3OgNzwGnAlgJ6/LBdfr/uqMmIy1ujCba5c/9AxPP2Jk1i0Uoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756859394; c=relaxed/simple;
	bh=y/nJZdgkQkzRdSRJdqU9W3xLtFCRxzRYvsAFp+/bBwg=;
	h=To:Subject:From:Message-Id:Date; b=GHeecLBDGbxVQZW44ix5p+KI0nQYqiWKIJ6zg2zWH9KA11BJVXuyvvAkMuyjxAn9S6dU0ZnOM9SDZGsom6ttBhHL+fipSh+OVZkG+4UrEVaapCvRaglgdFIiT0QdlL+5kYuy0DYDiTxD2KJzm9LWlC02Dhch2yoN5gU/AWbRVxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on1c5NAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on1c5NAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8033C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756859393;
	bh=y/nJZdgkQkzRdSRJdqU9W3xLtFCRxzRYvsAFp+/bBwg=;
	h=To:Subject:From:Date:From;
	b=on1c5NAhzl/r6YAFBzTaiqKMhFCzes/bR1y0UgG2DCXif8gEHtDoFXlpBKDFrNt5f
	 WDwq1RhzYSrmZz6z9KLeUXKA4/mebUxsLC4KSzmSl1Ooprg44qguGfobMx0CJJSDtG
	 ZvtZ6mBfYCnugQp5HDSb/pET/qd9fSS6OLPewm1Dyrfqk8GmiRwWacDvNWlN87RId8
	 LVBuvhEn2Pugcc2E2aUczHFidkLjiLimmOVchm6aHHiARWadZXfDCwpQfq1BrHp2N9
	 gF4s1/E7OQjMP6D3ONmXdpgOyVmZfwi9aZq8942M7X6lWMyvcNhqp6dOaIH9gru/NX
	 dYemmfb0oDSbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EBCA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685939359.19198.12097491513499079905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1d5054ffd3c475216fb8ea8100ab87cb8d3dcfb1ac562bbc05f2841d67df8e
Date: Wed, 03 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756859393
