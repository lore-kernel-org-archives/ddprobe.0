Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C7430BAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772414094; cv=none; b=T5wI5bLeuG3BaEV0hHowaF7ph1xBPrHWqMJQ8zvOoqfqBgN/WCUhhush8zdG1jKjNFEVJlDrL2C8p8S0rtRfTvyQDxUM5WlN5fVBDpzfLV0SiaGbCZ97VBDF6vgq9SsSEPjLAE4o1qK8h24SM/6CZ8wTIUorBb2y7eYCA2wXVvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772414094; c=relaxed/simple;
	bh=tD8Z6nmvwrcBvgQjyXA9GBi96H8C1CcPLmBjISaSP+c=;
	h=To:Subject:From:Message-Id:Date; b=l12CGG6Ls24xdBaqtckdfxba+qEoBMTZnucpCOX4jdbOvfi4rxDonx9md9InHT8fxJxxYSPWK0fBZ0BuzhnNgQKBjCShv26Zyu40kJ/NVgRl9cDz1wJQfYZbT6+ZeyaATlcazcMniGZ5/WR9Ca8rXxCUnYQnMogskWd+HGBxMNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfbVI/PS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfbVI/PS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B94C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772414093;
	bh=tD8Z6nmvwrcBvgQjyXA9GBi96H8C1CcPLmBjISaSP+c=;
	h=To:Subject:From:Date:From;
	b=HfbVI/PSHa4/dnBmSb7vz45DDbIZqgg86VrsmxiumuADZ2yIV+SAo/UW8SbXyez98
	 /u3OHqWy3PC1XM6cdmMQYFL5yEy8FyWRlFzZGjAgAzdPT8hLkTqgA2iy5mwqsS7OuU
	 dGL13BS4wTNJfnnEuX0BE8D4GeCCkCf/JuQbgDR/TeM9OXLVXLrhRsh50Rq6GeeRMJ
	 7gPBwPpb4cFWV5F2UCDXubYSftvPari/dRRzeS2VAEdBE1bBztcuwrYko506TQH4OL
	 N6a1FS1scwkmgiiZTSXNZTyvPtcdN9h9J0uDCPV1DsjqqPqizFKISDedalwjZ2XNKy
	 XYS+CFoNT1PcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D6BD58E46
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241409360.7021.13059069796158753742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033406cfebbe49185fd9e54247b24ef926f322444bfcfe4e12b636330b1387dd
Date: Mon, 02 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772414093
