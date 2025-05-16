Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306B7192598
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747406994; cv=none; b=WOOKwSJ2zrMsEbIG1WDyEgeJsvzPTji5l8ZLei+cEJjdxLIcJpiwCpYsBaUj2p6aTpZuB9KZtFNPBgNWOWAR9Ae8zPpcHmGIrXv12PIsnXwlrpWobnOKFlZkDA2g/xP5fdmK8HCTQoqgHmAd1M1Xsuxr0RE+NrViY+8HWiBYRbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747406994; c=relaxed/simple;
	bh=u+5kneYnZB/eMxFxYceV+LBbfGmMRMQDicPEAFZp/II=;
	h=To:Subject:From:Message-Id:Date; b=H3IBWEfJEhfGBSMLDTsTC/2tB6NMskKz3UjFaWM1EZL/jXUH5jxCo5kFeYZJSH7XJsfjWic+J2rAwQn5gnsdYARc8W7yLw6qXdUXlELF7fNIhhNShY4dRKX//dM6Q6AsjPCktJldYxndB8+7MsNoPSfIANoS2n7WHv/BHW2XOfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk2Tzo6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk2Tzo6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2991C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747406993;
	bh=u+5kneYnZB/eMxFxYceV+LBbfGmMRMQDicPEAFZp/II=;
	h=To:Subject:From:Date:From;
	b=Qk2Tzo6FIaK+jDtnpjW5UGzgstXIVYoZ5D3OFH5p8GuuJ1vbvUoIHcb1ZRxF91g2M
	 4t/SzlESMMtKBjdE0Pf/YU4yKX4/GNfaGazgnHt5p02ijkBhHZ82xgx9+pWQvObSXa
	 uRusZLzZuJFD9g9TDw/a+cliugdCDTpX5gZHPMWXjffkS1BD81uos0vUfQkNUAMsGv
	 2C6QgxRsOI+E2C5K7a0cqsd1i+XgBTvAjRGwvHCYGgJhKOr7uKy5b1h6NTxZX47gG8
	 nPRXx3Q/FraJkzHMqRTo6Fyx8EA10bNybXdkeJlRSKy5fYEdFe6vdHhoSKfjyFnHw3
	 oy0iXFiU9/6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90920C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740699358.29217.16084304181592407742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7b2e78863a264addd56f18242aeafbd623c278c9144b4640ea7c0eb5c6d38e
Date: Fri, 16 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747406993
