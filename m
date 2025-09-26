Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0B915278E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758907195; cv=none; b=XYUgSUGIYyG6u7BaGc+A5cWgTo413zyBRD7HMvtjUiFgNke4qBByBCg17Aw+u258nFnv/KFXzmvVlSO0VG2HAt25Ty3J9WMNZa5i1NQ8vHnricqTuBMSkieJQJFtyWFX65+4A7yZa43Kmau/m7jws8MCfv7pFQxrNWE5QFrZ+5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758907195; c=relaxed/simple;
	bh=7HrX9Mysp4UE88Kj0chEl/sCqb+473SPJQTYm611GPg=;
	h=To:Subject:From:Message-Id:Date; b=jyGaIPYlCMJUSu49yE9Of2H/GwERQoEWjCDNm4VmmZWleMfxiFekTt7xniNYUDbudbWKJ4lrHxtrFv/UGucJVqKl6SGBCq3hHaNI+1aCb6G5h6utWGLULfdo89IbnYdi1KMeL+MvWBMr+W4TMvlCaRG48m1LH48X+EBTEtahkqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF10zysZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF10zysZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E0C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758907193;
	bh=7HrX9Mysp4UE88Kj0chEl/sCqb+473SPJQTYm611GPg=;
	h=To:Subject:From:Date:From;
	b=LF10zysZ2EFg+XuYPmfYunQ2L0JyBq4CR6FeY0XQdI1227Md3PoMZ20XPf5/zpn3V
	 2pwDb2eTDn4MZ6R3IdzUVs8zXizUOlY+BfQ2G0YAT5kxWbE07BrknqHlFMsszznxml
	 E/t+LqsW1nZ33mVR5lH+2aO6Z30E0z0h+8DFpJ16y/mWshpykBKaZ8t8j5D9pKp0X+
	 K3J6gOnH8HzMYSc9/UOlR5ZWX2b90VA4H1i/+WNaOabofugk0AQmxOO14x9S35IMF0
	 WfHSCMyGRanhiFwZceAgZ5ulRaCEhwSJNhJ48plnVyVXPKGjzcOQOpe53pwlRBKKcU
	 MkZOe23DOcgag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EDCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890719357.10724.11725393744397146749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae91bcb2fa8c832eda4e08b50164d62523f70eabe2d21db5d7cde7612e895c0
Date: Fri, 26 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758907193
