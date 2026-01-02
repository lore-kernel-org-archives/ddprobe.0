Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307451E0DE8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767327834; cv=none; b=bEdheA6TyG91ZdUrpI8FR6hK7O0scxl0l/sOtul2JFLXE0PWbWIT8InzTDOE4izo21eAzxQJLEYL86dw1TCAXChoY0YNrJtzCVGTdH1TdlYn62Kwa9Rs6ZDpoGia4CJmCSaG9Sk48XuGA5jvE1xfjL1LIjm0xq7kXs93nWW6pPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767327834; c=relaxed/simple;
	bh=mkc7BTKHInKI2pZjrRcVzMeea5Tnhm7uaHtobPkB4JY=;
	h=To:Subject:From:Message-Id:Date; b=WzAM1Ylt3itTTMf9qoOvCRzkwai2OJfyInZQm46b38QSFBE5Gs3eR4TrR+I68zHh6EtphBH517uvh5ieYr7egUsW48h9YniEel1I4dNAFv6rRwbpSk9b5k2GQp0uWcd1SQBDrpSF252I3WJCw5XZYTvw1bU6KJjYK3leNmbp93M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYpBeCo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYpBeCo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8815C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767327833;
	bh=mkc7BTKHInKI2pZjrRcVzMeea5Tnhm7uaHtobPkB4JY=;
	h=To:Subject:From:Date:From;
	b=RYpBeCo5OErlQKg2Ziqd8pOFUz053wwCNgh/vmAUiV6UCrwnmMMGDiOxd4nyH8wXn
	 6wfeagPfh0FlUv0bFi1ODBVqVU5jqavYXQow9IA8re+KlqpK6Dhuwib3Xku3xjjoMD
	 JFS2mlf2/LonP6yAQfNVKOfUekwWwXc1CKFWtONfMBYxSPv9w6K1iBZQ5PqqRlBJBY
	 i3QLRELwBbuHgvKwUPIRkltZnI9IpbwJW43z1OS/Ne8JBaU6YNmcZImR2Hgvr5rldF
	 sPVfJ0gokXKmVCPm5WWclMY6LoyewYOxK35/SoaixugNbSFGd6P/5Yc/UWoE/p2IEk
	 IS2GmWMSJWytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A4CE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732783358.8329.1068247884454132406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f612704ce2393a3f907b76e7959818ac67d7e794864f8fa8384b8e511a2261b5
Date: Fri, 02 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767327833
