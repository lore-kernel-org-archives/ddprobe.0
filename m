Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E10921A458
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751011794; cv=none; b=KpPIlWFu/u1TLg9VqX3Oc9byo/5IwkqeeGa+zfYkpng4+0TYVsA2wFmVSYs5qpx0senv4RsPmCdZQ7hfiSDLfoOpGMYvadD4grs4u43v4LWsmtLepnSEpQGxl26wsAJk2uTzmfVAo/sS3inc1Fxipku7otANAlcCIph9J2WfP8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751011794; c=relaxed/simple;
	bh=gf8JDtMWFmGHcEhkzMJ0+6Vg/KiK4HQNFeU3ZKD3uSU=;
	h=To:Subject:From:Message-Id:Date; b=PX7toKj6rO/I4xpRoQp+MiYuKo6ta1HXrStUKMVBV19UNOuQyfIC4DhR7+WPX3K7UREmnL2Ehh6Pi56ilOQ6Pf/FwLSOuDsCZXfe/lLNscj7yHZJ6qmMaYpjiXlMmkZOzfw2Tv9X9Ye4oT6W3Se7//QI9W2v7v43nzODbfyZoJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYLXr1o+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYLXr1o+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A734BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751011793;
	bh=gf8JDtMWFmGHcEhkzMJ0+6Vg/KiK4HQNFeU3ZKD3uSU=;
	h=To:Subject:From:Date:From;
	b=PYLXr1o+OtB5UuqxvBk19be/jveqFG3nRCMcrFn+/d0B+HDCkNQzjWkZtwZyxTkMv
	 f5674bYsYmWV3UzFjMZ4y+fdal3V+S7WmMLsz5QX5EcdFh2u0LX5CvMPsU1XVMr41U
	 A+HK6KLRI1o5p/e+LL93zO1eueuutcvJ8RUdQc4D5mrxIQ9xs1aDEpe8kRjoDyVers
	 ZZJWQYfAPEs5/NryiiTUzqG81mhj8ONWzI2KyUC3DiL2Q5tK2JD+rc5VEd+mnUncTG
	 Z/hD/SSYAQXc+1xRsA3eNKrAUHrxrhwaDSB1Mtksoz2lt0hnRw7bRkY5v95OJ6q44S
	 plQrUdtcmt6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA7C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101179358.15938.2819368011665263511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7aae5aece77de8874470d53a210e5cb95c849a5549c3f10d7da1399c7101a6c
Date: Fri, 27 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751011793
