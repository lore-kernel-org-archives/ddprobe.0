Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279B738DE1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758943794; cv=none; b=tf8HxJOndTleqyzp2SSYwgKsQXEz8NPQlSqKJAlC2+/HF8O4G5uOX/4ktz9P82BDY63p0SIj/oUW63fMru55PnKZKG1UZTcYFhzCW8kCgc8WlVcHHiDQ9BhFnyBG3ssC3mI+4dW4UT6VUYL1Y93jLAl8ibdUh0E0CrO+NOj7528=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758943794; c=relaxed/simple;
	bh=6bpRVDXADjgn8j7CSsn7HEy59cyb7MenOrM6XtGESxo=;
	h=To:Subject:From:Message-Id:Date; b=lAO7rkJ3WXRZM/adjEA+hsfYE9XGcT3PoRyTk73PA0cUmloYmxZO0k6L011TkiigcJa9gKjkSvWmEP75Vzuo1Sc6UILQG8dhxXIGJP4PdTbLGhyPL1y4WqWrzjDGLrOwLbIV7nnslxHGPCRFSNFkUKLZ/W+7dMhO7A9f9GIVv1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzmr63F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzmr63F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758943793;
	bh=6bpRVDXADjgn8j7CSsn7HEy59cyb7MenOrM6XtGESxo=;
	h=To:Subject:From:Date:From;
	b=hzmr63F30Y/5V8Qc+R1K8y2r3YBad58GL/iJXWvByNVFGGkyDgLPm4vhXM86MZ/bT
	 GjxsJTwqgkT8cwniAkZL03ggj5Q0F/E/Gzin6aEfqIBG5orljp3txI/XpALvWzOxFs
	 dNEKaJkW5It+CtSFccgVGs7zsNoFmTeQfpBCHHgzNvM0cwocF+kBjpPYmiMZNJs/Tx
	 eE8vK+CoLMrPy3NBbF+X/R/k21kMEtepFF8EBMJHzBlko/l4R/U/k3TEMv1wKJKrXq
	 GwPywpNOSKuj2R0W0y7Mu/PHpDmgrNNwOYfYcDs/Joip9/TtvM5r7ghpZ1lRAGB+8+
	 eiGthwNQS1ZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894379358.27348.6769103895283020439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef6fa0e8d51a658dc7f936f741b7d7e3b1f26669b8d4a99a183e3a66339b262
Date: Sat, 27 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758943793
