Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90D46B5
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758995394; cv=none; b=M9WTv7B2QpHGg/bvsPKqUG/4ZEhmGojCQ1qv/g7ULbZPnGb+ebQwQEaSn+aRArHSWcA/tEgHRuzKRfUtS8R1lTUsp7cyboOAzx7bJGAdNY+5I5qxP9AA6tSj0RfYXJXF1woL8WnS1qSkcKBXI3409+hLP35FjlhRhQi7fq2QHTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758995394; c=relaxed/simple;
	bh=Dx1a0G1SLzme1Dqv4V1bR27HoHMfONmns8gfU7akUN0=;
	h=To:Subject:From:Message-Id:Date; b=ljxyiZOK/keWbbARFaP030fCAoyPDkPfeAmBrm7226g9DJjMOUF77eTPgDjncDjbmMqWYyD9f9ptxyRm2GM5CrWxAqr93QxFtmOQx3vl2Py2ajP1ekc0XarwYCsAq3Zr647CAd4ki9ikjZ1zEK4IfvN1pbl3PG0z7ZojOamsjHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X49DTtOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X49DTtOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7681C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758995393;
	bh=Dx1a0G1SLzme1Dqv4V1bR27HoHMfONmns8gfU7akUN0=;
	h=To:Subject:From:Date:From;
	b=X49DTtOMEWAIQFAlVSTCc88UYiNeMLJAxUkdUmuyIjVxHn8qVFAijiVQh0QecMy1j
	 wV1bzfqtM5GxtF06g1JWj3DAixK0gqlrZl62mYjxmNhr/NTMzKHocQrFowSl7hpfnd
	 VupjVJfiCDvy/COCRMqW8hDkiUjEjmPK9mRiQU9B5aiu6iMwTlZ6ykdTDp2kAJHU3o
	 y7w0KlVVXfSKepFUWlHO34jR0kCNDhTmd32jy9ujblQfkQ9aPdRbpcY6/Z0moFsE4s
	 NBPFGSG6MzwVZf/PIaV1U7OslVdu757rH12W3jRRSvDW0bH6CHwABy9OQL77J1NFsR
	 duX/DpEKnOXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971B1CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899539358.19105.10232572807764549911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5b44411bca5f56198f3f353dd3c0e465b9d1b7a24b8d86a35dd6c361f32b64
Date: Sat, 27 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758995393
