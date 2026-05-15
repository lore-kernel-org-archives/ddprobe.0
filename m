Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA81269D18
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778884234; cv=none; b=If6q0eHAKwiB198IeIaIPpPWIZXRBiGe/yLNT0MjMSUNy32N2TtGtDd6P5PzmQ2v/8K4eKa03bnSi2cR/Ser7QuSHPvIalGKe+x8lDWsAhE/r/0tJ3wMKOdXyT5FOhksj75SiUzMuDIPABuXrucWV/6Q7ju6cQsmuLPypFqAsLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778884234; c=relaxed/simple;
	bh=ahUxPbtz/tLfCgBlpcu+uYg6NTCkGolsbw0n89hWMi0=;
	h=To:Subject:From:Message-Id:Date; b=GGoRPQ/S8oHbH3TuIgsIruNeRfeYU7Jcz2/4njXQNt3oAyQp6KqEEruuzdo1L/3V9L1FW3vmhkjmG9wP2DBTIsgxCopdonQcmi1yhMwkpmJhHzX65L0rSVXiDVUa+UfsCrXryu/D5zVSapTSbF3Ppx5IvH26MK9HNkMZYxcW1F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBC35o2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBC35o2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB915C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778884233;
	bh=ahUxPbtz/tLfCgBlpcu+uYg6NTCkGolsbw0n89hWMi0=;
	h=To:Subject:From:Date:From;
	b=XBC35o2rzpUNv09hvzYdjiwfL0GRWTiEA3noBN57i0dxhhUPbVUknaqfBCSc0uYLi
	 BYkTj+TwxvfKo82c20X4DT2q88zsE+86MwNJ7bO7Oh4S03mKKgTaxGMqPOIWnzqeMP
	 c/i7ph5XJGhlImTnbboWi8RuJXDzFQt+iCYl0FvUifaiqobOXIjdLS7Cb2QGU/KI7N
	 /kpyM7T80l79Pgp2wWHfwaUA2G18PDsX4pWbFrQZ0Xq2BRBV+kkm0OMLSMH3dv/aqI
	 vPvnESwm7vUgSvMv4QggCtFnQrj9HUUJWJ4gPza4F0lKldFtNoWEEPVBxWg2ovboXx
	 QXlCNDcTA+xAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF99CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888423369.19716.14928931485968972009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af94354aa4feb5e877a5f239bb9bd1d3594b1241cb3a6992541dd25c7bb0299
Date: Fri, 15 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778884233
