Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97C173
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759970394; cv=none; b=KABvaMPID+HIAQki02HN6s1cogB2zpnvYb7TNhDCLG6oxICysQjaaGxdMev/2Kke6Z12CVeENh3TPAEZTQOsG51BbLFRevxyPys2QjWpdHUv9uz+B/raXacXGEDCv7Vo+4J6QAZdFexCh/oMPzl3EoDs3AeK17WLLgxJ8GdPyJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759970394; c=relaxed/simple;
	bh=kemb4BR8SYCIq1PVmCmShsw0xU4j8uNyKLZXkFvJf/Q=;
	h=To:Subject:From:Message-Id:Date; b=ZVBydn2/fyzE1paSKAC1xXMk1cJPlmK0cXC6paxx5H2X851k6v3xJOAIH/u5m5EOB+neC+cLBunEvOwC7LXwNlV0vEeKJIE1PtZ0TumiF8i9mHZfzg7yUmdNTSKHxuStCchKnZKAkRTkz1FKdFoaLNFVJt+KFEPgMdr6RdN7pO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWaDmDlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWaDmDlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759970393;
	bh=kemb4BR8SYCIq1PVmCmShsw0xU4j8uNyKLZXkFvJf/Q=;
	h=To:Subject:From:Date:From;
	b=oWaDmDlqCpxkZ+D3kBKHv1fNO9wX/cYQxoM740+Aor/5ziaw1gWOzVDL5C54gaOhb
	 z/UPHXQp8kGVwupBAmtSHIxqi8dpfVTWA+D4e7CNN5OtI0e+Iq9/hqO9iDIDqpwowI
	 vv1M5B212KkANKjG6ZD+NqM05ewf7CSpeVLw7+S8uVu8ac7WDfhzykTzu0pXes1d4q
	 OzixPCKO6iJnPnlgfSJNf3DD6fWL3+wb0cKDshtuJLMNUbTnKt1a1RffiJPtZFn1Qr
	 RQF9xHzV+HaPrtGsXeALMKM1o7MlMuaHJbH5T+0gBVB+6b0zhDrDSX64x1pjMTX6uQ
	 NsV0gusgA1iIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA3CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997039358.1639.3455710913957932623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ff3705b30afc02b18d5375316c700e2c22e314896fa4fceac821e83055aa6b
Date: Thu, 09 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759970393
