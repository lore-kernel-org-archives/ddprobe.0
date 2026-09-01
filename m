Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598C8446BE0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788292234; cv=none; b=E8h/cZi/jye6h1THrTn4cmSGRDQkprkr/CFFV9BUwM4CNjlxClvUjd55jIAVxmykt0ECify0SRHv3VwUaEetjfPWaso4ACbywpngOyuCniFdeBaHDZnbCQ00/6DZUgmELP5GBG+LadHxo/O2Kn81qOpxNHrvcnUsiv7mjPUcLrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788292234; c=relaxed/simple;
	bh=TfHlSMldgmw5EnOtWvfvrQ4IHLKd4uFgF7kgAG9h1H8=;
	h=To:Subject:From:Message-Id:Date; b=qWRw375Y+yA62k1wUH1c9b1vXPoAw4GWStAF7AnFoR1RPMwTv7P2lf/AI5yTUj/61fjKzqFD34IDouejm8rCkPaBbMKudecVsbpjVG04Mk/61hGtQEDY9xyro6POmr8inE54co5EkT1nOtV0kRSHxL1Wj3JpDOPFOQA7xoZUNzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPH4WGlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPH4WGlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86A0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788292233;
	bh=TfHlSMldgmw5EnOtWvfvrQ4IHLKd4uFgF7kgAG9h1H8=;
	h=To:Subject:From:Date:From;
	b=UPH4WGlcu6reWoKWR7QS41WFvpzZ0ZU9iY2HHbfVZrkb+9U8dX2cfvIwCeoqF6a4L
	 6umT4DtSXnJ6Vnog24+OiKDskmdG/Y9jJ455NgGYKcan9rxh0mzOBpoxITjiHksXyN
	 q9LlmwbTgI8JLEDAySo+W1/P87nbCM+rEW2RGml6WHN3wF4F4U/u9WLO2ZhZae9m5g
	 nmLJkNvcKXxUgQ+j12M3MrVlDlL4CrmDtyYy+LEsc8LrOl6Dbpcz3Mz2TRidXOitew
	 JVXsBt0bWs4QruTucNBZkByTpYFjPW2vLbLqRR+Bfc4qZiH1IiK4vXMHb4GEge7LTF
	 KXkOIy76f0uKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9DC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829223368.7271.7762113853670991571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adcbe83590ed3bf08eba783fe48403b3ef4a34ec4a29599e87edd85e3b2cac3
Date: Tue, 01 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788292233
