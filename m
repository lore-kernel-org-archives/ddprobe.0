Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7413CE4A3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773831894; cv=none; b=Tw4wpbAg1mObZ+MzknvLTUshbHtQwyh+Adi5UtT30FoHC8o6JNIGVGPgt/zucplUqGIB+d22nXhiD7uCSzcjxshItmAC+TF6aNeNzWISuxqVD7hDbCQnTJYJYz9hB2p2mL5jgoqsM6aBkQkIIvEIHJ08lrwmTYu2zFcKsCNt/Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773831894; c=relaxed/simple;
	bh=JAr1ovzl9z8lqtJOdCi+ktGp36QO+0bpSbnkm7ffYhA=;
	h=To:Subject:From:Message-Id:Date; b=jAiLHmOJgACX+1HdhMFFjyp0jvCC2nPxmtuokeaHaargDrMSAdlCDPFAV5XvuT9ozA7TL4go2AKbW7DfPjS/dQR99C6Ysq3MjMYas8JvBS+/ruhdBfRAGjzqJQHTEDH3XnC4JYWaHN+MB7vV+L+rNcY41krT8dHEpG0Gdjwcqto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDx3FQDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDx3FQDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C8DC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773831893;
	bh=JAr1ovzl9z8lqtJOdCi+ktGp36QO+0bpSbnkm7ffYhA=;
	h=To:Subject:From:Date:From;
	b=WDx3FQDns5w1KkNwdExFQUYCwiiVyXfJUJKjZQ6YTwbCsV5sTvAa2HrW1n62serAk
	 k2l6moe1cA7fOXyJs2yJzzDtIX75LlEivcUAZinGNRPIsaj/Swd9zdqGIcKkoFcwao
	 WuRBBPfmpus47S1U5QP6NAy0s0xn6uk4PBVeSXHDY9uywlD+iqRFJvIVuChQDuK1j0
	 tqhegvnvDyC8qv044xxcvUC2E49Ch9u9cODdd2EuOnL2ZnNhm68LljQ2DU0D5k6XBf
	 ptzAIHRQNPfnVXD1vyQCYk9cc/M+jg5gotMbyVwAVycq9vTLHmFhdSHgt9uRkBozl5
	 HAMn7Z0My399A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95D103E163
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383189357.11789.2025354468911454484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45485c482d3c5fe92195ce2a5af7194b3a8bb995194bdbacec8c59532695a85
Date: Wed, 18 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773831893
