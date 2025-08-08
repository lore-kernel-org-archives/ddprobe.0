Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF8A2AE74
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754644794; cv=none; b=BINm9oZSkT3UM/EHiwhuKA/V6zk1eGiTy89P6RzEurOfl+IohSEv2bjPYWSKtxE8P6UxqovFNFPPTApfbiZpfrzl0SqCgkNu02q2tGym3fp/apd6vdc7U5f/DL2t1T74qYvyWdMdxDqhU2iIDxU61I4EeSjjh43u94GiRBKwSIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754644794; c=relaxed/simple;
	bh=VAcxwKNeSaCTv0QxBpK3ENIRtS2ifb9WLtTW0wOiXDA=;
	h=To:Subject:From:Message-Id:Date; b=IDPuDfnVwc10PY/oGdFeUido1W0K8JrZle/uWQmRWsZxCVbigaMlzTGkbtzsjU3hazD/EozfPcWbfEpHzUJm+7K12yQNYmoEr6AuZ63WsPHJDvFKXpZdtvrPviD+d7EAXMlF4YSeom66v6rF3b9+YQAaR50Kp4kai0SAT7hKrhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1Yyqz8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1Yyqz8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B771C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754644793;
	bh=VAcxwKNeSaCTv0QxBpK3ENIRtS2ifb9WLtTW0wOiXDA=;
	h=To:Subject:From:Date:From;
	b=i1Yyqz8akwIiagRh9n9rAnYt/M43bT+cTGhpRlo2jRXWk+SVQTtGX43EA3lLrt35f
	 yu/7IFhijIncLPepmg5xZNKoVqi7Q1v+6YP6w6m/0IlF6JIeOnyOLgTrZz4ASj568k
	 jPHeEFS+MiCbExNYFBVRj5lkmnIgyUMUCiNXbVLAdy0kmn7mox0Q1lWSCE7KPbr+WK
	 Lm9zQv7gAEiG8jM46zYoNS8eYNRTcWLT1+j0pfcvpKB+iVcXPFX6Fn5Yrn70Q4tG+Y
	 GCWDqMoX4I6xovvrCmCOI8aLPelnq9qWYzADRJpzC/zrrH52YXXm/cPFedvqkLGy+r
	 Fs81UrMFlOOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1E0C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464479357.18496.18265216304031322123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918ef7d2ea8845d5a06a73a64b15861c62778b9556bc31a1e84c635202d266f2
Date: Fri, 08 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754644793
