Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E957032720C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403494; cv=none; b=B1vGnMPxhGnqwKHBLf8JwPH59po1gr2qMqoOQKSr6gaelSSsHvRvacD9etxkn7HTOm64LT7oOV1Q+tWl0XTVpFjVSJhJFB+OgQCWEO8zla4iAn7vIZKxQBjXLfpTSmthqRCU1kbV60fpSgUDbb/fFPlLHl7hoVgpxsUN5nE8Vsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403494; c=relaxed/simple;
	bh=IY7DxjFjHEJKf0s0M826M+CLwZAjw+FL3E/LbMMx96U=;
	h=To:Subject:From:Message-Id:Date; b=HKthwVbU0PgzHhnFhKQDSPQm4jHqzDK3GH7zHIbyiO1CVl635GBPEE+EYxV9m4+HFl5d1Ls7qPPF2ZorbMIQlkbqQSqqUctKXLOILFIXQ3CG5s77u8HtknYp+EzoZ+JeA5Hb20gI8rtUaH0UffFU3OQxIsK8eD/CZF7yAX0IGCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouiWrhcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouiWrhcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773403493;
	bh=IY7DxjFjHEJKf0s0M826M+CLwZAjw+FL3E/LbMMx96U=;
	h=To:Subject:From:Date:From;
	b=ouiWrhcKyoM/1N+bqplZT1qTg1f0hm57aw/BCP+IDiOsrMWdYzGNhGKDlaMBZiiER
	 bMLBu4OyEMwBgpN1KNZ9NPuaWyrjmJn4mT1GsstANHv4V8dsPZvYOrXeb8ORSYKC53
	 GqnjcrJTk7yC2OYHLn3+c7JMS88e3JmA3J7DwbfitfSe2mztMSgqKUwBgEOPcOYcEY
	 PqXB+Y/nDT0q99qyFhoqGYBHNmBNK/+qbMT8g7Xil92hLWodumwlSoGyr4WEcg6Mni
	 DM6e3llBDoWg/CMumHeOjkla37PWWo+tVxD9AIX/THzol0QmtOC74inO7lFYUF+jf0
	 AibCQuMNCDXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F5105F79F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340349359.10542.2499591055012987488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d2ed2cd91bd3e7a504f809e0e8c0fe2ae21b757edd5d4b988fcc2b72137a86
Date: Fri, 13 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773403493
