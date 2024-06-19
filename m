Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2FB158DC2
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718825963; cv=none; b=IawKZGxZSUFKBb/6ZxECQT084AwUf9/NWw0qlJH6doYvlN66SDxwS7jZED3dI8Ja/22LslscGgHJOzECPpDATfl1n+g0K56bDlwAO89Ak5yC/NnHmM34eDHImbUcfMPpb6VABuh513yN4eW+QADaQ6SYPx1NxpqIAevrEuPY5qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718825963; c=relaxed/simple;
	bh=/DXfuG+tHnE8EOKiIorYIZYh5Ogim+xwASAWymIVjC0=;
	h=To:Subject:From:Message-Id:Date; b=AK/Q/XB3V7ToK0slG/x/hAC94hHEnm+eeHuHy41S0T2aRF1dbpEl7d+ksoXFaQdtWglTYUeDNHft+DrtZJXUK59EjOoXG7mthsiUGMHfj4uLd1J13MlKY93TNgFP2HynFZiAUOMV87pOjh9tbOCsqSiGPmRoKjYzNFqnwswdU/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAH9mf/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAH9mf/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76CBC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718825962;
	bh=/DXfuG+tHnE8EOKiIorYIZYh5Ogim+xwASAWymIVjC0=;
	h=To:Subject:From:Date:From;
	b=nAH9mf/BJHFJEYpHeFMPIsAHlpGCgdiMjN/UOMH2mH4BLY7ZuiOo9B51EvkETwjEG
	 hxHlcxr7DWYGHQVCT3bueDjBV1dlIGyPfCiLudNcDBvS06GTuGR14i5oubkezt5U2F
	 tNSBUF9t4CCgV/FhXSSjwmNEW525KV+YFdXQlTKUaWFYkybI0pF1e9/fEvW7EoQZeD
	 hJxsNDUva0Qkp+znOVHXhhhoZTkvbERaGbvGfSzfD2/QvAxWICYCbC0JsMPsqMl+Lm
	 LEuR7hSBh01noZ0bqs/5xLmXo+nePhL4bMuY7wqUoB7/MLViP2TYWc17AEIk1UmeH+
	 fGgeYr5idDqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D55C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882596278.20995.7764149839485394150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274cb1f49526dc5dda7a4452e518b0c50dcec46ef55092c746360b574856fd3d
Date: Wed, 19 Jun 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718825962
