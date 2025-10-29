Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AABF3358DC
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761752394; cv=none; b=SHiOZuOyY6gsIEkVJ733kcgobbWSagFTVLPdQL5QrBg62BtvBBnhw1d6t22N6ixQ6WzI6ZMJxHoTDNdMU/qyMovH7sKtYbXa2efon3rqS1OJmZp/phM5OGE0MUriSALZB/265IY2ZLBEPO4+iYngOmo0UASIiDIbJKlr4nl7bnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761752394; c=relaxed/simple;
	bh=/ViNhavj5fdEZCfZGxqMcYNaqoDkhaUg99qgWOm3URI=;
	h=To:Subject:From:Message-Id:Date; b=IuZWBopfN520vzTgytCD72GItEHz8P5v3vjKSR0aV7k58kJaZdrdromLqwIObQhFKPGYuimCvAViFoI9jIn4rHXJ9hQtdPfvderKkqYRSrT8ysEZ0C1grJCTSFECE+uV4DcMkswOHWSA0SjkBGzSmaraSZJ7MQE9DeOktKvKHRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2FkHy6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2FkHy6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFACC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761752394;
	bh=/ViNhavj5fdEZCfZGxqMcYNaqoDkhaUg99qgWOm3URI=;
	h=To:Subject:From:Date:From;
	b=o2FkHy6+n1XFIkragjyVyeGQcg380Zv/5D0k+40V5PdO6qN/ai5NHj+XOzzAP8a+d
	 Es6tC6xWnbixQ0bsippLrJcGt3o6Y/QJe74Gtrdlj/VMQsM7TA45Hn5PMlaDwiUL0t
	 0le8Yx6lYZwApTseWv5MCqhC+rjhThG118YBcAMPd/m/T2LVe67pTwgBMnbywemTJC
	 yBOx5x+nC45xKnixBrhWvDJocwydqgM60DGPZSTOUWFud41gOUjMtRkwCl7bEn80sY
	 Gvk/G38eKo+EkMSwdcRIOngIOLzsg9mi4xs80gUwHdfwTdJ/EeyGICkOsq5J6OP8o+
	 3igtw1lG5ndtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D8ACCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175239376.11890.3480981105198279388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8f1b80fe9d83a990cba32bd3aa37540bfec74958477c61310a2fc5a600d985
Date: Wed, 29 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761752393
