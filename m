Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED8A161302
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172354; cv=none; b=C2MXZTLw8jW61NOo0fb8WbYIlDav/sMWG8QqTsV9Wd7I3vPYomvUKzMfzd0Px2cQzA3XITrHpCcWWqomaYOlspErd4aCZHtVlZk9fETRYjqGD/9ufOurf/hDXl+VXvu3tuBHKi98fckGKJYHlk4NOCKGG99r61hSPIDyLToXyjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172354; c=relaxed/simple;
	bh=Bfbna74LeoXgPd7q9xPQu63IcTKrossV5Zlj69jZ4IA=;
	h=To:Subject:From:Message-Id:Date; b=c9cMEenW8V+eGUQmLiAOhQGSTRKHaFOmUHkJ6Oqu7oNwwEpN3OvVQWLiHKmM5/vtT04uAdVqCdS10spAl2WsCq1aZmvUk5u8hmyWFyPkKBfqtoSAbm48/kxK2v7k3l4l9ds0WaYD2mE0J1ilVloiE3smwYCQRy62mPwH6tpINLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQIc+5H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQIc+5H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17A4C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727172353;
	bh=Bfbna74LeoXgPd7q9xPQu63IcTKrossV5Zlj69jZ4IA=;
	h=To:Subject:From:Date:From;
	b=aQIc+5H0Iqm543cqbWTP2p42npFR/cZyzxXz1vymmvFnlC7FjmHgNyYSAfoKbiSXm
	 gEjQWfZKRLFrGWPHLNdOKVX+q6cbawlhywapfC6SrAQ8V91mOlJe7U57Vz1g9jU4u3
	 jNsH3bnTLrdJw5Z57HOeIdbL+82LMi1AdsADajzWsJ0vcj7AvHTo1gkldngXh812D5
	 iumMZejflBggChkL0p/UypFJ/Njc5INCCqOKKkSKrczLEnpSiuzrnNDAgwkQUk4sMU
	 rtNG/SBJiUU93XbzevhW6ch1NGaeS9ND7N+nrwkz1fLVYlWBIqnBKgt/NOyyinMZ0I
	 KA0/+pygYCm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93402CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717235359.9976.16023717258393236690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853fa1a1a4cc9ae6278f6566ab624b1ee99837515369c5f5f3da375e5ab7ade7
Date: Tue, 24 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727172353
