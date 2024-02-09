Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0829E8493
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707467297; cv=none; b=pV64JzukzOEv8K3uErZZF1Yp+cNZOTRW8KC+E2Bn+7ttDLHzXSjTK8zlCiDWEu1EmzV1ld0+KeEzGO14GdhdFrEZkJOxpfu2Kf7uFVU2Zq3kZ93rueEz23r/TNydO3R6t3MXlCObmB3ZY9Im+v56aDNTeW1GCjJq3ZfVNVLBUtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707467297; c=relaxed/simple;
	bh=ixj9ivlN10YnIvgtcUMWO0SYBw0Xq5aoRdlwUBtjh1M=;
	h=To:Subject:From:Message-Id:Date; b=BQQzzoBlZKbCzUFSXil+BGUlVJxQz9XWdZHcSO5ZGu0qF4EjaKe72nOfSNw3RxZ54IKZZ+t2tPjMH0cyFSNkYlf1tFS1bOLutPDM5MxfY4XRJF8LQQdxE21PXjyNTk5Qs3Px2e1gRRK7IKScQHiKXoZlwefDha7R57RlfPgzGN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJv7G40U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJv7G40U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E87AC433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707467296;
	bh=ixj9ivlN10YnIvgtcUMWO0SYBw0Xq5aoRdlwUBtjh1M=;
	h=To:Subject:From:Date:From;
	b=AJv7G40URl8KyLSKy6LzBgFxTjN1ULyACjJfuczZB/P4K9fjYFZP7I7vK/wV8U6Ic
	 oM9LIO0YA3obXvlHDVdzyIswFMvKQHypDKcUGJVODqls8JzOY0ti5HMW1uRJspOfoQ
	 /KNXjZwG9ct+zTdochxeIuM6mJmZAcd2JBYl55ITfd6yn3PvC9sEmOcBAC9LXPmMxy
	 vRIE7/IH7RWlVP2xwpbHJlAG2P/erq7ooBwFjILAp31GqnNAy4ww3I6nkJzjMxETOi
	 4tiCCSKxRaoqE/GbJNStDbWf5/4rPAyQRro/USQRIA76H2Li/n1wGmyDsT5gwShc6L
	 vT619YJaFpCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61878C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746729639.28942.945425923594904168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03bea3039d1b96dd5013c0dcaaba16abb4cb0179c76f191c29d97aae40867ad
Date: Fri, 09 Feb 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707467296
