Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E563E26B777
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763213394; cv=none; b=ZXYT9sJsxuZgFAVA3RNMfzoSOLckD7Cvh0zpAUISdOLXyW81U9LoPBkeHeGl/w/RDWaYg41k46tTKSjRgx999j24m6Cnu01fg54gnv9Wxl6xF1Tgi7q8iC8DPBd+AdlRKNUlR+Bbi2A4gG92LrJx8jdjAYZyy6gjg1Ioe/6GUD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763213394; c=relaxed/simple;
	bh=5ZkfvMtVTm5UzuJp8EPsWv11RslRACrVaOvEFNKqFyg=;
	h=To:Subject:From:Message-Id:Date; b=NFpkZQ4khD3xrzN5o3yf13JZkD3WDI13CrzXbjTzPYjR1of+qDE+4le7Z/KGNxS1GDG6aVBrnU9r0QkN5fXJjr14kcSKFjZ+XljaAX1ky+zDqYqvGCQonBs3uocBlUKW71+rPZMEcdSMsRwwLaLMWWibwHsL+A4jmw/+pDUVr8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa7xzO91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa7xzO91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C22C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763213393;
	bh=5ZkfvMtVTm5UzuJp8EPsWv11RslRACrVaOvEFNKqFyg=;
	h=To:Subject:From:Date:From;
	b=Pa7xzO91TdDDh9FE6YJ8iRvIqnlPCMxUsTSeuZKRrShsEffi0ZcsQsw+A8D7vzAJI
	 WCyPUjpyxV9EdRN1Zw7CJG0m0Qo9ZNyHZIX7opI75gT/nEbFsFDcC8PhSFPI3D/WYp
	 SXnaiMA2J6CIkesw4wGSCJB53KCq5amnu2y+UsystAx/DkHAignspgDsm0YuXTTv9Q
	 Xl2wt/bXJwRK9cGw+jpVCH8vTla69iHH/BAdwJM9/h6u3zDzoiPQk0nUp75/fpYUCH
	 YqZk+h2PScoMQBkOxKRtVaNYoSYmDFl/5mqtrpdRjC51aLKZDb8BWZv2CW0LlLOw/K
	 JVR9mRkH2gcvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D9FCEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321339359.28996.9164176799748052703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b109f17c4c0de9c20ebb63c0b9fbb85b3df6628433d71bd36b5865145c9d84e2
Date: Sat, 15 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763213393
