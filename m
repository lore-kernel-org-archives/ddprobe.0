Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1BF35E522
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768826634; cv=none; b=MT4qu1nqB8OCRyD0cARU35wp0Vb618hwUHR3/4OpufkF/6e/LwAXQDopXOG/ofRjs9tzDCuAi0LKBIcjeSxMgqP3EuzJ5KWwt1HUbT21hsC7d1s/lqSNd0FgYUWihFIE8kHXtAZIZl+t/FcNXXVsQ7AlQTQP+fJgziiQ42Ezri8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768826634; c=relaxed/simple;
	bh=doEVWEIDBDlbuCAPd79flw9unQifRc6pnCgFh3T3Nyo=;
	h=To:Subject:From:Message-Id:Date; b=VzrkA6i7PTL5zzvOSPObTwyWMFJ+WXmiKou0EdqYn5WcvWBVxAx/25zhf5ZvZTKDyei22iIBskGyaKpDIKjpG8gMGdouT/RiitagxaxPrgO/0RMemxkujaaJyiWxh87nkDxWtQeTKzKElXJYU309iPsR4fpIMyb9vO3yQCmG6Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZnBSfbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZnBSfbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F08AC19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768826633;
	bh=doEVWEIDBDlbuCAPd79flw9unQifRc6pnCgFh3T3Nyo=;
	h=To:Subject:From:Date:From;
	b=RZnBSfbVI3/NQ8DAw5tP52FHBbNwrlGjTRmqGaWa7NLDueCQ8m4dtwpE/+wmR5GN7
	 y7tNnCbGvXJadjzvY3aPfPBuqYI+3rHoeH/f2+IQFHVVcdOX0alA44urlBBJHv76O+
	 i3fjGdfRs00r4041POnlPh9S8tekzMqJTC1CT0odhTCS+eAx7zV4xeWGABJU4+4ZMb
	 gClAz7LSb8O63geteWfRp4sOMlsIfot+Oz2tTSnneWC3d6Q9uvUM7vaaaSVG5Tpfyg
	 hpESLrtUJPLHkIlX5+hdfOCakYs3NhCZ1/bpqj7ivnbICnS+w4TqiUDvW1s5X18sA6
	 EMQfhoHOgPiLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE8CCF2F8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882663358.5659.12173891187233041824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3e8b74b6163c5a960d9553da251c0be48bf22510e1b871b805f5703ded32ab
Date: Mon, 19 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768826633
