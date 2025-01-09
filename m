Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CE42144A4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736409353; cv=none; b=a3Jp85mvdERiNZEiJh8ldUqKtADC3ggN6Cu+rO7vWKvp2vm0Sn/647ocT6gdczDNw7ZaDOW0pFumnHXNUuzovvFCUVz8wWCeMYMenZMfjDwghXlNUMJ6o9fINzXbzkNlK69w9snKdM0E8yc5TrkgM/E3F+A5B7yY1nWWXGGuH54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736409353; c=relaxed/simple;
	bh=ql2MFeVGEh71AvvlYj/ru7ACijTvEwN3OlOb1Jfe1SM=;
	h=To:Subject:From:Message-Id:Date; b=lPOknaGo1L2cmUpez+brg9iwCct8ywEfXLYwH/pAhelxf7eWUkPjeG6yiYvnm32RzekbR/3A1ebT+C9GiA/ESq2ggU5dvzI++l5UyluPPTvunhGG2ZN8g5vhCIMKQNM9NTZpaI/8OfPsHsYNeMl+yK66cUHBLv5yv1NDNsJuE7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhCp8blX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhCp8blX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD775C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736409353;
	bh=ql2MFeVGEh71AvvlYj/ru7ACijTvEwN3OlOb1Jfe1SM=;
	h=To:Subject:From:Date:From;
	b=NhCp8blX4HHJRmWjs/+Ln7N3NG1HrwddoSdkwbbkCzIC0ikfeY2tipMP6u2lgi7IL
	 gQ0aXPBZDe+91sdvCftG99Hqz3loanpPE9RReSJxGSOUItCOwR2t0c2T8feifOvZvq
	 pYQkMvRl3/g/nGxXTWdu0yqXy18GNLdd8a2EZyfk6H5wxZGG1ghG6lZbEN1qs7ZRyW
	 6lwZpBKaMMFwHHAfvWubiwrE9h2ONsC9b59BV/G1IAJpUkFMgVYvW+NeInwk4mcewi
	 /okO+aBaXlzo9au2tHNAfA/jJIinrVUUjwRdP2w8sND6t0fzKJ5AVvemRFE2rSDIgC
	 hckFggAdfVyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC8E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640935361.10801.4922313061058822415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70404244e534975f0f9030c5e3af0213db67ee9d86dfbe668e710be7330ad7ce
Date: Thu, 09 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736409353
