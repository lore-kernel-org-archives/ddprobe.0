Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B431246BAA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761025194; cv=none; b=uohfNhjAftmowCPJvrZkVRix+P1r/M9ch6i6bfreqmwG1+cizBnFHTLhH0WKBA6PZV9zsGWYzvLBcFZKdB9l2P3vL/mk/CezdTCCilqcYuWPbasWfgZ7d2K5gZ3tvxtTOSUh5mzl5VTZrRFFS7fz4E0LYMQ9dAbPjSN9DXCQUS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761025194; c=relaxed/simple;
	bh=Z46R/mSxOOuhWZSoQ5QhsxFnBYqXtvbIcvZchQ+K/Gg=;
	h=To:Subject:From:Message-Id:Date; b=nnjIULYPXMeHmLe+eMY+MUf3zjcwb7dzFMjjPhleQ92ajgu4keTjyUBP5k8oEs+TIG5g7ztqXVqRHIzkFP3HrFSC6co73pcCuQaiifMJNG57S0kyPFlFoz0Vlb3OeWSwDBhMcMicNm2KIckzD57yxJE4A3x7C02W/Xwbw52WsXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmoWq4oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmoWq4oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFD2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761025193;
	bh=Z46R/mSxOOuhWZSoQ5QhsxFnBYqXtvbIcvZchQ+K/Gg=;
	h=To:Subject:From:Date:From;
	b=qmoWq4oZ/d+PFEPb5zlx6L3y6+OjFQReRO2+ETEsf8MCPc120CxtLJwCiDZmm/db7
	 GKAce31eQM5tr4Z92uwtXKW6aYrm/iNawp0zge69q1vsVMmOKCoYUcbv5XzqjeDMMe
	 65TapzkT3qIZIjDG8QC5CnzCz0J/ck6meGlcC59wZ90zzzx9dp1xAgHWu1IFwZjfru
	 XdC23HzexsLUh581IhC8DoYMks63eu3Gu/pjc0Fm1506AoLI8EkDMgMIx7MITSGPJF
	 oojAls5xq4uIVvR+Jww1b4ga4Aq/pP1qNbpnFWH2qmNFeR1digYxoPqq97ncz0hlql
	 nTtouWCZYuJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0B7CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102519362.4505.15010024719251417746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0292530fe346fbcd1c9755657f1598d63811fd171c905f88bb6f1c8e3e51efe4
Date: Tue, 21 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761025193
