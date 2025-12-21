Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05824E4A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766305435; cv=none; b=ljwxVVfxm1LwC1l5ZeoAbVMh4cKJK18o+UGAkGyKTYBbWTzF5ntAwcZib3l/pvhGzY8c1J42YxkfNCIxOrJ0iDaJsl8wlN298oc22QzRx/XffqobrSH8KHUOGo/KSPcVAUrjOLL4KRLXOLO9FvVVxdaDNwwXKSMDLvmpgVj+8JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766305435; c=relaxed/simple;
	bh=gB14QyXAEKwvrONvtZutshWMadS/hit2Moyk/rxfUk0=;
	h=To:Subject:From:Message-Id:Date; b=B5OYr9UE63SyEFJfXvbpNlVrKDZVJg7MI2EGvIFNwuVbmiRDLNZD0GFQobBigGNfGkD81QDg0WlSvwpAbn2RCUSOAS9m40Is3vrnMSZX0gDXM07chxaTY63xoEBdaA/aX3C/akvxctLjr9R7jmDfZ4PYlP+E3C5ZgZJI5sSzqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek/pF6WA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek/pF6WA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766305434;
	bh=gB14QyXAEKwvrONvtZutshWMadS/hit2Moyk/rxfUk0=;
	h=To:Subject:From:Date:From;
	b=Ek/pF6WAJhl5HEvHmHQW5hj9+QBT1JOFN2MpqVx3/ryEIUdG6ydhezkQcXhBvx+qm
	 gZF2fuGCe64W6fyIETtgSvJpuhIXMkYlEfwzJdjGxJlbzCSzlKhGJ2muO6pAoj1wa2
	 JmSCW8fRQ2oNwxzYLXMXpLNKNkLDZ99ZvHB+tdp2eyqPSWvXAIyqMt0UZq1NsaaIFc
	 e3JdigwfHVBwg4CnzEHpn06OFaog8Y1Bx3H7adN6VlpdCZTviBBl2mknY/MpYRPibw
	 2QCDBRa0RuxOpGHFTOjKSPZGDB4lAjvTlAEtwQB1mTaD+l+kBuQGgojAMOU9ITwLD1
	 oWQn9SsWRI9Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90309E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630543358.30969.2180195247670128558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3daff6dbc914f89e90e9fe0b620e0e41cb47f0f0227cdbbc578a0f40726b00
Date: Sun, 21 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766305433
