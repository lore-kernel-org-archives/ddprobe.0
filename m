Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3718D1C695
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782509914; cv=none; b=FaX989fBTSN9kyAhtnJZI08HY7GkA35jSEy4oGRw31vBfFVf0vDiVoVd3Gy0UwD5oRDI6sY1pY7Pzf/aqSOZivQxJJ2k/prxPN306yeRvG7uY250HKNoZTyielMMWjEBDTaMPA2AgVo+9saZ28huvSwioxiaUU5T5euCpk4vCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782509914; c=relaxed/simple;
	bh=pDj/r1HpyWs2R39pVq6CZsjkMzCHeugEQq+oGX5Wlbg=;
	h=To:Subject:From:Message-Id:Date; b=En0Uh3TPaNA8IeyP+NjQltWyVufVYhOgzeEo36m2HpCtHpSPnXBrHOhOlBhJMo6B3tqzqqP0fPhgslSnLhc28zNmfOSTrhMxg2bgZEhNNi39sccSSTQ+jqfoln9z/rCZKsuoHTpvf+NCSrgoSZcB6NaQs9s9J0cxjs6nfhWSUmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4zfg8xd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4zfg8xd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA612C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782509913;
	bh=pDj/r1HpyWs2R39pVq6CZsjkMzCHeugEQq+oGX5Wlbg=;
	h=To:Subject:From:Date:From;
	b=C4zfg8xd89+1UZ1cparOfDbhxBEuVZT8cwPF8KSFwYkTf+cdhYfSN2Y6aG8J+g/ld
	 oyKzl9vctlndMOJYTmOc7bgLcRxMMN2vqGqPmn5MjD67kZUU7C+cs9mbkuJdCUyfMv
	 RrUsGzb/TmHM44MRhPXXNPFdLC2bt5FzLKExY0koR56XVYd2eDoH3U7BFbmcjNMNMY
	 o64Qdk7Jyu93y3MqEkYjSNtXBrPAFM5yZDaEv7/KFjvaBTSpx4fY9PVNi+Xf0ANvkh
	 sxzFx84JmFTt53UMaFev4KlIuwlqkKVog8zlRkySysQQEiuO7k0W2aGopt17due8C2
	 KG7AiNbehFmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B147AC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250991370.18649.5976201303702464231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fac19c00022f8267becd3daac04c61ec87aa9a256752e428ccf6d5bef45a79
Date: Fri, 26 Jun 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782509913
