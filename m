Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0529DB6A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760951994; cv=none; b=sMl4irAzKaSLW2qXjc10ihxLtBhGaZkwvMrc20NmwCoeLNrgwYLOTs/59gWUzyvdrY2D/DRFAV9/7+smgbVYPgOwm5rTAy9lNpG+bGAE7qqXSFFxvpmxkX4beRHNGMRtfCPHWjiqtbseMEivsza4lGFs0l/s8VbBtFTSpwS/5Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760951994; c=relaxed/simple;
	bh=TmMsg6qWJ9EAethNiKAMDu8vNZZNZrHvcMvxvn5nMxs=;
	h=To:Subject:From:Message-Id:Date; b=JuRfN3AQMmyO9dZ03lac7yk0mcRlfatFYD7kM92YPy8ktuK7K/FRuNONf2HkDJm9/RjNPlI9zyeEgOHGZ0poUp2w8ZwK68EpJ06SJT+3NTchS1QcgtaEuH1+hOy3jZuRuBw55q7nJif5a5xVV6N6aDRceR+h+Q/b/hfvM6acJss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbf34Ggo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbf34Ggo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D2C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760951993;
	bh=TmMsg6qWJ9EAethNiKAMDu8vNZZNZrHvcMvxvn5nMxs=;
	h=To:Subject:From:Date:From;
	b=Lbf34GgoYeZQjc/CNistTGEIlfFeY4EmSUgrdyg9CLMX/98y0W70wv6Y/F+6y5ybf
	 RdjG0FQBh24QUnESUxS1lbYaNhdQajlooXipgihSbughyDymTsFuRffklJ9F6yzUqU
	 KY2avP99wvtxF0SEX+nxLSiivG8Dw/wkuQLOdHj4cv4CTustySwM9xwUeNMUlWAWp+
	 42mhZA6geI2XQHCvwi1+OHfaUcvD70MGlGI9bOtMKcx6738tq2jAvr1hcPt7qhvstc
	 yRo7c5TldX6zcLyavNReczEE/gS6U2SuFiDH5R1Y6+8/0JXl3SoeTmwSRgqcgmfzF6
	 hRjfWrygs6vyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97536CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095199358.15703.11838921039629679559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca3f33cb04b6d56c3a47c5fab1b6170d5c1fd058e19b8a4ef2c053a0f7c2891
Date: Mon, 20 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760951993
