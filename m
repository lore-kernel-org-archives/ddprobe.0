Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E8D328610
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787808634; cv=none; b=KQ/q56PReht8e2LlJDQQuavJb0hV0oZw7cizdu6NyNcUlB1FG9KWKVlMZp2SFC8EDVplD17+XyDH58dsSjfJfu7eVq8qNrmPCn31wW1gR57m3L1DfhTE9dZPUti4/QGvDxnLOh3TMsUaYe8siCdu160UUVGIXyW5dx8Z/F7BtT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787808634; c=relaxed/simple;
	bh=D9Yw477WPE8QpeaSMf6+VD8+99dclVLH5vDWR68zIr4=;
	h=To:Subject:From:Message-Id:Date; b=ZGw3hUxHKyJ5grUpZ6D7BWdiPKmAvaPbu/RmmuvLhagY5PDCV0rYrdg87e+bqTf04gf5GKgK23lKOhWiL9Muz3FC//2yepE51iP8q1oiQqyF8YTKraotaI/MyUXQecxmvd76oiVvhrqj/6xgILY5VeuUn8ql7I7YQsEHaDJY4yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDOoc3tX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDOoc3tX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12D7C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787808633;
	bh=D9Yw477WPE8QpeaSMf6+VD8+99dclVLH5vDWR68zIr4=;
	h=To:Subject:From:Date:From;
	b=DDOoc3tXyJK3aVXwONcyqzU6cdko2RnRUbElr1hmuulP7OMGxmZanqtfbrUEHvl7t
	 N7/4OmuSCwy8+ILC71lSFd3lY1t5EOZY5ErEtBt6C3epABbeuxA6XbL1jE5ureVMtq
	 JaxY8QNSOR2F97fJcABEsG1pz9TDXBmjFbQ7iqJf1jYaMYymcVjm5Pc8aDVSU0Zc6M
	 3PCD9uDRjSFnv+CavynwdsDJAClVZJWbyU2TmVJJDQQb9XihaqQaxFFk/KObbmzdbU
	 yUubtYmFVf7/QhIAkRQF8hPN/4s/eV2g+gK3O4jjz7D1YMM8OxGMBzpytKJHFtmcpC
	 TCBEqipfTluig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD6AC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780863369.16404.6176118407462186997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74715c3ab752bb68d57c1bd2b3f537f199a70a615be44f8c45b9ff9b70f6bc2b
Date: Thu, 27 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787808633
