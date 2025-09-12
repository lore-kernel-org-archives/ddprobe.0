Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24681230BDF
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757707194; cv=none; b=m3su910YVm13ipJQT+0/LJChMg1WUkbMofMM2BDInBjoc7hnKV9mJ60MoRNs59Ogki82aeaOaGXk5qt9eVqoO5XrAHslukTmU1U/O+cjOHGp/6Lk246OZKl88H/nJABRJp1sLlpKuJ1XLsfprjXOszo6AdgWe1QgXEdIX1KfbqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757707194; c=relaxed/simple;
	bh=zjCIWFQP8C0ktaon9ngPplJR1JUWt1ngZJOhm3TNFJM=;
	h=To:Subject:From:Message-Id:Date; b=Llm6v6vPgEKWTDzUcb8D8r1tV9AULcvwOTy5rf4oN547Dgky1kcP3eCGEsX0/uhxJmweUtpJ36CleaCi98s4NRsZoFf6Dyxwj9CHxwLQ40esJvKe8SoIov48lkK6bHV9Jd8OBrBmcE3skzCEuksG1hRvEb4r7VB8rejTn3fx8oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKJxSoOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKJxSoOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757707193;
	bh=zjCIWFQP8C0ktaon9ngPplJR1JUWt1ngZJOhm3TNFJM=;
	h=To:Subject:From:Date:From;
	b=gKJxSoOPodsFzb1hWwJuMoJufdCWB3EURs7ISbwjyro30MFmy42CgcoAYYG26v/jv
	 TlG807gnVonvdb3UVkudTvaYLfeg7rHyDm42Dv6yBtoFra3mnxpxMTrVXRboX/eQPX
	 iCq8wBesN0GzfyE+GMsFiMzO6elXRt6FIOVNDIglkyC/i0ICUPad4CCnNAU690GTLc
	 Qu0YFv4mIlYPCRI34kq9Ywc+IhtGsMflN/05x24oPoIGa3+5OY+RLrahYBHpYBv8LD
	 Z7ecttuve8VyGOB0lJQ806zxm4T1jpWVV8IOcJ50AlHxxYCHbddyG9vHefQm5KSnIy
	 tGdecYcDvLmIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92042CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770719357.12592.1823755671745073565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a22fbfd8346378173c2740cf0e0ca1ec3fa9adf494ae2f4ee6cfda0e94a9ae
Date: Fri, 12 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757707193
