Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBBD184
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761985195; cv=none; b=DpJGQsCj0A62BpK7rk4N2u8/yifCoFNtmVxauZaqeizEC0FTJMBDNobnCAPdu9PeuUqjPI+TGhc2bM6hWiZ9AUZjwOTOUtMfRRf5Pf4Dn9mBufzshYCvKLZQUn0JdIoABdLXRcbDRh4m58r2mOHHVqsnHio5EEI3jpynAHnY7LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761985195; c=relaxed/simple;
	bh=4z82r3Xe3Fw0YC4SSkaFZoAecYWsvN0YGe4OrkkgGtk=;
	h=To:Subject:From:Message-Id:Date; b=uFeFmjkpJ1wzemokmnRhbp1epvq0SUbITzdJxseNqNcpLHuJJgRNUmB3HRijQxwL9MXy7WOGMtxKNwzLuAll7hbwRJs/xByvPxxcyXrcX7DZG72Odw8A0Y5ahnAEfCIfG/GfBA26a8V3/v1ELr0OLc/7d9RDCgu9Z1RuvSgI8yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVsSMNzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVsSMNzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C65C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761985193;
	bh=4z82r3Xe3Fw0YC4SSkaFZoAecYWsvN0YGe4OrkkgGtk=;
	h=To:Subject:From:Date:From;
	b=JVsSMNzM81F9fztlDNLhJVpLUknBcVS9PYZyX6L9gBA5jANnEsAcxpLuQ7sYzdWBa
	 sRMF22Q7Bjq4zzGYMD64Wy1vTqAZDZb4i2jxy0eeYm1wwtXl5GpFXRyRf4idPGuvJI
	 DrgbNrL0SE0iaTmMJmaMhQY9O2lRU40sqKv16XLWpoDlY/J9f/kbcNHWB6KmfpKTAB
	 +R8pcD7mxR9wGZL/w7sWU3VLZk1TZvSzbcBJ1PEWuSwnhsiALoFyPQYDjE3nLhcsSJ
	 Dsa/X/c1iJcaIN1DPHqBkCs9EIdebufJvUoWoKwSgBeORIlR5JquukR7yixkeVSA6d
	 v2H+8g8E36gDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC50CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198519360.22674.11286670145914923963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6ca65af2f1848080508c21a9784aba137c77af6cbaabe2d360463f6eea9587
Date: Sat, 01 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761985193
