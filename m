Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34571155389
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728034; cv=none; b=PF0YC6QVsdGlOVjQ99iMks9EVHUe3I6GmvBQWOyzvmPhb9+05oudpNDHRVYng/FT4M5KSywPObTxR5oRzKsLnrXsN3EBPw//kFwAQ16wZbd/L2lxxOgGDNkVpsXPAPX830YnRHTSLY6h9wEUhj5xz32KWkP4DmsEV2tUzS/T6wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728034; c=relaxed/simple;
	bh=6GFf5cteAg/t5IeIwgnXZ037qbQ1X6R+CH2XgNctwAU=;
	h=To:Subject:From:Message-Id:Date; b=LJhnraD12WwrncA1QUtYsPHBPvgPqnGaAkupcOxjDFubYSjFJI91FI28Z1KODyXMWdvSrfrybneLDElEayQn/h70OYPOYdl42rogvXkdViykY2LKrMs92nQT6YfkEXEEiyXwt48H7zzhFz5lgFutat27ZPritGUYbz53YHNlbQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDnoUVsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDnoUVsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A7CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770728033;
	bh=6GFf5cteAg/t5IeIwgnXZ037qbQ1X6R+CH2XgNctwAU=;
	h=To:Subject:From:Date:From;
	b=iDnoUVskZaNWjKUIIxUHhxfaN2o37ivNweOOnZ8npGEJLjC9OyAOZDO4mcL/h2Tud
	 k//jBXVP1knKq0Oxsk1gYLkVAP9TO0Zykoc7NY9V5htHPmzX/5YWy5eT3r5HNaTzPG
	 c1B/wlDI7G9bpFShhl6Jqf3YbUYH2nw6rJxCYk7GcosxGUDB04eqrsEHznybJd2lBb
	 gOWi50ENxPX/E1DWsMVV/LOrUB+KJOsnNn9LRnvb3wCmKVkYsVEx0dqW0vUktyttqX
	 1bWI3L6cQKr86rW1/WjYOC/cRPOqUgN89NVpzvqA4lDsDZ+2dernK1d5Lx5N29yZBE
	 SZKm8kcvv70aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94003EA810A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072803359.23033.8367022688177608494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85dd604165030adf909b765da7dcaf4e5cf23d8436c9e2ba0a62fa78dc20e0c
Date: Tue, 10 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770728033
