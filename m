Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB622264A7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765734774; cv=none; b=aofIlgzV48dWXS7j4mnOnNm995bHhyfGtRcazSfwQIHWp2c+Lq0lVp1flE63vNmfwT3oq1TZLN3GvqBMPE7qK6cxsayoVWZamdF3xsLKnC0tnkVaU4dCJ2T2vUpSueIOcDkPJIAcUSaGbXENDGK8T7Ie4SxqvD4sUER3m6TrkXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765734774; c=relaxed/simple;
	bh=6UBZzG8m8nQ9F7ebzrxa9JLvHcrq56FWuMN79DIyK6A=;
	h=To:Subject:From:Message-Id:Date; b=rxE7H05pyeIW7Cohie1LT+NNP4Jg1TLhPGtFrmHfiJxBxfVld+XEJaP1H9C3l38Eu44CETAcP/Xcu3ndi///m56qVgZqpM3fsMnvyoTj9FPT31/CCG579r3HdAtaTSFlcw3adZTNg4szOO5pQ++XHKtY0cwRUnwp5KeFxdI+ZDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/R5rVjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/R5rVjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765734773;
	bh=6UBZzG8m8nQ9F7ebzrxa9JLvHcrq56FWuMN79DIyK6A=;
	h=To:Subject:From:Date:From;
	b=Q/R5rVjlN6LwMOxykFjKGZo/GvUgLeEYZVjTiXP/3/cJOxkiZkkeq1wsBr5nU7QVw
	 v79DRZDSVNxDLA4rN7JV7FW8b+CgM7L1egBj+1fKcOM4nboDgz+dbVqYayNuygZX2Z
	 LihFc2GxR42Ko887L3blZUAm1NF3nb9+YsLrE4yOFFOkrOoAXwcKZ8ZUIVEH7nFCTz
	 blSDC2eRVqHdE37+Yth5xQvbwsWCp1yujKvS8/o2tSOU1kdqDcVC9KXq8AJvgUycHG
	 NLIY1t3RVNONyA97OzVDgwd1L0o3f5npYJuFZJXwlJrOG+Jz+XWbxvYDs9EvsLz6jV
	 SdCHH9DbUVfrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E9D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573477358.30658.3642835492300125144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ed08a7f981bb5ac4df33db4d41b586c4aa9a0c94864394c1d01cf5eb31b377
Date: Sun, 14 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765734773
