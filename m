Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17B93597B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746838793; cv=none; b=UzfJscPtHNNGPIx0yw7udeFt3Bjk9NxY8UO/ANx3OrJnj+XLFufcgx8ycG/e+O/SEHutm+ZMF8Cg7ldxZcNP0z+lYxb557yL96WGcr8Em5uKR2A378BNSgJO/RmNZzxMQtoMg4PKLWeM2h0FyEvfM8deE/jAXllrNfOGwGFna3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746838793; c=relaxed/simple;
	bh=4XaVRT1Wh0X1D05pesUc0hMHED9olhHAgfUb4EfP1nQ=;
	h=To:Subject:From:Message-Id:Date; b=J8fIC90fufRzEd+aSTqMrjIZDiUD+reBns7jc+9r75gSbnd571r9PkWaDeXMMFeFZZjzQfnuIU2owbOkNFlFHEO0ghgheBCEEMxy4Z9A1uGIQmSmsNdqQ3HfFc0By7KvXNI5Ub1XqnAGkI/LtDPUy1A33l/6NADYiJERdBO7Vl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciysyZil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciysyZil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746838793;
	bh=4XaVRT1Wh0X1D05pesUc0hMHED9olhHAgfUb4EfP1nQ=;
	h=To:Subject:From:Date:From;
	b=ciysyZilomWdtEQEFAX/9Zhs79WrhTHLVJ12WqsX/doywC/+nGB+lYMNwRlcC0IiY
	 fWlBm7BaiaxqDXR6lpJJTkHeCt4bmjqdcrcbm8ZyWM7KNnNVBI0RMYDgLudmd0LGIO
	 9V0CjSV+Zf/sP6wYVrIUaKNlL4Kq5Ig29fMW6cqAcbHnU7m6nSpVkDRrMLTyzBt0uc
	 iNvlI1PzMTc9GVIGDcEmcmkEAoZVyd4DtqQ4LFjfiR9edF0LB7J6xvRBCM20medU79
	 eyvNtteBEizNHjqIlrPUJnl8fQt7c9mJINVLjT80IfmMGNswy9G2DRSsUhTjpC1mX/
	 B7ESHC4ZvDcVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D5C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683879357.6882.6239616320264164691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa428ef237c5c351635f53f7bb2b3f20e4cbe480f9d3d014170e10e721ffca08
Date: Sat, 10 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746838793
