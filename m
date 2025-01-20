Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B56A8827
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737335754; cv=none; b=T0RpFcC9YJ8iKjfDZp3Z+FGXDhaObcDQlWgvff00niK3Q1jlCj5lbtW6FgnP3hWBhPay/4BC3igVNhGjn96LC34zYum1+iG80B/QY+yWmFQaMGuLm7Q2ixzSbuGOsw07DPAgwTVfJB69QMv9cYX4rk0Nrp0j1WwBE4dqaKj74+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737335754; c=relaxed/simple;
	bh=DAhtUjazu8ac9D+AiOfjmMIXUxvKZdoMOjOQcSYW8WU=;
	h=To:Subject:From:Message-Id:Date; b=R/EGjvjyvNcPHYJZvNMC0wlH+C8OoRdd7Pn1Pv+k1wr5K0kWsrd1q0guSqVcee9ztgHev3VkAkCd4DTw86XN+9DCseS17yqloqIzr23BDEoPtoqhUasYTwhKPgN3RsRwdhwgwXm3Sj7WI4XoS61OaJDIFmDA1M3BoV2vzeNUiEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsW0CbSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsW0CbSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5228C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737335753;
	bh=DAhtUjazu8ac9D+AiOfjmMIXUxvKZdoMOjOQcSYW8WU=;
	h=To:Subject:From:Date:From;
	b=GsW0CbSqGNhsq5qhqEPtUbydmsKOH6u+roS5dhSsXDpp6RTNmrYOaxjT/uQXiT7Z8
	 d0xcscTiIjvGjuxSOeVYpodv7lU2hZTNovwLrH0xLcXyj6rnNZMKubY+7jhnVZFrPH
	 +JiHld8ah1hIWZZU1u3iQA2ZSmD+Sn2d4DVVzjujz94HRdudhFfEQ3eX5UyvOHMho2
	 C/OXBa0wFDjoRX3J8RvPjmFkalR6D3pLXLg6RR4DlCXo3coRUCIapwcELX7LhXiRus
	 MPmVXV13G2TYfDk8m/Qa4WKwec+BUDeNvy2/S9DslKp1MlUhtUwNFrcS00LTcUCfaO
	 u1XYYChVSI6Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CCC02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733575359.29160.2746981886933642710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536ff149996732e9baf6379379d9ee62f1aa16d1b2f7319310dc8c78331b2d1e
Date: Mon, 20 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737335753
