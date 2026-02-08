Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BD2248F7C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770558834; cv=none; b=XG10pupfyHtNkl8ikSzkFJytvKdieQeKlR8F9koG40L8cD/XInvrOzsvHgEwwIyoRzkVWiUGoJ0OHjwSIa2TFxw79AbxG1nlBMz8AmDzj6gQOwig0YqfJ4WRKH0W+umfmRpJFc2FCjppFkZ3QOTubNbj6UlNjSuOhyI9zWeYGgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770558834; c=relaxed/simple;
	bh=k4A27FjksiY2iGNw9CSM74dGLnT/VbNEVYSPG9DxBts=;
	h=To:Subject:From:Message-Id:Date; b=L6ly03UrsZuojU9cwPTjd4DaQxtGz45fbUWI6pd6ODHVdKF1PGQQTMkbFxV0f9T06bLHt2BNA4vT4eve9XE/SEO0GBgcEBKJn97w6kJHoOXJR4SR7zVDf075MRIKWWlJl7k3MDvU3sHmwgkdoXF11AUMx/5yClxgcMWCu/EUOOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSvd7Bf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSvd7Bf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770558833;
	bh=k4A27FjksiY2iGNw9CSM74dGLnT/VbNEVYSPG9DxBts=;
	h=To:Subject:From:Date:From;
	b=pSvd7Bf6vdloaoGyHZvL1l4nxj8miJ5ad/bQInc6o5rwo9vAdQ8ere8qwcCFmMVkm
	 ZArG6iWhyYXHm9ZjvyJ6T6SAZv2ofLuaV5hNUuukA+NKjj2mjoD1+L517XBxktrJp8
	 H9YzNbMuEyoFBkWNjPFuliEcwv2h8HwmaVudcY+ZtChlihVE7b8MwhmTYJRkVPV5ij
	 +MUV8OjR5KpQHVAIupnGezx0njeQCA/1IXzhcsoZHfnmuF1BbWUGSC37WcIMuWMbTY
	 pP3Sqkl+YBri8/zWXOdBuhjPiz3xs5WVUEA3rONm9HRsbIF/SyMq7gv0gQDf3A8//X
	 40dcOGXqpDf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C90EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055883358.4457.11691509524029430642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8154036d9e6a972f1a80a0ef817f95228de01d44ef1f8b8a9ec55518725c4052
Date: Sun, 08 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770558833
