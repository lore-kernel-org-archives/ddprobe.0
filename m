Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009FA17A305
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388594; cv=none; b=g49fjyzf/Q+c1OfKTQj2j66gPaBo//5hSKiu5imNp6gOTWwV4Zl9TQsWswCia5jUJABHFxioG60NOu6qPmm6JpayY9zJ6IPINJdQxS+jTBReG3byRszutYDdps4Wn584pJOqQQRnXGEbpfsbGjFoQhPhJUtyfrFfvVil3fovyxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388594; c=relaxed/simple;
	bh=hLotFQgJ/XSMvlzSJZ1ymAd8WPeohQt5hjNkH+eJcNQ=;
	h=To:Subject:From:Message-Id:Date; b=MEdc8EiIotVgOVxVMwvGC+aCQk6SPPw9lMkOYTgl8CXZrL5jB/4m+IJImGaxPWPqwsCubfgebSdzVhlgH5YR26IFymmgwRxu/d1fLZSEc9ZNCfn7sgCIoh7TI9oCcmxe65CIKcVEKBmfCZWX/QJ09sZjRuOHYhOreR72Y1XIUJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2NJ5Hgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2NJ5Hgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760388593;
	bh=hLotFQgJ/XSMvlzSJZ1ymAd8WPeohQt5hjNkH+eJcNQ=;
	h=To:Subject:From:Date:From;
	b=N2NJ5HgizXR56T5xf4qQYfGaO47qkqRRyJpUs8bKYO6m+7igEiiH44Ae0XjZpYfoR
	 TZzmop9l5NPg+pe84BbjUDGgBP+LTjM7aqz9ZudGWwxdJmfwBxDjO6uxITP4aw4gPz
	 qPlfwiqYYowe2lHWuDRotfyTWH1Ng84L/JEesatvkGVuDHJXEhgGBCrOhk6iQStXDj
	 KQ5+kLHCs9kFwATkofGDVF4XKin6aZcEaX2yUlHbOowkR45+cP/K/o2jzyvyKwP4pG
	 fH0Ix5ooT3t+ctQq9FUQuY0humoi0Jkgny+EdtVkHBoah64k2/ZCJFyc8LhvWqNNwm
	 HYvmEVl0O3Fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A64CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038859358.32440.5683279564155442905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1221bef2e9fddaa0ee2429ab7ac6dad0c4ec773af6788deeacc727c370c2a07
Date: Mon, 13 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760388593
