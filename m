Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F260035C1B4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771843494; cv=none; b=S+WdyeFCRLbgTRak8IWBph2TJFtej91cWfKKFG2Tj5cZ5zwjc1xXfpaP6eVJjQGqjgbiPDPZ+s1haTNKTAHmFA0gpqWqbZXynENWiFWjlIgB14Nh1o4/qoMFU03nN9lzmZRkwMDmCCy76aIRDiqXGT3iZPDFmEq8vKcTNGJylp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771843494; c=relaxed/simple;
	bh=1UGQv2s9XDCHBRH/EX4A2GKPDrbXSaFUBZCZk1eUXUY=;
	h=To:Subject:From:Message-Id:Date; b=g2uGFnXCZtbMAUdv6FmU3JfHeWsDgGBnK5kca8Hfad6bFlWsdvOwFb7+Enj23Dx3GVogIN8kqLj88XIfkPC7IxV6QBrfAkVXo2QqqGoMAMeqof+ATh9INzS5j0cAxg8v8eAFmQrHFwlVryZtbeMVqBIgJLMCF+J3eDNCAFwEB2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrcXjSMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrcXjSMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B6C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771843493;
	bh=1UGQv2s9XDCHBRH/EX4A2GKPDrbXSaFUBZCZk1eUXUY=;
	h=To:Subject:From:Date:From;
	b=NrcXjSMGbZGIy90xq7W+NsWWt1LHhsc87X7TffF7BFe4fcOmNzfLI0RehOAOWmRZ6
	 02GeIDdJyljcNtK2Wnj8GrHFHFh7Jg7SKBgb/LBKV0XDZTRxj7hoblPLbegEwFwMlJ
	 cPOalTnAqFTcjq6Q2hwzljvKWuJpWaR+6dE3fKOI1teupUfe9R4mgpNzK9ODriz5f6
	 e77NpCW/VnEfjGExgFtQNRAm3YKiUuCdgOm80O3uk0L33LGjxNdBvC/bO4NqMVOovl
	 uQI3kFgVbPzzSJ/aqglCpAWwmTV55YPSInQuKFe6clEeMkEz2P7e2NVfazYhHFwtvH
	 PVwAzzPfP3aJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC9E63C8B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184349359.3683.6100101740645577464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7461f27765508fa9e20d19e33b599581d14a8ba12e6c7da6009df895bf9415b8
Date: Mon, 23 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771843493
