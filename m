Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A31280002
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751388594; cv=none; b=pNM6bPT6KxZbwQWbTaRNg4hFvLXVY6A/KsjlBwGcTt++w1HU68YVg3azy9SI13SwierqFYcbgNGE/3x6FekYFX82uvp+WOQB3G8/W2dZopKu2Wgg1ngWUlsO3sMIP5RQboM92d2+B+QM2rUiBdliGs444Wl1fcmYINWTEafma6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751388594; c=relaxed/simple;
	bh=izPf03qWevgoA/8/fab6y62DKjwQjynwI9gfpR0nPcM=;
	h=To:Subject:From:Message-Id:Date; b=k2vaizdIAOc+TBh9Q08fGn4sLU+soyODv1XvGI9DbGit0/JXfWk3Nuf0VqBjxoL626PN2nvk86N/PpZi+aWLDnpsVZNAKMpRznG9bCAr3a7eUmvT7p591IGy03MwgohxbrZ0Rdp2zE7s4ugOp2pUtV2JfbjJuAO1/19PM5NKOaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNqnXO74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNqnXO74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A026CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751388593;
	bh=izPf03qWevgoA/8/fab6y62DKjwQjynwI9gfpR0nPcM=;
	h=To:Subject:From:Date:From;
	b=vNqnXO74qljkD4QOfC+Kzzs3Z5cTxwCMZzNS5cub2kQBG/1aX1e8eqc08fukLtXLD
	 n7BF72ORK/QBUKX9xvutOnllTT/mFR5/waSIoFAEsAPWCCOt4MqYZ7I9S+JUHby5Ba
	 MTNPBzx/uISJ9NFDXilzs4MzoyITUyl5C7IZVqzGLusQoSPOwLfSVB14cs1Gt0PAe8
	 Jjlc0MvjvKoeANsfC4Axd4PDhZdyUorBDwlSF6D/IH9weR235BaXSBFJQxq7FufpMe
	 Rn+o+JyWmMVU8iqBIq4tDiDNkgFQsO6gQfUJfL0QbFJXQY+R+DeEj1eYP3fxaw9wwm
	 T9YCgNRjNdByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90795C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138859358.21623.8456677142537664962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3f0b3e3cb9bf08ecdfb1f1ff42f7e87baa4dc4870f810c8e2dfe535bf46dbf
Date: Tue, 01 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751388593
