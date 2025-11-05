Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A81F287505
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762380594; cv=none; b=BkJcX2LUPqRkUN1RJUZjdS0/ukuDx+m1OW4bSefpusDWeSPMjV8owEQadE0FpF7uARtqsZcDLZdKh/1NmLAJGIx83IHlxxtpRqJOMGz7tVgLaf93cuK9QeUQv2D390bMyc+LaeunMpFumdK2sNtqByVGz0vc12DMLtoqjyaizO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762380594; c=relaxed/simple;
	bh=80H455cPPs9XB/641bbYxXSfFLN4pTzLYBf13ZasVFI=;
	h=To:Subject:From:Message-Id:Date; b=h2P9o/0CeyyhxSjP+jkQ49Cd5eoaA9D268WMWt4A/j0MnxZaaTlemKxnWwbrhv6ERktnT/shBL2+7CermmkJT9hjgCnu34Fi3Byk40pHDI1mo4IGcSX6WjYg6+3Mn0aWx8+jekTi8AFOIDzRSBvcfR/+yt3qZIwsmFQYdKXL76M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uESLqSkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uESLqSkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098EC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762380593;
	bh=80H455cPPs9XB/641bbYxXSfFLN4pTzLYBf13ZasVFI=;
	h=To:Subject:From:Date:From;
	b=uESLqSkTAwh88BKPQAyAt4P/vaqMEIAxZuu+S1pRsdq+0jZzSgp8UWl6qFXHyREmL
	 BWMvJvP26GaPk6VM9v+3LRUJZufK9rH4nW0FYzq5gCOeXMJR1r48FLJDtCTts3R1aS
	 H8+VMRFwtQ4L5wpKONCLQ1x1iIO3o87kJIGFv0se65HSsUa5kGyvv715h/x74tymOj
	 9AagpRI9v0NX9/gS7al6TWR5ren4k4MZREmjv2ee8oo0MFtB+9IB7yNSI45efC3zzP
	 ckUO6BCX8sp5WciVZ1ke8k/6VOrR8EsXl7JuxQdrVbrNHjJbLOzOOATKqKn9XSNyUx
	 0vFv3WSrVCdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AFCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238059357.22930.16200544321505868148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63114e48ddb0b929098eb4b91d972d4cd35029a6552ae8bfb4da219c40093137
Date: Wed, 05 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762380593
