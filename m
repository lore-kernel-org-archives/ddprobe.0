Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105FF2868A5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751924394; cv=none; b=LXk7YjnLw83qaFdexcJP2jMBgHubAREVhD2cwFOsw+bsJiaPqFJAsiDQwEDP1BnDzGDCeEzHJ0g1h9pkH7Yf7GhFXrns1na7dKjDaJfMw8HkWw9EuoR+uhzSXDyDlyweP4grQi8Q5MoSjbg6YZMG1JOFDMp6oXImxFTn0v+tOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751924394; c=relaxed/simple;
	bh=q3fU2MxS85iOSdhC6CgBXa6Dg7lSnMHLPToU1eLQC3Y=;
	h=To:Subject:From:Message-Id:Date; b=EQZPzr6OHSLtU77dGL+Q3mrnlC3bbMHsbS9Dtfv13/0DRzv0O1tbgsYHFo8iZ4nl/Ygkz18j1/7ozAa+Ypz34ngdYNH8OFzKsgnviUqta3KdjvrXiopYJj/ygUjZSJDeQLggnky8hi4ux2D1Itods9z0jtKIt1034SD71w9YXTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvytBKZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvytBKZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5966C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751924393;
	bh=q3fU2MxS85iOSdhC6CgBXa6Dg7lSnMHLPToU1eLQC3Y=;
	h=To:Subject:From:Date:From;
	b=YvytBKZsWpN6uC4gEIM8xX3rVHX31EAPMBNE9s63KLmNWnwWomamBVRB7gDMmO+y5
	 yQzLNcmzuTmWSRDPl2Eq3ZE48jFJH9d91sNNrCd9Vsaj4IJJImdJynscCyQhBQAIfh
	 sqf0CGKATPyU3Pkn26rKinj00Gqp+auPLAPjH23GZXxWwBU9106pRkRipjqHCE62ao
	 dmZ4eoDldbREgfAYo2/dyNb4GFKB6jRwbsj+AeJeU9n+yH9kkO7lUiCFii8TZvm5kl
	 OZHs289acjB8RVS15yabpXO8YGaFKnsyWsq111vD+ct3kewFnL1eWTB8Ee22gH2+qh
	 zroMM+Ku7Ob7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDFC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192439357.29903.4036445004112478504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8ed094345c7dbe12008e48d5a6865668e94dd7486856bc5f5001a65eda0860
Date: Mon, 07 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751924393
