Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5D1C8FBA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748623194; cv=none; b=ENv2UPeCM/YPdZbSdIKeHiiIVXYmdlE5hywx5VW/oVjSdenmsd7sXfzj4cgtehgQb+UawarCsaQU15lEaunmrtfR0DX37Itwya7DTet/2fCcdIYZFiwGt1YbqhdWF4WDOnlVQw3JphgUrIf0D02ZUAqmJo6uvRFnpECivVIvrQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748623194; c=relaxed/simple;
	bh=V17/x/O01j2Bd3FwtZyHTHNTZ5L9pggmzxPomHxPBO8=;
	h=To:Subject:From:Message-Id:Date; b=gxMGito1lnOlcOLRSvjsrSdKmtJ7nEC0rLOiHz/GIUrjiUA1a/1i8q1zTFeTiYmNLxVzNuyN4lCuf7o3vK0D/eDyvy7bNkzmkNTVlck6Zq+iaVcFHi4Q70bwd04TQcGe/2+aur4fuIrxX6i8mkZ0eSzQe+Op11ZaBgaIFGeRyhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8QGxqKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8QGxqKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748623193;
	bh=V17/x/O01j2Bd3FwtZyHTHNTZ5L9pggmzxPomHxPBO8=;
	h=To:Subject:From:Date:From;
	b=L8QGxqKopwlga1FEY0lQhTpVDTrB8W0DgRmSUz9Pu+KEbKZIDolFdgWQ6cn4R+YU8
	 SLk5autJ1Oeta4NwyA0T6NrWwADp0pWHcHGAemTcDoez8h+jxm6MWs5toyX+QMH/z0
	 JQIr7jM/bZlDzMVmgvRPgvqBIvDCE2q+CVSiiSSTlUgDfverw1n8/Dg3/SDjT2jT0g
	 8cfRHG+hz7SeGgQCmw3EhBubX/luAmV49NTtf1Z5WiPZ5SmgbS6T+g0CIgaP15N8Q6
	 7pfZeEEpMpgBxVAFHoQ0UdoVnRCdfTnjTTPy6uZky7DF0O9fQDYHYu4xr8zw20zPYi
	 h076wKYTfNhAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FDCC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862319359.20261.16412120423123930654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eeb8321fead2dd2a8a40de905910d7e28aaab9f284b13dfabf2b8b5623810a4
Date: Fri, 30 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748623193
