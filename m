Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0A29405
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761247194; cv=none; b=UcCM1sT9CWRDfNl8pBi8g46wggiAUiHD2f7fG1mS7U8VtBn7PlS39XDqIgkb9x8Fiw3g7VT7c6PwbDeG1W/xgyW0vhPz8F7TYir+kn67kaH8bOl0lAxlTeXNXFFJYhNeRZnKuTtUgkQaGNceE6uqeLgPfRle/ERRvKCVwoBKVYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761247194; c=relaxed/simple;
	bh=4zgRq9wOdq3J+V8hMAJTS9qj7ydfh2B1+8w/wEJ3o0Q=;
	h=To:Subject:From:Message-Id:Date; b=j5eyw3zqM4/vXu/6oUTZyWcQ+nhNrOQbsaCR6EIj/OHKzDcndzgSGCfjjPIS3yyYlZ06mEH1Kk/mzADIBNzZ05RZfsmIVfoNdZaw6Zzm7HjMbxz7B0bScSw10ArCzFFqJSTuAoEIJw02S4mVa8VtNdN+9C8PXQ0IDzlHPfnZvaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnS5yESb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnS5yESb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5092C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761247193;
	bh=4zgRq9wOdq3J+V8hMAJTS9qj7ydfh2B1+8w/wEJ3o0Q=;
	h=To:Subject:From:Date:From;
	b=gnS5yESbiLCDiVuyCBvKSIjpu2CfUeN6YWvsIhMLm7/Q8Y4Imleaexleh4t9SRgK6
	 TA9xUC/WKp3GDvrl+LkmzI48gEp62BbRXqrBnTbY2IqxjGQFDd2Bkzh/tdfagopxDq
	 FLSLTFV+/g4+UFgiT8sLc/fdZGpCx6H72YO97/KeFDmg5OYUwNoXATZujhq9LlKigc
	 laxmmUden4FUtNkD7VnNVF/ijh+oTaoy+4BjOVnwZ1zwNM1MAJuHPcxpZ4ECo1Xelk
	 Qi638OVwmT0LF77yidBt0aqLEXcqCGOhr+V9cp001Yat0LLg5WUkw3vKWwmaBe2J0m
	 QM6ewx1YavDZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EADCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124719358.26990.13843053375896011407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf184f91f2b4c000154a696dcc72e7e76ce08419b1ea350f09b0c33cdb896a1
Date: Thu, 23 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761247193
