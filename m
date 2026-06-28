Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417FA137923
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782655114; cv=none; b=u55L8TG2JTH48ETQhbTzahFIDMs5AUZCP8ERLDpV41bMDbwDBG8MA4ALQv+2wuBNuHn27VZUzhQqaQa79mkvZ6UjU149fwmO+t5wtM5mPIaYYD+4Dm4yBIHRCoJYVgyHsjez5G3WRux9+oc9XFdvzUCmPkbbM10vuEvhrkg5JCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782655114; c=relaxed/simple;
	bh=h6ZSJSGBfLVpLbkcG1oyLNHEgRRBp0rzyxY2E7PlRf0=;
	h=To:Subject:From:Message-Id:Date; b=MG5H7BkkvdmJ3FoXTfrymHKCv/bXFj4wG+FL2M90vgWSpJZK4FDHXRHk3Co6PyYuKRBv0Yh4BttGbW1RreXvqC5FRVfPO17GSpAxyt1cpOgZYMdgP4j4AvcaBG7adp2pa0TxZmUwvgsP5oJsq3j644ucVnW70C+hGDmGMpUtclg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIq3d6mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIq3d6mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD58C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782655113;
	bh=h6ZSJSGBfLVpLbkcG1oyLNHEgRRBp0rzyxY2E7PlRf0=;
	h=To:Subject:From:Date:From;
	b=PIq3d6mO3Fxg0Nwoe0bKrcQbZuuwnlTcUI0J+TCkYqWLuIt+ZVt8eFv+iSsfsYA3L
	 nPqvarpg4IRgrSrtk0IRS+ypKin97r5Qf6kOYzkG+o7BH6+hhcxUPHBICh9jlWESr2
	 vZQI0qhs6wbkJ9A5TKzfkP6kNdClTVW5Z1i99Bfdk2LUqbU+eNZUBcRorIOlCXPXZE
	 B3iBfJF9dkV7r7+XDs9Mj5b8fJpflLN31Yi6RQcyQjRoeIYHx1p0It9RB1mlTwaMRe
	 JLW2zMxWz26dFQ5KEQjbFY063QwDEVzUb+Nf7SKRijg04pwf+lPYN304RkNr9cudaW
	 ncG/6KH0Lo2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B080AC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265511371.27785.10969426657276516135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a09dd1775439e47ac6f19bb96558d3ae45e8d778b4a31982a01c4dce2e79429
Date: Sun, 28 Jun 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782655113
