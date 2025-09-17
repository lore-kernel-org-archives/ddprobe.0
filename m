Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42D2D7391
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758119394; cv=none; b=GPB+vE5Ev3c+6PQe8PVikp2MaH3Y3/7GlIsTfE+UPAJ+R2WVJiBpv5T6NhG2ZPU07CzIBJIVIJG7FnuGzjr5ydRE6npe/DIRSOkTmmR7+DfI3ANHQj7P9yAlTSWAq7tV1sEQaU4JKvSEJFM7N79txEjNUfubOxqkWX9s0wWdrLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758119394; c=relaxed/simple;
	bh=SGbQguhQQadjU4lPOrmslVZvuLTq+u0DlWIR5CZlU30=;
	h=To:Subject:From:Message-Id:Date; b=Dzm5C8zj2cVkXIcofEFoR8n7/GTfjP3XCEkANYKXqDPItyQhoCkTmWtUkvNtpx2Jtqk609hmNbasPpVAjsijDufuE6pb2bkjo7mJzCwE+Ok9d4ojfjw8kDSVIOxWERbOuPaXmlPltj8RFcY/Exb1ZtrTB+hTUiurtmFxkPhW+Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRsJi0BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRsJi0BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758119393;
	bh=SGbQguhQQadjU4lPOrmslVZvuLTq+u0DlWIR5CZlU30=;
	h=To:Subject:From:Date:From;
	b=MRsJi0BGZapQBfYZpsT9zQC7Cm2j97eokhwUjGgX2yg5mSl/ma7qEqEojfmI+/MP/
	 Q9bJQ9ku16dgq/zbq+MLp1eVtQM4sFv8gkJWmIAVIWZ3uzhff7TMpgFtNvXHYuoLDZ
	 XPfSpnKokLuZ4XuRgfc4iEq9Tq9R4mm0uXHzatBoPkSP9Zif5EmO2as+5kkMyy9q5L
	 6q1OQt+Dqw2h716V6aj+Ud0fpNIDtkgz7Ro/hnOex8mzqpTcRfsCM3cjxcq5KzEN23
	 wtFOtzTwslC805klO9hb21pP1Ey2iELfuby/499pUlTio+Wm3vBCOf3vYwB5TrJzQD
	 vAZZAINfn1MMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811939358.30725.4761599268983195251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6bf4f08e83086e84efc581c8e68a29f1bb81e7dfa69f080099791af25dabc4
Date: Wed, 17 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758119393
