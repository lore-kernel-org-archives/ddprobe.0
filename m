Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A79278F29
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752276594; cv=none; b=IJmvPXfVNs8vnIehDj89butdsF2Bk3o/WYWsmSsLKszoWIVRmOpkjIePzZs7PsZKmFEl6Km7DQjh+xdbc3qCvvIf7eYrsJp8OCje2jZ+JGp0g+Bq31sDBBSYZqeYbPqNAp7e4lN1Vmg/8XErkM4XYvJx/SVqBx7ZmZ6GqWmuM1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752276594; c=relaxed/simple;
	bh=ste7ISlJSee+wd0ELAn9AE1W2ySOz5fm9LqsSykOJHE=;
	h=To:Subject:From:Message-Id:Date; b=eV5OYgdB1Qp4TCPRVODVAHNe5K1urFwUkuQaOLayCTTgk0N7yMRJ4Afcj8qt82LCk7OavvXtmglvXRAwBFGAKXi4FMI/UsB34t3WicJRKRbh+dWyoNGj0DDO2sNYV28xT4JQ/iS8xo5k0Rm4V+hilanbBbKHOPHmWR1sIEwunE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVDFVJKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVDFVJKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F303C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752276593;
	bh=ste7ISlJSee+wd0ELAn9AE1W2ySOz5fm9LqsSykOJHE=;
	h=To:Subject:From:Date:From;
	b=eVDFVJKczApbwRfQCbU7lozRufyHmxGZmm729ZiU3LK0M3wVF4hFhVUbkLByZSp93
	 92sPlu/v7RKS7qCA1ae4k6Dr0ft4nVwz5RlyVVRx53ic7Ko1D4xVsOu2/tcMHqr8Vw
	 mensxdmbKxdYBwEegx23GhQI5oscBJdIxVjKO6m05S0mRU67h6tlmTTUp4X2GvH03K
	 hJ8A9KIDioOMQuoRBLofCyGC2VUfwYn2Vn/dy/JL1zpnyNv2L47Ze/Gpm9sRie8Cqf
	 k/FemIdUcGELzjfuCHRzjQ8nl7wvzBx08N3TESrcCCDPpkYTSGxr5XX1/LDFGkG30c
	 rl48+zFklg2gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEFC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227659357.20761.16794849854508849203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a22f2b58d715c3d42dfedd5ebb3848345a5622a995a6c31b486b6f34178fb68
Date: Fri, 11 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752276593
