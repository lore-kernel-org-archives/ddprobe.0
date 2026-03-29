Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0426E279DB6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774815894; cv=none; b=rIr4Qy7GD9Lz+yStim4NPpqn6D39V9e3tAo7GMXsVA4sgR3F08/69Wz8fq12X77Jhq3pmO9uity0VkM0LYpCOzdQ9aFu0ZTbAnYguNpyWp6Dzle5q23cPXo7K2bBhJPiJpZ+5G7/6qSzpAb6Ts7MOEfrv1cz1WZwS0SIMP4aeVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774815894; c=relaxed/simple;
	bh=Jf19voLHfEBSmbjia+fzadGPS3hv8cIjK+hD1P/gP1o=;
	h=To:Subject:From:Message-Id:Date; b=erGt/zeDfZTBWgQ7qLowBs+BxFHvw2sbA3cZ6fAP9u++gIRYAyIHcmAl7avqRlStVWRI6lBN7cyfzwLt2feaDf92rbhUGDFiDdWD3Imi6phdz8FbJSjR8FPO2S+sUtEOhiRXRgV+DZjq2ICaTHUOVB+SKMq8m53XpJQutFAGcAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpcHfoau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpcHfoau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB3C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774815893;
	bh=Jf19voLHfEBSmbjia+fzadGPS3hv8cIjK+hD1P/gP1o=;
	h=To:Subject:From:Date:From;
	b=lpcHfoau0i6wwvRBnWg1JvFKD6ILAyjaGBwS8GsUnM3U7FbmhHmy5PHUNyFtLz+pd
	 SHLO09dADeYYPT/okSNLqU0P1kv70m7P+8F/7AboGdpq5Lghs6FcUWwk0JGAGM9Jf7
	 nITBwVDvhngCBwswYUbEwWvLgJbOkQIQA3wt5/vhsZfCV2g8GCzYwnyuKYZh75fqbD
	 i0PmGwUiQhyfDNPPYWxnp2L54PAzaeEhKNpJI4YVOcg3pe/m11eeSdUG0BL5h5unDo
	 stUvpdpCXwDAgdSY7vob6richTz796bbZwklEAdQIFltqoyyh8PaE4mTOOknT2Rbpt
	 uZPcjsRR9zktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CFFC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481589358.12253.4404335497313918176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b67e57c3e97db0f2af186de2f088f678f6b1cc8448836b4f7af01ba4210607
Date: Sun, 29 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774815893
