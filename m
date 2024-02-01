Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E588E15B11E
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706779697; cv=none; b=u1EgAyeBcVFuCG33sV756tkP1U5b/7s/vPWDgPaoyIe+rNV1xP32UAeZeecEVW11WMrTb3ymPIymKb3a4UDAxzMqgSGtxn7CjE3VoADbNwkdyU0DbSch8XdP61Ds/CGJAWo6r9Hp0KNXy+YIHM6cV4TzcN9A7E8im1A1OcVxaPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706779697; c=relaxed/simple;
	bh=poZolv5YJO8mfRcjIAF5+Iq7h4ZQIFjynprtucsklWs=;
	h=To:Subject:From:Message-Id:Date; b=ciOG3VFu8M8kykFj43A+AavfUYthM9YlmrC3twLaTxEDuJUv9tdLF2J23uGTem8nXz9YTBo2nLSvr4XSISmoKK89bt1tFqskzHH3pz30nmGifdRUiQ+dUyP4671xx5F5z2KaEd8/LUFJ50A9EC/UFehQKJ3UO7u8AKSUbPfMAG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzEeRC0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzEeRC0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E0C43394
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706779696;
	bh=poZolv5YJO8mfRcjIAF5+Iq7h4ZQIFjynprtucsklWs=;
	h=To:Subject:From:Date:From;
	b=ZzEeRC0iyuU29YxLhuav5MbgOZmtFIgGyKEJofka1KG0n7LpbeJvd7WBdGc6/lT/4
	 +bqb7ujI0thyKbEaj1pG4Bg3TnDoIHwiv3vS9PD7TCwD+XG0EFE2AjQdgixSdaDGTs
	 YF1W8HzZAJCtar2hGeQbAPcsRK6n49+J888E7IcsFh2ObaMt5kjnE8C0ksb1xK5XTA
	 JQPrK+h3cn/KOpWGu+f6ia2rapAl+BDgQSAeVJRMGW8TqYtsV28bGg/HH+D+CN9T5W
	 Pf2WbEmtd8oPuuR7cQVD96H6/RXAqwyA7+V463lwXRpd6h7gfmoLVE49z2RynpjbDY
	 1NbDAQFkWdBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE5DC47DDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170677969637.13578.14680013346999700595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e5dbee0f01472b5d0206bc67ed9295e535c637b1439e625bd8e2448a174ad9
Date: Thu, 01 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706779696
