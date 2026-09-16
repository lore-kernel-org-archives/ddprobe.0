Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA0618BC3D
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789540834; cv=none; b=N64BkMeVzGE8hHCvBExY9RSfe6pKWU1QnqSfqcUboJU1TZD4ISAvvGdfwJ9gRdzSQ7NTfTButk5W5cx9YNZTMhYQhqkAX5bz777ZPC86BbRVBiuO/fjickKVCJS0cAjNP4FetHli4m46dctORVeSZR/tKE+cv2NKKgaqWEmLXlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789540834; c=relaxed/simple;
	bh=d3R7BBzNcOlIISzocYwne2w9PaVco1teZ7t5Ced8UMo=;
	h=To:Subject:From:Message-Id:Date; b=V71MZpngJrdjeY766E/qyZE4HTQitVXqbYVVuzDmXlB3VokoiPhrQ+ajhRlG5Zv3hur0Mp5gSVT3l11LqERD3qpfFUsm4YSzipG/9Gtbc+2PGGPRIYXPRd4W71nkE1JA+EbBlw5KNDGmhBAzUnuO+X0RqI7QLTvq/UNZf/0qZHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqpc7Ywv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqpc7Ywv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5EAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789540833;
	bh=d3R7BBzNcOlIISzocYwne2w9PaVco1teZ7t5Ced8UMo=;
	h=To:Subject:From:Date:From;
	b=kqpc7Ywvbg0MkOk+DdEwFpoQ+HH6MtaUOKofEC3DbKqh8+i7ME5GQMVdueb8huRwM
	 paovwl5ESh941TG9wjZVHAeFO5zDOmIxZoK8iviA4vHOO8NYaouCu2M/e1+fJJMDKY
	 l1KhNej0hVt1/Fpo+fRW7hL4ZuJWwOt9NTgxDaJMVmMuFnvsv2iwZA28j9s2a6HsVV
	 r80Zk3zqjhzP6OOuxq5h72tlKRYAN+Q0tQDh7MO/wk1YErZCC0QBfD1a6/UHqGwigK
	 cO9Oeq3G/OMg7CrYdHwfreJYGd/QoVzQZDD3unVSq9C81lCrUc4UgCNTCA0LA5Y0RN
	 PdAgDkSCz9uRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B525AC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954083372.16802.18221977685875272411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26664a77d5c78e14efb8ba0135d7367ff2a3ae40aec4b9529c4b49e866389a94
Date: Wed, 16 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789540833
