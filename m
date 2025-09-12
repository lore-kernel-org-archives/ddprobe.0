Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97A296BBC
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757675395; cv=none; b=gLYUggqQPNlNWttU/TvclEiN534/qfHVidIuX+IEbMMB+eeQPpCFxprmRhDxsXYTDYEfFp+Gw/pKb+Klm1Hmyed9ea00cT+zu3j15ug4N0HQPF/wF+CEmkeBp+UZ6iCF2HK0Nc/O9IwTOzT3Ox3QSwE+X0RxVxelgGKmksrHrX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757675395; c=relaxed/simple;
	bh=l2yDKNYBb+lY30kRGIXq3u6UApg/FTxbtJGxMwoQ7Fo=;
	h=To:Subject:From:Message-Id:Date; b=vAT5JgMVVvxa9+CTOFB9/cFIAO2zMxITlrmO3Z+iCUsSTh9r38lVt/UTLY9TZnuz2So4q+nHYdlJAl5kOOIajrJVhCdHzX7cXUJF2DeXUsPjePIvixxFFT72xnHSPsyu0FXW9V5WCLnGZn0fdRmbDeAcTYOy1OMG7jCJwY/gOcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKIYj3nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKIYj3nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D67C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757675393;
	bh=l2yDKNYBb+lY30kRGIXq3u6UApg/FTxbtJGxMwoQ7Fo=;
	h=To:Subject:From:Date:From;
	b=VKIYj3nG+q7QMR8CFjY9P2gKYqAnXfMjfMd30jcZAmeaOUxaenzgMkWru/ZuXTcei
	 u222qI/55vkmaooppcKmA8OH5XN9cJTFn09luDdse+WYkn0w5+a5qiOoVD5GYyjLg+
	 iQXsRAC+YGERbFBbpn8JkysRbfaSvJWNyfEh7J+vwkF0NH6JlpxWOuIaxFJOwFRIWh
	 X9AR55XW5oKMM7rkuSfKbCyOJOuFkP1E5tELif27qjZnuhD284TUIdY9VZMYERCcp+
	 ewK4Qq+RZQLds92S96F5U+5sUk0pgFlY6gR0FiNsa0g6A1JNksrASYiRehuh6sDRMb
	 Zw4erbnQGRLNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F408CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767539357.3359.2117476883381123061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84951a1850261c926bf6939e18af064d9bb87354fb962ff6220c177538d049e4
Date: Fri, 12 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757675393
