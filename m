Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F817BA1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749285594; cv=none; b=YITt2pAaobyatvfaMTc4OZTnH9dxvey1YZS8wK62+/jqinFK+SnJfEv8UwBWWsCyOWeF3DyRdfBklGZMOEBCpOu4dFURLbGIdvfzwRDDkKA/1BF5W4CYSBHpn1vOB4pfc1WRzgQ1uOFfyqkxAK2h5msd+7TBiCz0H3kv5XC2xoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749285594; c=relaxed/simple;
	bh=NTFklcC7k8OlqqA0ZeQFruzageD2UcruRoTVieoLDFc=;
	h=To:Subject:From:Message-Id:Date; b=qOg4FSDHLv/UBchYUrRyzHgf2wrVUEhQ51Uv4G3pjm0S5LXna19OgHO3GbvdYBVuRLvL+Z9NKBvq0OfzvAydWzAuYSGsDwaZt7PmlflLyXq1Yaq3TvMhIbVAU67X5o0KyxzKuoPPE5oRfEMgVfMHbQmx5i3NYhnEuWw0E2o5zOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUqTsQpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUqTsQpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAC8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749285593;
	bh=NTFklcC7k8OlqqA0ZeQFruzageD2UcruRoTVieoLDFc=;
	h=To:Subject:From:Date:From;
	b=YUqTsQpeYzxrTsqQYDPF2aW9qEOLK9OnUUH8UoFoA+D7t/aF1ZNggi3qZKbKQi+AH
	 U4J1bUDfOgiMX0ZN4hu1f49MsXnWXU16OH1j7v6wldykV2LpJEGU4PaQGndMLiqAQO
	 oLleudS0KMI+dqNDoa6RNgQiN/hHyRKRxHKS5QZad+Xb1t4Xz0UP71lABEQU6fO+H+
	 nwaloR0APGWizIVcEiE23jzHRuiOIwnRFYwCfJY55znoFWqSMlaFUTMKRRIM9gShWP
	 VaDehzNl5UVBkD+83qb1U8KIsHL/Qn5FYP79lAiKqXHENJMdyeoSQ2HSxngEfQBOr+
	 8MLY+bXm/YJDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F23C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928559357.7176.16218906654030518851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59c3708d11d6649ddd6c5f4dcf2526780178b7d77dafa99946b4c8b98244614
Date: Sat, 07 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749285593
