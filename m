Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E8C2E62A8
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743946194; cv=none; b=M06q54386UpE4/sWrZNPp5s3FgUfdMJrgipUBx0KHUorCaIitEty6N4pzIuP/1lTZQYFUQ3oLqN2bdYP/nf6j+5Q+eufFZ3/QVzbPR+4YrJSTydAWwkB0j4SMaRTwOJp6phzFmmP0d4xwaV0K34yYsYYLb0zTmzRpEG2nh8H8Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743946194; c=relaxed/simple;
	bh=v1zz7EcSdIe2pgijmeDQ3MuC5DzsQ4hZT1GIg6CcRpQ=;
	h=To:Subject:From:Message-Id:Date; b=PDQmUwydvFkjfa3LCohINGAO+nBkTlNW89FmE4LjK2uA52muSODcr8MAhQdNn9T16S2uh9F0YoCgAxNeB84GvyFrybvyDxl3JI7njt3cw13MzC2X9b45FVSfHSXhEIgJuqRHjbgNLfA+QEP7rnDX2ApYJ7kEmWaxmR6T6UuY5WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxTRHZP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxTRHZP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743946193;
	bh=v1zz7EcSdIe2pgijmeDQ3MuC5DzsQ4hZT1GIg6CcRpQ=;
	h=To:Subject:From:Date:From;
	b=VxTRHZP2UILjJQHDVGCqb/CxmvO0G4S3/35JMhpoGhB88wdAtaUD4SpU3u7GanGjA
	 GZq1Ft6Cj6+lnLWlLiOols7kW1vtB7waDybDdK+6gYGAABuKyK4f9jxEzeac1XHeHL
	 LcKbPr6ynMg18bzhjxWARqAisg0CrLI518Mw2B3pRYahuf/jFgda16vq9QZEPDR9aw
	 Ed3RgmwCJWHEeLvCGOdnH2qyHD37TethAggmVajxZYfutJ4FaYP2jzEeo0Chwv5hoT
	 En4gpWd+Ir7cAsT7TU02/acU6jmHweRL1sD8zra9JtSe/CdbZiQvQTNc1JaTyIksOd
	 l7Yezb7Fvnhgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9FC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394619358.23569.7624173734965839757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855c7b3fc7cca593b7d79a00d0bf1c7ed253e239757c0a28ec8f1d6961cfbf23
Date: Sun, 06 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743946193
