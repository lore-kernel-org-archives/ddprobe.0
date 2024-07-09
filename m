Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5CD1553A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515383; cv=none; b=IjIloSUF0k3NrFd5LpxwdRD/Ox3qKLaBAhTszgs9wwCr8jR9LuA02Fl+rHN8Het/VpFlcJnBs1YTPZxJwUeumUPu3eCtLrAzOuep0Ez8RFLA/BbZ/PdX03qrar+rnfwq9KBzsxW//P/OuH1OkFuUxEj8ZrWpqeN6wa4ex6iq1iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515383; c=relaxed/simple;
	bh=p8aGqc8b3GeNKvKUiOylSbsgVI1kdIAHM1nUd7Emfi4=;
	h=To:Subject:From:Message-Id:Date; b=tG+TEkCgd27NofcUXLVycVi+moHyvzexEx3K8h9R9c1djY1ghdInaxyr+6DX9tAyGeSnj297hg9eq/eWTDOvfiW2Dmz33HmtUSwH2tCqyzUOc7rBJd8IXF9wMXcDiSzsC+nELBOFBXkisUJ2qlqjH5TqM7NISiVLOr6C/vjNiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDITE0dV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDITE0dV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5031C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720515382;
	bh=p8aGqc8b3GeNKvKUiOylSbsgVI1kdIAHM1nUd7Emfi4=;
	h=To:Subject:From:Date:From;
	b=rDITE0dVBR4InfG0UekxynM6ASmTWQfGOpaRtl1/vUOOd+YepwU6AUNHx6N/5TkJ3
	 +aAnwY0535lM2QBs8uiFP4hpPYqGkYtYjcuYQNg4OpTZ6NjRcz6ItskCQVSoLZovfL
	 l8TjnLAESioX8dFmvUFgr2MYxL5frhI1Lmerpm2Rue9quAwKc2+i2g5bvMaQp2pJpv
	 jdw2qBye7MlhLI5vr/LAzkLnje+STQLKpXAfXdsBSJEHZTJ1gT0jeA0ApXT4tKyABK
	 glWd6+DXrcGLdLGYNGi25fLCvtDIS7/8YRA/+mU1I2HNbCYygoVZO4BkLmz/sCFVAd
	 o4fC4q0lrGYqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF7FC3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051538282.17440.12385961078151450217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f80a3af57b597a9e775e4ac66f81c265f5bef6ae5325ed5bf5699c282f4aab5
Date: Tue, 09 Jul 2024 08:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720515382
