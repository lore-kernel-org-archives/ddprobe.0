Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6601E3DF2
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758981594; cv=none; b=EZB/d/6HBN4cOFaQ6MdfGBWbyFApJHZa9PwkMh2Aa5wSmcvByCsI55stSnfEYt4L6gMC2455pW5nFXdQFCgCu0R7pkqO9W+8PPCSrF12/8vcXqvQ919wLNyu186rK2x7ctuXVkjbL/0xQ2AUO/paJdQsTOQskEp51+6BJHJoeHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758981594; c=relaxed/simple;
	bh=sqK9vlQgZAqdhz9wiIPC/nuRn/Xje31arUBSzX/BDaY=;
	h=To:Subject:From:Message-Id:Date; b=V/rLfwagwqeUwrsAIpPtiE+caLIPrg5zR87HIsirV1WL9li67WKhwOqE86VxfAtBVXpunHg8v8rPz16ne+eEYxFxRSbNxNhdh4UVtFXpA3wXaWgtKqHhLCHdn5FpndacsJ8+D3uufOWroM6wEGSHErgks3vhuVR+74HzvF/z5eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orOUg8MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orOUg8MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758981593;
	bh=sqK9vlQgZAqdhz9wiIPC/nuRn/Xje31arUBSzX/BDaY=;
	h=To:Subject:From:Date:From;
	b=orOUg8MNHvnETNbd+cYBYJ86dxYQMhGvIZHBwgH5Kp0XZ6Pca89NE6XcNgWwIEMfx
	 8JMPS3vp2f6p3/dSB/z8ZPnPlAbLHtSB0Jq7FxK0MvkqAGtwfjCDvOq2ARqUwW8UAP
	 lq9/18wA/WqvR2ymVTZ4YZhghQMa5DqmsU7llkRGwCTE/V+rVGGEF5Uuy7tZ2wdHxQ
	 5SJ+2hjUxx5vGFeUFfZsZQ2t42Raneqp85O0HsbNWqATMJxiPaxXrU6/JYe8UyuyZl
	 Uo3fgUGy/EiLK3kS4JxTL6N+Dyk35Eblv84DmboLbOTPKbQCIk0wEzQHYd90jXSr8v
	 211COuE1HQZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB64CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898159357.7689.13588752161671805371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a03e4a5d8ddf6de86d2d74627c4dd03502c9029b922efc6b3c9b7d5d2ae7629
Date: Sat, 27 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758981593
