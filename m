Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1C217ADE8
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741511934; cv=none; b=u1WwbtTjSvnR9TrnH0g4Y9TR0KpWEKOwKHd+69RKubLuLw2JDZeuVwiVMpqDOttiYDRxz8oH19Px8CCQd1u35aaRDArXcjOMpXV4BP7/vdsY42UZG2bSCext9tqRonhScGfQDZglZNKpre+wdImVvbmJmdOFJ/leBKGIbznWIQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741511934; c=relaxed/simple;
	bh=s4x6dmIKTowFmHju5lP4FqtJizLa6cgDtSiyfffi2FE=;
	h=To:Subject:From:Message-Id:Date; b=YaPKJaOd5worSR6cAYKT7BoC6GDElh9368fGlGkHobnTUEOmbEjz6Ff8HJ2ywSAQXOgJqNKz47+TlO3e4hoBkSG+5FASGyxnQscCL3v2H+RvgxeI/8Udbq3VVfNYcZDWG13p7FUz06GF1CfQKJfU+DyJFEjE961UG3PrcBWt2CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7a0wenB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7a0wenB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D03C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741511933;
	bh=s4x6dmIKTowFmHju5lP4FqtJizLa6cgDtSiyfffi2FE=;
	h=To:Subject:From:Date:From;
	b=W7a0wenBDJg/UcXqIgOJSyMqw3WasD5lE7uzZgg16aQHiZ8S3JJhE1P1a7B17xo4n
	 okhxxq8b+gixL3+1aQC+xjubCUyskXcdCpuybqiHQt2xnisiYFshG34eJPoy8xoEJk
	 DzBn6PBCw3OuJSvX0pJ/+S2BEL5+9Kx7UhgGyw8vH1c3IoKUIiFwVJUqBAe1Ta7ugI
	 WnjnZyEaJ5tVo6oBbQfwYwzqKFs+CO+A+LiyMJJedwOSOmiivKDw52vy7zmyD9j/I9
	 d2mJbePrfQt58fI7PQcwjIDsBUTVeCAbPOsF+VDwM5Qt5QI4iL9uxaIZG8HEdxcDpO
	 y4eqkmeUSFJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D7C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151193358.10952.3797244049712545106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df553201dd938984a0a5b29ffb3ab65310c1304e25945e7f298f5b58f7790757
Date: Sun, 09 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741511933
