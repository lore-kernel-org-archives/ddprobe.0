Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180193624AB
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088494; cv=none; b=YThKzf8HPqS4XaUTbNH1+A7pLlJmizL8MTnVyQAgUOmGFLvNKzcocL6MOFzYcmkbAESslB4PQRbwxc/m5YurxDsYaqZrdRwAPsZ3WQj0EOwhjeB8aS52APC6mPfy+n1pyOcvoDjRy8RhXbsw6yhtaIF5GQjLV6usMoNZXlLKr2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088494; c=relaxed/simple;
	bh=4ckjXn0wIGevUaHMbW5MUVyd8XkJK18sPFXugUOsw98=;
	h=To:Subject:From:Message-Id:Date; b=TGZZidfe27KMNu2/3yiCQhxL9s+IIE+p2Wl/T2Slm76OrbvRBu7LWdk2EfeWx56Tg3CAPKQf4YgD2VpdZ2wEgGgQPEeXWWPdcgszQyFmBkhdsdMyT1rQk7CQjt6fncf/w6jzVTFYPAtrA4WGRonOMKKoTq4XMPCjTDsmJOjjzm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUykslSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUykslSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773088493;
	bh=4ckjXn0wIGevUaHMbW5MUVyd8XkJK18sPFXugUOsw98=;
	h=To:Subject:From:Date:From;
	b=BUykslSVTPBpt87CF1Kv8CLQsQ4YNNXIeQ14kTBhsEyEwlj3JdwTTBwPz5Wljfd2z
	 CLc/eQv5gxzaDuR/QAHvaNqDtCzD1mrFdT++C4l/WSKKMG5jHPbrnD88kP9Q6nOT0v
	 W42uAUApb1DJxIUEgjbkM7Z68ieeNmP7TCsXzJna9TYKghve7a4+zvQ+iOBRAG5X2/
	 zO/4x34s7QNEGBtGOhcIRh8vn75pj6V63f8KEDYYb/xkyZyZsVycCUDfy/HhNLOxus
	 a9DNXPHiaAYh+FKXzEP1MKN7bZm3wgCQQ8C3MaMim4mwyD4TPGh/mOOB6CRR9Ulmfn
	 VoadPCHWZImtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93360FCA17B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308849358.5562.7755106300957580458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e186a2af0b2c88507b9b225cf6b1142cffecf3b3f200110dc8acd05340c6795
Date: Mon, 09 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773088493
