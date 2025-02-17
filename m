Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C7115F306
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739760534; cv=none; b=H6oIlpL58nt93mKpKl5HVcv48BMWGDC4RYX7R08FMTMrRSKE0/3VXU5OExKjwWr9771RUnDpSTfupOSqpTKKA3yWy83HTEDIL+adcK2IkkuHSMwRvokk4QVSGBE2FlmcFIHvvKn9qXXBH+nDM0jH2SmfJiTQzx/uy33MS4pUi6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739760534; c=relaxed/simple;
	bh=CEEBEuHE2c0yByuY2kCAGzLMkOyVy887hGFBHPpQC1w=;
	h=To:Subject:From:Message-Id:Date; b=UIQ2AR82RRDOVS7jqqX5bApDsCFqpNxl0Zfkx1PfyyGyFD5z2/sfGYQ+ORlzuH66FYdv7DPcFewjjnNbonl6ViSdMY94WVOkyIyKIeQOF3ZJCREgbogqGuqPOiz+PoEWlFZeQs+jNf1ybeyApyc61rku948KXFFFO4aMhhoiAr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUHVDVHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUHVDVHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1060C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739760533;
	bh=CEEBEuHE2c0yByuY2kCAGzLMkOyVy887hGFBHPpQC1w=;
	h=To:Subject:From:Date:From;
	b=pUHVDVHgsuysMNjqFZ73um486ky5dSLtLmnYm7bjdpx5bEARvjju6qZ2fx6LFvfwO
	 gOl+VeQAsBOOh9i2JkLHFDpn3nSqQ0rFgq2lPZqzMImocU5JpIq2hRXqd+RuOgHI1O
	 hHSNe6C07SkSdhQQfeo6Wlc4Q/DBImn7Hjd+ilupo1JHLZveVJmn0dvt+QuTjWSNQM
	 HYsUXEeUbZn+XuMC+0ZUULCJE2+vjsEr85QTPOlQbNa6ZjorhKfcDKV5ezf13fiADj
	 ApEBmKD2vzOe3qpB5D8Ew5/Y8xHh2c9zIahKnl28nd4zJZFJTStyExJsyRELq01zNH
	 d/3pKaCEeQslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C0C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173976053359.6529.15466353848064100965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54358734c806b96dda36f572294c8272f89302abc220e9c29232e208cc08eed2
Date: Mon, 17 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739760533
