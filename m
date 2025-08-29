Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF908C0B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756441194; cv=none; b=C2ox0+Wl+cqQ2lsEHrP9KrW+rTwd3AMWcZZ7dxVoJQPlwdP7qAnAfWqKmTSGcqWDjPKhqQTGISDvfXeykSMEJNOWq1LiLRP3SmJiUML7bI9etbenp9kyuoC0IVrk/cDDZ10qZQIb0SBpP9Vqo+doO6gYBTwESoWYCOg2yvDPk0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756441194; c=relaxed/simple;
	bh=Dx1igZwIiRDsMXrWjdaS5J/BEc7RDy2gr2SA0Upw/YA=;
	h=To:Subject:From:Message-Id:Date; b=r2OKAITAq2YRUADpYpD1iq/e0MhUh8utYS+vKc066AfnpwpEQX1TT0FaxkazsFTExwwvtsibJ+tX1W879IaLyq+1eSGiq+AHOMofgRmjGl3zIksOZFvnt8KGrBQ+G1d3KSAVO5WM5QC/WEFHRIAJ3XaFaVXNv7iN4+x0y6GLLoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC3pNwCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC3pNwCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D53C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756441193;
	bh=Dx1igZwIiRDsMXrWjdaS5J/BEc7RDy2gr2SA0Upw/YA=;
	h=To:Subject:From:Date:From;
	b=fC3pNwCdUsUdK9NZn1p1D4/i8tSuWNWKL2DKWh9yQViQnIedpIK4pvart69P3bTb2
	 Lyx2LP5Re3wW/M1GjUTemohCr8Ct8Wkec10fOnwqSF8Rzx8nU42lUOExH13nyCuuUf
	 FbCHE7rPBxMSaVikSwajbDKaU1TpTekSVJYeEVLlhkQavcZNfD/Hx4dwix5DIgewCq
	 JVMMm0rgDozKRnAv9rROWeBuV7zugDkUkGM1hb0deHZnobh7p7nB2KIUY8wqG+zU8o
	 sfbQWhH9tSMEiE4MpYps1EmFodiKSq6aKPJrQNqJ50t4kV5OEpj41GwTDbnwD7jkMw
	 oIUvWeMKz4I/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B0C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644119358.6141.5624285062821214934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b0a915f756f45c0cc22aa97918373e749d84b2f973a3de0415b6bc378cc217
Date: Fri, 29 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756441193
