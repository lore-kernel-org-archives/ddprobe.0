Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEF41A0BE1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738926354; cv=none; b=pWbZica20zY3+No/NVW1+/d4vk82jVy9dcP0s0wgJNVf5aLn0Q2eXGu0NtibR++Da4tYbfIu1yC5a7HY7yvkq77o+KA4R+rAb275ZsIoYSNS3C9ku7m6UMWnMGMEkWvfYifKbEUXVRRzFpjOAMxhZnIQtc3ayJMQhKEoRTeNfjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738926354; c=relaxed/simple;
	bh=CxL95B9hnOA4HebJP9A5Kr4Y1XpjAzANQnOvvh3tVTY=;
	h=To:Subject:From:Message-Id:Date; b=gqLUKGz072nf0rOspmT4j61mNVE7HHL1/QYJWOOlltRe2/Wo2+P6jwLmTHO8ZHEmWsiMV/izMqJBpdF9WlpmdZI8G1y10ntB2lpq4xaDRJ/D8sdFBv1tw7WjrkgvsZSiL4uHuJ4fjmcQfPhp4FDkvBQY2dTy8SnlEKYJLCcefMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf/yTdwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf/yTdwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6E1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738926353;
	bh=CxL95B9hnOA4HebJP9A5Kr4Y1XpjAzANQnOvvh3tVTY=;
	h=To:Subject:From:Date:From;
	b=gf/yTdwWdgn0rfVfL71WhzorF+mJ3A70ldFImBOYPprXuoADbFuu2CE0X1clk7Myc
	 g6osTUPKS/2j7bvyr2V817RXc7G55T+PNA+mD8Pxd7RanPyka53JGXw+d4qO2Uta/V
	 KdYMjAWmYgTV8ydDmhEBQv3D4txjTsKI+x+brJQB/ZhfFYGGjE/i2HS2ARct35Hvnc
	 D1WE9nehH5WwQgHFA9drdM3OPqUDp51JCwcrnKP+Jgml5GpdNP3EFdSx1Ilo7Rw005
	 0lvmUUx9+wwsaLZ4cCLcrzawiBwTvG3k8G5bVWBp2glHsHT1BOrhzsmR3zN+6+PL/n
	 fHRU6O/KEXBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AD2C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892635362.16716.8967463507125632454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7bda63d787cda3ccaa934bcf1007b775f55bf2d85843aa7d3a1a0c24c18410
Date: Fri, 07 Feb 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738926353
