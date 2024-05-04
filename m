Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4FA5234
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714803743; cv=none; b=LHM1Ypa9eEYOir5csPuYV+rw+yp3RfFB7Jcc1om0Sfhl+DASVbb01IIJkRthlD/nYUcms21NcEamTxb/W/woGf1sDbOPsOOUydB/qGc6cJ0aYI1aZHou8Ek0H5dA3pMbQle3COSZyF9Vb/8d7BTKqgNNJektRfxRaOgO8wUvEdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714803743; c=relaxed/simple;
	bh=cmgTJB3zu63F1p5g+6c16wmfU6VqbkQVWwFRiRk2kDw=;
	h=To:Subject:From:Message-Id:Date; b=jIL726rNFnHe5Z0xnjCPKh+qI+67PMOvrjJh2NZxXp8kAhxC+H/tmlfQRhh1uGk9gZPt5Irrpi6qpJEOhVUE3aVRQEe0MCgXlm0YXZzrmLyE8L15CN5UEjTQYz1yG4nUOxaiIzaciFYq02tpSIB5wiSy8Fxf69BwHedqKuagfHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn98B9BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn98B9BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B91C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714803742;
	bh=cmgTJB3zu63F1p5g+6c16wmfU6VqbkQVWwFRiRk2kDw=;
	h=To:Subject:From:Date:From;
	b=rn98B9BD/HJSx+Ai04+8eAYP2y3Or7+msUIbPDsJMih1RaEd/ylj3uoxfPX4jKIkb
	 DG8dehBWHouH55b/fGDPZ8iv6f4OOkFulEH73YeYOoLHyMSQa4i8VgAbyKOT89wTEF
	 yDtFMBB5piOJFJdythsrbbTNr99f7hQBLlp1QQreuuOou5bs6kzQYaJ3pM39jnLDVG
	 WN1dz65MPRV2a4Ww0bqn6Men6d6JetWtMs04xGYnhLAmeB2jeAPvpvrEUbEFONB36r
	 wX7RECPkSTtku+j9Ywxj1wM5ybP+4gtVUZI31jxWq1BxZcTQrhCXurHbnmjadogN0o
	 pmVUFmZt6Szng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24D3C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480374277.5463.9633458653073415859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf2d4bd5db995ddb18f148f1f9b0b98f150608f3b7f9d4d4d1f142b7fe5af06
Date: Sat, 04 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714803742
