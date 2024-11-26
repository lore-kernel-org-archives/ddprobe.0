Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6361A260
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732604154; cv=none; b=tR7kwRBBkq1BuF5qK+wFV3F8+mJ7GIPVs3SDJJzQd7+/aTyP4T2pMncu2jQ4AVFRBJ6Gd6NjdcfgjQYkQlL2VLcbZcR5cX6zXOSbOshkrbjT0aFRIyJQcnxWYDtUicw1d5PK/6tOEtR8Rkx9vGyPaFK41hAlfUugaSMfjtGuF6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732604154; c=relaxed/simple;
	bh=YhnkWIcoaEOXT1tPWTt10PvaCj267NJctk9ep1BmbFs=;
	h=To:Subject:From:Message-Id:Date; b=LGjykcwsFGRfiUKl16PdQK22Sx04EB5zU5Dz8QgBHfjJj2iQrxlF5UyuzYDgimfzEbRVLmPgPsn4/pPSvGiXqD1PQYLa8aW3rUT0XtWdcPE9k5fC2ry2QgY5oN0dKawfMT+FDT5rEGD/YdTvyqFRlMAmK1VZ+ldoY7+RiBHOM/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4fJ8fTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4fJ8fTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFCC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732604153;
	bh=YhnkWIcoaEOXT1tPWTt10PvaCj267NJctk9ep1BmbFs=;
	h=To:Subject:From:Date:From;
	b=b4fJ8fTlecRnM47KmnUmPVofD1iBCuh7gmh8A6xCw+ZJKXPmx+CxM1b3fjOStq/+g
	 nTY+qqX2yM7iiMF44SV3Tzk7oh9+8KSqMcpSX8zVC7FeyNA6Wk7rkqqDckaInGCdu6
	 oavfzEReM1SrxjS1F0xkENsZxNtZ8w9tLp51oZEjzmWSbK4mHHZqdE1EmI/SFA+ARr
	 0Y1IF6RsCsGWEzirwvGlS5Dqk6bEW1NV7Q1VN5/CJiRPcik5Y0AszzLCBLAax8bcjP
	 9FpaY3+VZ4yVfljkuzr//TUXV2fV2lzUbgNn6ovpfCi2k8/LxQ+geXriV3kw6Crr3U
	 lZPpq67E2DvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7AAD5A6E7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260415359.9749.14819456888347146005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783c9369b458552206e15f1f53e1b313c861414c2b7a3cc920a99fa94e766c7b
Date: Tue, 26 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732604153
