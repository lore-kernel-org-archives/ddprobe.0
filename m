Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F8371754
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715174543; cv=none; b=ZSNE7dcEVjK0Rfj+EXkEOEOyhEkcouW8qXWzgbXPR6JORMbFawtN7khjSxHdazuD8L/QD+/pDJ104vJLCcQw76upr2GJH+GjuhLccTgHpse4dsCqRqdo4MCGEzmsuiTpZaFdBaarOk+BoM2dtIhg3wNlM++dcPysNZjw4D3af84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715174543; c=relaxed/simple;
	bh=GX5xSSH4H5QDia8wX3gOD6VL3v3lLwE7t8Ehk51A9So=;
	h=To:Subject:From:Message-Id:Date; b=Zbu/pWUFjMz5yl4tZIP0lKhhCVFh+15X9WK7kqgsOcAVznPK1Gra+KRUPVrvzR/CHgsfzEl7WxcihaoFMUe9NiZio/o5mpEW1WqOsu7x87RFXDblRoHzkXPBEU6FsmNBukj0fD316mZ01umHJ3ql+ItBegLyPx7ajNioHLXuQbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvtPVh47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvtPVh47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66A7C3277B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174542;
	bh=GX5xSSH4H5QDia8wX3gOD6VL3v3lLwE7t8Ehk51A9So=;
	h=To:Subject:From:Date:From;
	b=tvtPVh47kCSZi84Qjl8p27epeFZdysTUfkd+gxT5BYihi16dIw9KuLItUD03At6uv
	 7drdvF2X4Y1h8aO+twS/depyUNfmla3px0VwWMDCeFViHj6soWwSxgDjEVYrKJywtR
	 dI55m7rLTgrfsdVjFbSafY1bZVYbW9AMNRXAFYuc++cFE6Dhv5nSgayJkrj42rtbei
	 SL5LFwcwWwXS69MHMq7nbwJ50U6NS14zDTiI/ZaDWyBwBl4v/9m4Ok59xPUpYYotKQ
	 bv1/kQcGxayCchgRwximJUUxUx/lDi2XA1rpdRJePMnpD4g5VpBFbbYNl611aVrlk9
	 FsRLSxjlTuZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3651C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517454278.26754.1107281292203883496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcc4e9f803599cf81da90787fb1cfd6f94ebc168d2d2dbb65ba586d026cee48
Date: Wed, 08 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715174542
