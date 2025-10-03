Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6751448E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759468794; cv=none; b=IYrj4k/2NJtqVPcI4li6V357sWLGjriEiunCoTgUl8G0ZBXycKMYMzjxoVDYVkYqJ4htYGUFedQLN8cIHU8IZzl4jpi5v1adUctFUi8bLhHLOUfUf2Rhncdbty9pZavJq8r7s/CsJsgSgcfss/e5NKxlOqoCxfFisFThwQXJ3QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759468794; c=relaxed/simple;
	bh=WGKeOexe15CIQaxkVQg7SNCjwdSxIIbcxbaBcaa1vnY=;
	h=To:Subject:From:Message-Id:Date; b=Nc6UYW1YK5z9jxgahqTpKy97SF3o5VmBFopukDDdhBRut1C/LWmiimjsvO6+eT/KQIRHnrEwPDsHyQLzBWWjaq+GEua39MKPvS4/QEEXb9igc1Lo6sRAei73KPkFrXN2G6OuK0Yiyo+OP93aHl3WBzfGSk/otooz6OZUQsBhoM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UT3jFB73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UT3jFB73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A97C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759468793;
	bh=WGKeOexe15CIQaxkVQg7SNCjwdSxIIbcxbaBcaa1vnY=;
	h=To:Subject:From:Date:From;
	b=UT3jFB730alKKmv97JnAGdyr1DkJdg1rv5wjBuIWVPMzpnaCbeHDZox1Wk22AKtJf
	 I0Zlud5KpLleif+1wN5PTb5qZ73qW8ldYfv0z85NaCN1TN3GV4MV+c1T40BDyBMKsU
	 eQcc7eAg9nnb85uxz1M+XC7ROY4jRtj8d04XCvT5C1RH3ZbZQNV3eIaAbmW6i5LO3h
	 FnNhHU2pAYxdziPJdMc06xiEH1zlJ7GBSXM70o6GcNamdJAPrvaNuQNa3826ve+lMj
	 7+3X5id4FHwHH7f5xt4xsoDQvbbVgTK7oQJIt5oilBPbyEWUMojUepbV+PQCAfDY7A
	 Dn9MZ1ApYJMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200FCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946879357.16953.13238311455772634158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406e1cf65d09f50a5325be4e3dc8356a2c3ae5249060a5ee4f60656f2cc69551
Date: Fri, 03 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759468793
