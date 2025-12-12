Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D093126A7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765533174; cv=none; b=hqUZfENNjnuQfjnZmD8Xfpmv2RT+MfPLJ2p49HGMzLR1e/2F5d3ppxsSywxeEkcICOc/ZFEbCIJ0SicvGXHjQLyb0yDfd+ljuxqS2sZBFciMJ35ieOgO/GotOc4PF/qczlULsjLmotoIS9uw1STV5g2p6NVxbd/mE8GSW7Z4ZKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765533174; c=relaxed/simple;
	bh=HSDQU95R8BFi3RbpcNuuqy2dZXpfVsVSRUeytQKCJo0=;
	h=To:Subject:From:Message-Id:Date; b=PhjGe6d+f1J+pfrZIdEcoq3wIel9oLOrkz5+SrYXFG9DIiPvUWcAeNrQP5PfXLM5mNH9KyPsYOmINa4Eo7oDiEagLP2pw1oHDcu6yYYv7qZPyFEPXFGhCS43AFovWDLdWfCZRnKZO07ndTGuHIFwWUzzmDEhrgBpJ1+QjMIveAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R71l+9+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R71l+9+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765533173;
	bh=HSDQU95R8BFi3RbpcNuuqy2dZXpfVsVSRUeytQKCJo0=;
	h=To:Subject:From:Date:From;
	b=R71l+9+z1/w5s1611LxOdK4c+5NJwWnjqgNQZYKVY+4ER2Ed59ahmPjDP+0kguIVN
	 vTA5/51+GL5hxLZos83O58mdI1oosWLlsO+wJf8xqh+GLChDLwA0CVerAxhngBwg/u
	 lW3F1ihYyD4umjs2Qj0Cf8S9IHoNq9iE4U3Ao4BCsSp0O+bPk1wzQ5bW9jIvFE9YW5
	 4FGl3Ny/w4en+Pvrk+m3DI6tzthJ9XWATVRpBMnYpmC83lxq8gMUhYkioi+RODfKEm
	 fyxoI659hOKk7ryoGFlVS95q75MVHLj9QTU+NW4wyGGHGzn+QpsQrysm1QoqNCeRL3
	 ciz6vPBdgJBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9CD4415B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553317358.25695.3966690604109270094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701eb27a7343536dffd55807e9824fe6d08f913741a533c4b7dc4a8063ca53c1
Date: Fri, 12 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765533173
