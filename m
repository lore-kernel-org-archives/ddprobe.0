Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4087F225D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742762994; cv=none; b=RMBLFP4LMWDySJR/1B5N1F3Ctj3Y1HXdYdzZCScZC/PPtnQFgxdH+9W3Mq1Cp+PqL9FsDGSjiEcvLHjPN7EnF1Jn5XmAmXPHPpxZWGOMagl5GTypT/R9jQzpd4mkKsyVoob6JB5JiRdfEyGVegC9Z3c1akW+uBTc+RLznfo2tqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742762994; c=relaxed/simple;
	bh=fblwgNDSUYDT3bzeqsZWsZHseDtNcGPgpH/J82KWhGE=;
	h=To:Subject:From:Message-Id:Date; b=oQIqv7af2KkWlSW+H7efdikiRJ24Mun3plgPn5WrxLQpAqAiqaK0+RTDMumrFnzSJ3XQ+Rdp5gdX4HQPP1Fkt7F9syvI05BP4fqhV3llrxFXu/uT1zZKJ0UOJumA5/X/YOjpOw6QxTatN969Kd2IAaVUdWRv3zZsvy2n+DfDGbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAm0bUlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAm0bUlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF82AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742762993;
	bh=fblwgNDSUYDT3bzeqsZWsZHseDtNcGPgpH/J82KWhGE=;
	h=To:Subject:From:Date:From;
	b=SAm0bUlT6wPhI3ryMm9EwY8kkgBqgb2L378p52ElCbBvvAdWUwe3rSN5zU9iIf7C8
	 dzONdWlhy4PQvh8mKgMQT7q0bH30drtSdLqidqepsVLtupKKf7ZN2ZITJQhjEKJAYL
	 lX71btYUkavNofrcwFVssiA0q+S8/bghlka2hWr6SG0erCfPlANYh3BWL/gDFGrSVX
	 pIjJsCuIRX6T/iEzdfXj3TmGlkUqGl47brZ2zmZzO/b6hBf+0WD2cfKgeARlbg3Lrc
	 eebKm0J27shDl3m+CyP4JGQ8D9DtAac3RVOnr+KjPey4PmWv9Qx/lruuWeGqchL6Gh
	 TVkHcyJ3BE6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BC5C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276299359.11385.13856482834759030526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad093953c09c9fd4e8f07c37bd9606f7fab567a8cfb6ecd8e377a22a12bab836
Date: Sun, 23 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742762993
