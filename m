Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F145332916
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776703054; cv=none; b=Mf1j9c657goVs8piS5JFz4GbPryQ7JqmIvJ/bb5O3SSJ563B/OLPL+g7PRgBSbRYUH8YJja32HkhBMCgEExkv0t0IGHzEuunPmWcKT0YxiiTQwFt03dSRs6dWl52yZxGGRe/k1iWuVeDu3H5m0EYHq+QH8hqvhR18TNf835g+Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776703054; c=relaxed/simple;
	bh=O5Dy2hEgPN+pHaffZUBVBparMoUdbsRgti5q2K8ucIw=;
	h=To:Subject:From:Message-Id:Date; b=TvJGivgxzF31n5hJ+KVH7UVLC9c00KQdA2soI9XFwIoGT23vZbIVZgYXvRLSEHMxhq8uCyrIlUAkyJWzcAvSDAd6PMdONAXOSaWrC9xDZFxbWyS3gFy4Rk59VRg54xl70uoQ5yzzSDfP7c6qlqdukTVGsZzFHNT5kCsF5BnXP28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvUw1Nm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvUw1Nm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB55C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776703053;
	bh=O5Dy2hEgPN+pHaffZUBVBparMoUdbsRgti5q2K8ucIw=;
	h=To:Subject:From:Date:From;
	b=bvUw1Nm4F2WnPNolXCo8U4VVskdpHodC7gyCwKqRVfDnPC+6vOIdZmP51kWin5ss1
	 wmzUM9mux/qA96Qy1hp7wp45Ke7qUe40BiqqzEmWKBQkEtmwUUz8yNJibi2Hn63fqV
	 TqLYgb4X2r6UybYAOPP5k3fBFhQ139TKSWJIdFhz3KSVBCbXhTGyIMV1P/GYMTyvmv
	 rTT102UiDSlbHB9hW4IXMx4u3clM404Gl6yt22s3OD/rEApYSILWgm/xCvekPXx/bk
	 CcG+ChzIvgQTULzYd5NksPZhWbjfPZqSzRLFzU9XoTZjCOe3R/a30ZZtayanbaTKiz
	 2WShOPzouCSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CAF588F9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670305369.20653.5609740738655339182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7dd70cd297527ed48344fab829ddafe336cee680bb12c6eaece65c17f35594
Date: Mon, 20 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776703053
