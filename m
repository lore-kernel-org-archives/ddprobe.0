Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEDB1CF8A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719555263; cv=none; b=AN7YPch+qlbCq24kdZuEHorheS0Kz8F02VNb2bnO5NI4qeYTEX236ilvxlbvsXaxpvEnIFg7g9ijgaUaTYWw/xfJIICmeCddeYfqiS5SqaYaqqgB9FZF9ZzPpNLW2sZ9XAffrM+1V0XgWQWZ8RsI69drx11d75uINOf6M7Cj7YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719555263; c=relaxed/simple;
	bh=Y1EnH7E3dmsO4+50LFHUXoR/rEx8ssmMSVirr+Q8gvE=;
	h=To:Subject:From:Message-Id:Date; b=jfGm5qHWd7+FTh9Ij+Lq4RNzHvfwAQTgdNv1mXKRVHZ4WisHZlmnPfn1moBlFhf2fWJ0PteaJvD2iObxr/Tt5X4zUZjEZ7v2ThT9857FxwL8jiInoxdLV0K8odfA45vExcDwCLSj142eV0ybsYgvMOz4AFZ7RR0BJ0uJ6JjHDPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoRzV5AK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoRzV5AK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2925C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719555262;
	bh=Y1EnH7E3dmsO4+50LFHUXoR/rEx8ssmMSVirr+Q8gvE=;
	h=To:Subject:From:Date:From;
	b=ZoRzV5AK/ilyUm7+jAelrfr5CWcU8Ces/KZne8PoO6gTEreh/SgE5RI1h58hPDHLO
	 lndNDkm7jbruO+KEQM3J8JDIJ7q4LmEE2NBj+Jf/oJst1HCCny7csbRmzfRvkLK3vt
	 CQtIFNFA60aDB0mxD8aV29AUUsJNgqFIiAVeiHqq7bxhDdpZjAF76OzTVfkRPPb1Ti
	 4ZlHHUd1x7UO4q2k8YueaCBOxeO3GGo5RCR2Ran8GE4a+tn5LtzgPZCEeh8WOoHuA5
	 bD4pxa4319FYmprBPaLCPHlCIOBnEo9WfN6ZI31Bgr44NnxStJbavVt8be3g4wIAo2
	 7AsgNmYxNK02A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38CBC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955526276.16409.888707177076781351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b3cb699a601c9465aafef8697f116b78d677aac5c3a1d0131868c87be55a23
Date: Fri, 28 Jun 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719555262
