Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA2D305E2D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761307194; cv=none; b=Krpjt9YrwbQMMfZVLJTL8jJRWode3y8wNdyNxuakC8aD4HwsVgSi40kw5QwAi84ShBxt2EvaBrsyYQ1LkwLTMnISQHF7oAKt22GL02hq5dnCBhuLgugvFYrp7X7Yo2KJ/aZgwoTI5p+qtcjRlje7D8XHnoBLSgCGSIwH13aT/H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761307194; c=relaxed/simple;
	bh=MEqj2w9EtlQqoZFu1YFbGbMb5UYmahpiolr6EQFfdak=;
	h=To:Subject:From:Message-Id:Date; b=B7QN7UMVfe7zfd/Zc/nbpb1nMbbqwRk8ctoy20h4yEbpFXn4sJLy7TGfHWrzNpiOjBpMuV81O4LRYkLmTszHdt5AZs9syFSHJRUPKaj1imfwZN519al55zNeODDYt7FFhv554FOA92WDCiYcEqjwNE9PpHp6f4N3BXwGZXETVZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhahtbbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhahtbbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761307193;
	bh=MEqj2w9EtlQqoZFu1YFbGbMb5UYmahpiolr6EQFfdak=;
	h=To:Subject:From:Date:From;
	b=NhahtbbVNFDl//uRcwLB5N3gjtraPyyh45Lp6QXuq3nrITymHXFtAATS4Pk8TshWq
	 rsmOgxb3E7rTY1r4i0bM4OAHQIXKa98yZDUmKRRuspW+YpixeNYZm09eyUhDfKcYmp
	 1gmKJGQiCGpcMiJaJgiN2ge1UcEy3tokpnYT+XewDst7JBzJNYrs4MXGBbTiwpLaFr
	 MCohYA935+tUIeHiLtJIhYtlnH0NqXUnhrDSDbQKuumyaVlHq5I8jw75TjzSTRZ0mA
	 xcLBYCmGEPv2eyqCcMJayYYVjmodqo0tHx6adjjhZk4nEv7go5QQwMRpj6ZukoQeGh
	 wc5/w0unY8mjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E2CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130719358.8332.2836530555690537378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4354ab46c3803873c1f1870bc8a09b4ee80da8e792bcdfa1a6ae593e5c631c3
Date: Fri, 24 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761307193
