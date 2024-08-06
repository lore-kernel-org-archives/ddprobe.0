Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D8E10F2
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722903354; cv=none; b=U8EYOZVW4sXbZw5Is6POyYTRlsHwmXoLsgLyb/afyikmc+LBUw/z/Zu5z9zGdKDDGRQE9w/McNrZ2593Xx7FGhjAjh1oegdW86DNFOZ1Hzn38PxGq5s62bfZCD2nQ1dcEFokNlyaAKiuWtPR8s4rspoDpdmVyWBSKqUPzl18wZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722903354; c=relaxed/simple;
	bh=68/xxikTDz7xymS9V6TogU1u0j3n1L7+prMNLcYbKyc=;
	h=To:Subject:From:Message-Id:Date; b=eiDNSn2HpZ8EKXfkOxeBuN1q9kCHWjShJqBLBUkLhTII70M0KzwqozQiUkllby9xTkWuajca6rq779rm4AW7oesHkyNA5ezc+MRFqSGslrE+W38xqtzcAkt/VYySxr8AviUOHHihfC3JT5uDINFfiata8XviJ7RV6kkTbVDVfB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJUGhXuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJUGhXuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF5EC32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722903353;
	bh=68/xxikTDz7xymS9V6TogU1u0j3n1L7+prMNLcYbKyc=;
	h=To:Subject:From:Date:From;
	b=WJUGhXuza3PyL48kI4ZL0IKaPlkO/yC0/m45UCMlctiA2GTZXX7fKxnT5NMhb2lRo
	 wimf+TriCxeR9EPdNxJgFBmiM2jXkGKi+RGagasjplrbO+TfHUbZ7axnGdcBho2Nj6
	 Vkm8WhnUv/JP4Le4cee8LsWsSaMrEVINuEgmJqeRTmzGFPrj+ZHjtyAnFjopL7yI8Q
	 2cXiaPCI0/QcQUIbMv1Ay65eMkxFH2rGBdvzx2si4JwF1Nm6odAi3CYX0omqgwShkw
	 ThUItIcuZYM/EbLN2XqCXKld0Yh9+3nCe6yXvAbmP9qRiCiFAjNRrJNP/12BiyxPwI
	 Ertwv80DXtxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0262C3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290335364.5210.2072429816295779271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a936060b08af4314b5840a948a889477c5e7808d8e73f17c4a037a4ea896a5b8
Date: Tue, 06 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722903353
