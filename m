Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B561A2645
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737231954; cv=none; b=XqByqFa+pYBVCYE0l14S1sZ0XJry2tN8e86a60MuowxqsAsVlaFG+HPpwuNrWAZNiGqYqWgqd80yL05u3nW5aJ8Tr288gzWVvaFTpWBSTz1CY92QL80kl2QQQdwfD5s4m5ZWNRJnu5xaVXRFF2BVXyyaABq1vw2IR0HLK7JQHwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737231954; c=relaxed/simple;
	bh=jokUdQQcIYg0Si0S27Ne9tq77BQ99dv/UpfooOlb190=;
	h=To:Subject:From:Message-Id:Date; b=E8MziHcGeYb0g2ue4f6HGZwmyuUryscvMpoRs/OEN0BjXLVOltekBLffGoUMkjyiuBX0ky/tQxZm3TPr3KERsYThhOFr3tH5FuQ367kJt2/J/CpZkSgemrHHSS1GYLiI9b63UpIumj+qnjVUXR2wS0RWO/40e3pxzSakt30zguM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mjpdu6Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mjpdu6Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E87C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737231953;
	bh=jokUdQQcIYg0Si0S27Ne9tq77BQ99dv/UpfooOlb190=;
	h=To:Subject:From:Date:From;
	b=Mjpdu6OwySqch7oHnSMnd5OR92dhVB6muNzlr3tRwkjJgDcU4qlsD4k9BeCsZXZ8P
	 n90/F5Xrfc2tOSsd3m0rGvceQcoxoWpaiEl1A8xaF8zyo5eaMpSAIb2z/7FGkL0TWn
	 wV6ZL5iT1oyCheOi7WmOiCYqVQfdrH6uptN22IppD2khNJQCrqe8Uezhz7d3f1y8AK
	 jHEyghKeHCKNp7gIbLXL9EfmPs2ZKRpihLoflKznpgcd6lojiOkfUWsFb7Wh3wCULv
	 K0CqwRId+jXK+523FQYxog3av3rzLjtq1JgV2HTR9C9DHlK01jm+niGrTrXdZvXarh
	 j6nmxxE8TWxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B9C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723195365.19042.9314726740307456296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c257aaec80c8090adcabe914e062a3b72ebc8bcafc3df33473f871c59a58fd2f
Date: Sat, 18 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737231953
