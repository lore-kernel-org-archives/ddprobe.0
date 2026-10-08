Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEA13D16FC
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791457834; cv=none; b=UC74cSbKIfquZNDcxUpKSgVaafEMSYR+wdu8qt7a9FL0qazcnd0LUGlVsR+S1YQrQsehFmxvALqUX4M69WViYb/sjKVVpo4dMZMCgSeJ+J9/fqijLA10FzhAQTPfInliUFvfpKO+gkOAfM4x77NV5tVsc8O9MjPOq0p/XILWKec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791457834; c=relaxed/simple;
	bh=ECyCbpEiV1m220eY/d+8OvmMJTUW7jlvZrAdPK/tIag=;
	h=To:Subject:From:Message-Id:Date; b=exYBEwWN36m0iYlwM9dsEuAelM5oNTiH873T5n3oQi51NNtTKBH+aqkFDFwi57YMjJo7OJ2mcrSckEuZ2Vv3yOOy/CYv+4pYqRPe0sA0kL3qnSXDndkCuxUYyMNNwP3Q1Mkv4s57+zLgD5ZMJFQZqeSoYSIPcRYwZDLKkFntf2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id+A0bfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id+A0bfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA01FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791457833;
	bh=ECyCbpEiV1m220eY/d+8OvmMJTUW7jlvZrAdPK/tIag=;
	h=To:Subject:From:Date:From;
	b=id+A0bfRoWILYOSPrjdPSDepwykE1GEcYEoXiUSgWslBdj9xOH4KLUvPJPiIWH7H3
	 a1gKl2L57NLwev5RVHaNzI7VgV2XyuKeeBwZ0x2H/eb/ekozR3nt71k7UFCMIzCa6W
	 mQ+FltW72CF+YUgkOFfrk6GWpL3K7Iz4d0WeGKe8OskDrYSDULE5mVg92Nx1UrFcD/
	 2QvvBhpD+0Cul288cL80hAR2JZVo5dA0Oiv7zCqohZAcIif3o/jEb9RQ8S+0EhKZ/Q
	 n2VyACV6JnGrInUhNZc46d9WgHWojPmpbON+1FEZ83RylaVnK07Rxp8qUCq8e3l3T3
	 ekPCw16wqQdEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF845CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145783370.22397.10732444043229837114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92a8c3e54aed3ad91f5d9d423b0bbc55c136902e8131a796db354910840f3fe
Date: Thu, 08 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791457833
