Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509FE71B5E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708286297; cv=none; b=QcS+9Zm09ur5hd6lCZgmNCzivBg1+n4VdgPGz1qh+qgMV/41VfqoVjlnD/UaVjQVKj2ER/QLHl7bOYIsxNG48nFQfvYOBUSDGUk11O8wVXmF0MM5JGR81xL4OFnom7dpHLl3Qo0PapIqnrxgRKVkUedtQQa4s6UWvbxmRur9gqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708286297; c=relaxed/simple;
	bh=oGdw2fBtKo0A0j1cTUAVrXni0n26Jb9FItRNOtNQk3k=;
	h=To:Subject:From:Message-Id:Date; b=Vyr5gR6Hl24AxKV6ad38yE3kcsK+x0Vc+uH6VjJS+eVRrS02Zx44TuYqXli+vrz41Sj51pyaht+v2hUmYeOnD2MoLKUma3y/bPekAf9/UX34iQK9SY3rscX+kQ1IB8TMupkBVaKB36TvwGfbZNknCMML7iq31qiFHIiGLr7XCPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/MiuRkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/MiuRkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAB4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708286296;
	bh=oGdw2fBtKo0A0j1cTUAVrXni0n26Jb9FItRNOtNQk3k=;
	h=To:Subject:From:Date:From;
	b=U/MiuRkbvW4h6H3ezviuc3d4kc7eL4nYlvtPa6OXMAw84dvuynUqLPf8AX1ito+BB
	 D0itcIjJxGVJ+Jxit3cI/ovJ1npHFZQ/blGrbhHG+25esBpqRUeFRZLDjE5ooreu3j
	 0ssmAgQ1h5lD0IkOwQdPFmMV8g42Xu0v7xTChu765LFukXaJZWytY2ViJxG8YeEBKW
	 7rV2hEYHGGq25XLtPEb3nLzqk++FY+nvZRKPNgQSelt7yPKdJUZNO7QA3FJvm9eBGh
	 ieV4+/jq+pxGWKDWyFEAlha3DtPKBww2gGLzQc9QHXNH3PTjh9WIA/xZ2J4O4k65Ow
	 TE4ZViFmDgatg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BF2C48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170828629637.5070.9608983462004689802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7449c60b957bf48588c67531f6b8a2adec67f8dcdc8d33504783cfc8d6e48c
Date: Sun, 18 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708286296
