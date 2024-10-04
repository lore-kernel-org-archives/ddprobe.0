Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1F2747B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728044754; cv=none; b=YLoSnv/w9dUySLVFXFLhEWPU27nuAo+OBRYauAP88am8xVnSg/BBrE3TDRGymSFqhnHRqzgipmfxNe0NGcXX9tSvOQ+E1D2o4U+md9G5pMvZW20+375BF8tE7IqCtYHLIitYz6TVFO844r8Bov0xg9XftSxqmyOQpi6GnuyLZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728044754; c=relaxed/simple;
	bh=awu9WNet/lvbb07EQQ6xlOpsqhfrjseEqu1pF/7Scbg=;
	h=To:Subject:From:Message-Id:Date; b=ke2v/RcJDpF1aArntHNgAeDlMCMFHwFmD/S6a4HEB0+lUME9Zfk+HaOKIWqxegbMT6PoDGYQxKK2kUAW0KuaBei2PzHojd6CUM/40tk4IIR960fPSvMu1ggWN4ZxUjEoz+NCW0liCUTZlHamHT7lpLNeTGXIF2ICTAAUgveb7us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI1mor4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI1mor4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DD7C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728044753;
	bh=awu9WNet/lvbb07EQQ6xlOpsqhfrjseEqu1pF/7Scbg=;
	h=To:Subject:From:Date:From;
	b=uI1mor4vDzj7npiR1FCuanSi72bQJMTPefGtGdH+YuOcJz83zNRFE4qdRJl7f77Mg
	 GI49v/l0bSkieny9hwxGAUueiyoJJyUE3u6DnO2pgzo2g9kKQe6E1CxLlib5A1gOu+
	 5jEjcFpz1gj33RWs4oB7n4q53vBsgwsg4P1SVQSf1MRBaAbDkUjunclHeeN8yxCVVO
	 piekTdKH9w5CNIcCi1g9DEJ1wIsLb5d7w97Ub15YBs+EfGgi0+fnHBpmg4G+y1kBFO
	 kva+QniD0Yi/eDkpYpnkq1M7FrnqjKaDS08JzC0g0Tqqgtenuvr0iE0Ie3IZItv2b5
	 XItM5C5SsAUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F0CFA773
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804475368.20790.9162983720118911006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75bfa32f00f2c1518b5b10abe6d02dbce4369a957d5b343dd6111011e5b51e8
Date: Fri, 04 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728044753
