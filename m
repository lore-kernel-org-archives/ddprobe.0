Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420A4349CC3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782921514; cv=none; b=YSFvP8Ql8yx3lrE3Fvq8eeaYNxfPCba0bu4YnMY/MYZy2L/MMz56P/ZuH74956/hUJrFCTMPxrhXHT/QTjctpsg/M2MWs9ll1H8ciPFqpYYptyjB3qIIVORQVAal08R7LWM6v65YOXmHC49G+GjieH+EpPApXugjlLHtukMRX3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782921514; c=relaxed/simple;
	bh=5RklyxlUuBizke9vqTI4sb4zh8t/1iMe2/GJRxU/KH4=;
	h=To:Subject:From:Message-Id:Date; b=EmWXYKAaj81qh0OcgA+MWshU0BqPP5cypJKTNPuMy+f+mT39hGoRYT7PH7RvPpxSYBSFt3DrDtCWjv6/0pSfRXb9T+e1UR7HtX1ZOPBr1N/dhRHguFrUyMqhySPiR8ucjXIUYfZFZGgERvRaquUz0sqdWYgyIpEfYDAhRX63qZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6gq/U0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6gq/U0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BB7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782921513;
	bh=5RklyxlUuBizke9vqTI4sb4zh8t/1iMe2/GJRxU/KH4=;
	h=To:Subject:From:Date:From;
	b=A6gq/U0lWQZesAJ99P3hsB2HjsenfKhISc2PInt46JW9PEpZJZMT5PwEWKs98iV57
	 myrshk0Ncb/X/jEikv7JZqim4P5ek2HHh0EUQ5vcfDhk+qxoc7hrDwerq1+AA9WpeL
	 PDtJoY4zqP4ULCs0Xlg2TvT8pF5ZycOrpbxMOvzKaehWzYUfUXjs77/jrYfr09xenU
	 LS6Z1cvLtOMaXz9GL1Vrusi/wMyO4z4q3IVUXalhqzd5fK5/vTKTg6qiG/AWaZhyjR
	 71tB/neGK3MQ0l5ZTzT9MDV6T9xnzrRvW01AXTvCe/Tvbl56NlpG1O/2g+lfjAt925
	 ItTdBxZD/ydhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AACC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292151368.21068.8232425124078085255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e02db27a018af401258a8f9a6a22d48df0c9c79e64993a811c6841652134ab
Date: Wed, 01 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782921513
