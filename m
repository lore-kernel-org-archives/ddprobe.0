Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCF723A9B0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769456634; cv=none; b=IV/vqNXCo4pmnONqzThf32F+noxX6AwoktquvWBRhMC0jRqmGVFVicCxA9S4WevVLWJ3cU+45BP3OLWw7yzubD5LqvmjFgOIjP0y1Vdg/F6i0NON6O3wfisyCFbkzbowNoOuUtGBwcxTRCiZYupwPxVERnNAzDtP+AJ8jJHQU6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769456634; c=relaxed/simple;
	bh=oSAPKlo8/U5aLt9n4TAVP1CWj5NS+tNpKiuSdXrnfG8=;
	h=To:Subject:From:Message-Id:Date; b=MI1LISZ+X9zuiWrzfNegVf93fGgi29vEbEDpKj/AQCu0G7VS/zZ7sHizA1192CcOVSSoY1O2ySN/vqvZ9loKN1Ln1wt6mCeGqEVKg7tfzPxvjtcrdWh3zKehYRNdHo3z5LVDZFlainRAhi3PSfvC8X0fEjdNdHfIT0l+WQPl3CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEOedMcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEOedMcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769456633;
	bh=oSAPKlo8/U5aLt9n4TAVP1CWj5NS+tNpKiuSdXrnfG8=;
	h=To:Subject:From:Date:From;
	b=uEOedMcpy8LAvt9475UAeXo8uzIDikHOrK8tdBXtbyxiGy6PERGT45dPXGNtAO9pL
	 21SGPNjZMC1CRY4nwptEJ9YEvt7Yg4UoGFZvbmBtS8T0PiXr5F6JogjuhTmjip+r0c
	 NjrIYXI5EW7lNuF993k9BBcloO572mKuVlch5PSKG7o+nzwgybifuXWVb3M6tHqXhV
	 vJZbDEKrMa5NeS0hLH4FGfu0Jif7pXVopJra556MhUVRNYmrRxqbaR8QsxoqSAvsMU
	 t/cfz7OaKGVUfx53tm0WmAW1y/Q4tOJWatdFDTyAeoU1b961FwmZYm+5JPN1/HnRrh
	 qbNFXm7gyiKMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90708D19517
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945663358.6878.778446164784320850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c84e8ea6188e68d34d1583f1e89f7d32abf7101d40aeb0a676adea40769d1f5
Date: Mon, 26 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769456633
