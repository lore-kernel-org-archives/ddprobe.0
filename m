Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AB1F5834
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770081234; cv=none; b=KVf+rbyIMk6SZcdNq/nL5cqsoggnMBW3VZ4eZ4AEALcndJVT8A+ruZmR3I2k0/4FM/Nl8sVM2cighLXNnjaaCoU12VhTN41FqnKI0AGb1P9k7bVY9g1/k/AiWrrJcrpXBOJMIzwp8aud43/Kyoh7262IXwGI1onONVo7yIVyKUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770081234; c=relaxed/simple;
	bh=4YaPsU5HKL6OHZj+PE6qGlgufEJvVaErjBjLCScXjks=;
	h=To:Subject:From:Message-Id:Date; b=YNFeYQjUvryLKmeaHWaF/0ULXN6NlHtn1KwNZd9O1UgGpyJl+XbLamapSx4jHhGrxHbwbku0R8xSj+w8z3pZkt43qQHJBqYsydU3JjYP5yKBw5FgbEHXEMa9I23wsqFsoU6jFb5msWeF2m+Nkzd1+R8f2Rf287WmE4P3Cu5kz88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV6iwrSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV6iwrSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E1AC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770081233;
	bh=4YaPsU5HKL6OHZj+PE6qGlgufEJvVaErjBjLCScXjks=;
	h=To:Subject:From:Date:From;
	b=TV6iwrSDM9od1BdkBf3KCzA0fXOXFYwqzQcr5mPAirirDP4FaxzbN1HBM0Gpmio8/
	 jAeGQ4aiZWVKMH1jg4VwjfWzkrl06dmheybjyl0aTIWRprhv1lo3bQrTmEfPPcWyNF
	 sWIYeTQ28IpaKLk91B2KasPTrnEUbR+LneHSpKCyM4qQnWCNPDGr9DYypYV+dT72Vo
	 WRlMuhTwH40POHZo2vDvTQsomSqetli2P4PyNAIAa09KtQ2uQlKZee/Nc8txs0egEn
	 m6sw3JMInkMsyuLIsWTp1TdPLV+WujxAE5kddxHNkD3e6+wx6YljBRCs7u1hxwK6tl
	 JfjsQFG+FW94A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912DEE7FDF3
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008123358.985.9896405534664930552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e9bdec7baa51d30857c2246d775f569143e9ca934663d3c142183d8a49e1e9
Date: Tue, 03 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770081233
