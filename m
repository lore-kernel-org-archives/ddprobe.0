Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647B2629F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752459594; cv=none; b=qLA6BOz+ESiSaOGshEzNb6J/ARDUN/LUImd41Jlwb8hHORMgNyTp4c0+7N/yZKN3RZrYMCMicbYWvivZsw6vJkYM3IIXF/iTu5W03Zzty/f1TgeD0+OBc/hJFCRMhM4Ed1AUmlKrasLMaugycUJ4Vq0V/GAhC1rjNUXRZMPk2SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752459594; c=relaxed/simple;
	bh=Up/dJJUgwYapeZpbZewUlzm1uNT0NVYd3Bsc7ghLsBQ=;
	h=To:Subject:From:Message-Id:Date; b=i8K+spDPyCdm+o5NLfjN2MWU4KaLCALz+cNhgaMnBEgVY5GeWf9h4kTVXpvpvp/hnQtDcZuHmPt6FQI+d5G9n4gQFTEKksogAyGTOlQdsR2/waZXlFn5e4mQvsmUOmXquLFx5uxv5+8+Vi1IhHxGZ10x5fwCeS1OOBJlmhOHJT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea6LZr1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea6LZr1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A309EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752459593;
	bh=Up/dJJUgwYapeZpbZewUlzm1uNT0NVYd3Bsc7ghLsBQ=;
	h=To:Subject:From:Date:From;
	b=Ea6LZr1pO89vfhxSxuIeppHs1EH0REBW96VOUXffl7GMIctSVmMRqNYOtpmWQiT5N
	 RzBHrpv5Or5z4yyPp9ne/Zc6p2VLmcnGQHtJVu/aLsBXVYAeNSdFwYXhCOaMadmBEa
	 18yVudoCXmBbSQiFJ95ljZj/zEyG7LmHFrjAt2AgLtZBeJnghhA8qJhzd20jphosO4
	 wrB/ZPvI+vavocDWJpFPxDf0zjx3W9VrsYrx0HTylaM5DYT+3ecTTtLRai4ul984hi
	 zpGvlQO7dA1Ze0HPMVSPpQYh96dMq8vs4smtR3f/iGf/ZWg9GyggjF7eiV8+Axcsah
	 I2k4xDdDClqWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156CC83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245959357.15625.1971796391189124196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c732c24b0c8a3e2c958ef646c065f086f187f17e9a8c07c936ec5e239f2314e9
Date: Mon, 14 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752459593
