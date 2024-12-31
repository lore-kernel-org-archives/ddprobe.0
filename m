Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314BD18787A
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735626954; cv=none; b=fNegTovQZuzQS0P2zl1Z/92rmqTYD8kRFaj4uqBnIg/QftKUsJI0Czryw0aqN1c274XXZPmwnwyJvSb4Yf8BBtmVKOexz518GOAd0vfdCYG8E4dP0FLEAUqC56Uypf7JZgGmxp8FG12XQhfo/E/14mjQu1v9cKPpJmpANQo4XZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735626954; c=relaxed/simple;
	bh=c0/bCxXxmvV8f+QacJPLVwa+WJmwvbkjKjf07AwsNQo=;
	h=To:Subject:From:Message-Id:Date; b=O7xsNhkbcNKP8q25lYDFkPEsWE9UMXN8iSwepLXHNPqAZqPZuu4+MqEv2/qHxY0c2ZA+6jCTYh/7GKny1YW+Nyfg8D6OHhAqyP8tdhcj+gc4MT+uyDlV796zLHq1noxaUli83ZpAbQOkRWFNzuOFp0Ukbl7wOtxpKj+U9r5GwI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kibzsn/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kibzsn/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB610C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735626953;
	bh=c0/bCxXxmvV8f+QacJPLVwa+WJmwvbkjKjf07AwsNQo=;
	h=To:Subject:From:Date:From;
	b=Kibzsn/7ZpMWUXLmcHOyHe42IgC/J8N4ghsbrZKxGNF3JLjaq2hAVIMXT1jyZeapq
	 9Kw37TIFZjvi7nroPvu6zf94WUh7VkoqSC+p/N35ZC255vApOep4DsFhetYUl9KoYw
	 o6zn3/V5LIb0Ao93QtLJkY7PyDb9o5DL6C+J1wvSsjO+miMj3yZwmHNUVBoZAn1nLj
	 VYMHuL8E0O4B8n4pcPVGAteqLKzV8UFISDP3LQAAwarv/pvHDlfHvm2p2YHPCfgJd8
	 4p5vKfVNn/ujebVIIF+gvmWg8PN/eW248350QvoNid6jFA8oaL9I5o9p31A/ylZKv4
	 ayYsyYUk75WqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97705E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173562695358.13079.13663510468867749959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00568bd383a436b2fe44f6255926577045b6758789fcb32e41ded0b7fda6a5b
Date: Tue, 31 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735626953
