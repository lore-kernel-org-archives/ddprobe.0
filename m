Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334C51BC3C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746242394; cv=none; b=uOBPFnJqCWq8z9D85By7nYxUOq3QW1MordkbLg8Vk9G4GAUPvLA5LlatNjudJEmbpH7QCPV22VRAj8G6TzANyAVieSDzA2mHxEEwFaX/yMEElYu6OUQFP8gcUl1LpDajMa8Nip27A6ZUNVStDfVrEgi2PCVPYLGIv+9/wdm5JUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746242394; c=relaxed/simple;
	bh=O5CDoiEeerR+6jrxYT033F8WTuWH9CxHIm73qmYX/Bc=;
	h=To:Subject:From:Message-Id:Date; b=fHyrk2ddjDfZaOXlLFqSObzSXsCvYISayaZSuzSDyvdo+weyEMRkYArG2OQ+pc+unsWNOq7pJR5TxqaTIxkVb6U9al0QojkvS+Z+dcGT+Uu5atmrTB7uBdweZkdl+jmSV/JjS7bLiHxVpNYr3OwtMCqjoEVop2FNz7fiSmUXG3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9LezCPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9LezCPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A489CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746242393;
	bh=O5CDoiEeerR+6jrxYT033F8WTuWH9CxHIm73qmYX/Bc=;
	h=To:Subject:From:Date:From;
	b=R9LezCPm/IkBlOWgk0OKXj9SDPPlCbowGMgaL9rVpyHYZ64Nf2AxsBqobj1ukwHsh
	 zRJq3DDWkR7pEksqN02w26s50jZecmMBxBzYkKcHoqrk9kdSUtu7dVZ3tkin5k7229
	 GHsu4j+kGCe1TnpqgP1V4KWU2tMpvd2O6KApCgxLkNRMS/R6EVoz1pIJvxgVA76dWU
	 5MWxYYdl3RrFNM862+qlWH/6CIiMHrSGf+DmspZaN5/xyPuMzD53yToF24Miuhs7hj
	 C8VIAfs91OPNxIDNcQJz7u+6Au+tBSPkbzaAk+hKgVZvmvX0QcQEzoXh5rakeFT9cj
	 u6v9sLJ3krUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106EC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624239357.28245.16566401841990667817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204480d1d8a43cae211ca14905590ee467f168396fe93f003ca041f843d595b7
Date: Sat, 03 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746242393
