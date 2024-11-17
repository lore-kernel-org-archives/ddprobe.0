Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3237C64A
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731815154; cv=none; b=EFFB4ibeFvvyWqNQmlJpLU0BXslfqUYJ9cCwSqa12Z/4XRz+Fi3guDMvs06NwWTImmnc3gLIqPk9Xz4B8EZTe1IsFlGuOqIwdCDhs2kwurfvSnmdSdDBdAGr1nZtvKvsvGGQtJH9sxMpbxfNJfaNjFuGgHpd1pf4n45FmS4I/Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731815154; c=relaxed/simple;
	bh=77uTq5wmHwy3FZWpqhxeCChC1elgIJwVzxlUEFkEWwY=;
	h=To:Subject:From:Message-Id:Date; b=hekC2pj7lQg+BmnPXZrvBs9mJl6acIRE6ZefV1OWvsJ4AtuJCNSQhT9LauO72aId1SVytTqH+XaAPlgyy52keD8slBMPZbq+uK/CjiAGM6BE0wTEsi6tUAAQr+SRlqrZjRlbB4ozvSSdMQ4yrH8kbWFqIPV9jTaoHB4+Fis7CCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FucSlaHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FucSlaHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29FAC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731815153;
	bh=77uTq5wmHwy3FZWpqhxeCChC1elgIJwVzxlUEFkEWwY=;
	h=To:Subject:From:Date:From;
	b=FucSlaHnubfBhh2SnlEg+I1MA0FU/wNNorJ3y197z2OroKu/Uib0PR+i3OzSDbTr4
	 JSq8RDEJayJFLWMyVn4XbSTM4hAVZB6PbN+CFvRrnpSi+xmHb7jojv0z5HzabpLPzE
	 VFOth5/8xpPTmHyoCdW6bmBfAZvKzqPyfHHH5qG6ihO1k0LZanXMjvYJIvY9dJWMfc
	 /NkI4Eqzqj3Vn9Ornx3p2BLlWtCP0J1ddW07a2FlKeU7WsZAPFMt/OecBOCsCaugNz
	 KmZMRZ2vu17xVFW5yMh20QeDjYc+hHH8ob2xTbQnqDTYy22Lv+bLehoClotOjz3cgD
	 XnYfOI9mFs8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2BAD68BE2
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181515361.13464.5728387116563518037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb76d95a56ea05a18f7c0b3d5868c53aa9b5e1321c29c3089b3642795ec52032
Date: Sun, 17 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731815153
