Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A6434CFBD
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762472995; cv=none; b=bNxSOuSW5dDf/JpwWEAsU3VKW9KSWx5HaHBN/1HXJSo8t5/ZOmrHLecYtekuMShjjrFO9fe3H9XMIEMoDdp0tXuKEvDaEzTodvCH+h0A2aHxvhBOeCQJsSh13Y6Wj9zs7QfdE4FeSCblVjT4XB8YYeNEexdeZcWuAPOCDD1gBQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762472995; c=relaxed/simple;
	bh=wLFVMlpFWI6oljochuJEPMQ+CgY85qOjdhFTzfsGnrs=;
	h=To:Subject:From:Message-Id:Date; b=fUUooDtPgCYZkh7rRe0hRor1FCWjLAoPdhQPkpsVClOaseHb0NmsHxd0hVFgoApPHNIHm0eg7s4dZ0YVxfzAlHbzzHWLx3MhiVFVeNbexh2Fb9yLXOabYSCCSsSbgQVlRSzQGTWzVT3XOsTne+uigvqPHbwm2m0i3gWJVuKF+UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcUEsPEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcUEsPEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6222C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762472993;
	bh=wLFVMlpFWI6oljochuJEPMQ+CgY85qOjdhFTzfsGnrs=;
	h=To:Subject:From:Date:From;
	b=GcUEsPEntfYGGDLlVhgjr3AN7iZVOJHKJRzStQRAg2vQCDg34oT7VnKl2ds4WOpj7
	 zaXoI7z6RG6jTQRTBnghOLGpxDkhL4OTdgyX7XOSKUngaKpZG+tao5lPHGDlZOD/EL
	 HVSPL239XtXReZC3xW1jYivvQK7ckXhIdS7R5/CTnqTRkCLFNiJbpCgiwoqjWO4JQM
	 Ss2eOX10yU8KLgYqTVHLn//YhbxHIhasPxrSuy3D3MUjMdc4KYsCso0RazAo/ZRk6E
	 hnuY6AmUgYZ6d5eghXhqUDjof1kz7LPh33x5hHWtrEA2IFhE6Mwl8+J+p70cSVs+Zy
	 x0Rl3sG4Osspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98406CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247299361.15003.10478468279843909683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29c7bd5f594338797876d60ba78a2839890f46e5ae98e93b1a36815423e8189
Date: Thu, 06 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762472993
