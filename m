Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD1A3BB44
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766112834; cv=none; b=J7Qhz5Y9UZI5TNrhiCqoaqOW8POCvdQ1dsF5jm3U+AIgPheIQqWmS1jLtpif/QQhVlqgAR93qw22zpiOaavu/EeCIbydOPllUzk9eBeAogUD/ChviHcUMeZq5dX5coQgsWuudNeAzO0RWoWWDP+lUSiq6IwzulSOMdAwF+e5IZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766112834; c=relaxed/simple;
	bh=yfN1sVDd7Um/lOYFc1EiB2bj4l30LZxJ1ms3Jo9Zh8A=;
	h=To:Subject:From:Message-Id:Date; b=cY8Z555LHwcZt2++tD+uMgjXvmMhR97k7ovw5ZryMfegpbpdDIew5wDXen0vOysOsPs0DdmjXS9icInWMeklvBqSWcAZH2q9ZY462E3YAmegqgP9kz+XnAhv1aAxJXwO/u3Fl9LztW94SJGp0SiC8yvjZvKO4RxYxEXYQ/Rro1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDa8SLrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDa8SLrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442AC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766112833;
	bh=yfN1sVDd7Um/lOYFc1EiB2bj4l30LZxJ1ms3Jo9Zh8A=;
	h=To:Subject:From:Date:From;
	b=RDa8SLrFIYq0ABCV3dTuzbzyEIYpLT+VIzHX6ieAeRsjXsNj1hpMWYx3gp5U8t68x
	 GlCczQXBlmr83Y/F5JoBVnud4p943btH3BC3N8vqPAwjQWb9sCrNvxH5cuIxkQ884g
	 RC4EZYmVcCMwRcfHJNGNDKIddk5Ke+Ifk6KL9aj+KWsmRxj6dnc3igjK430GJNPnw7
	 XJndhAGqghGbKqS6c2Q7cOZH0vt89QNLCb7F/m0q61jZUFMw8g0govk8+kuWYr4JtN
	 F4Ldl8Ob6pDQlvYnvZmBJCQZJQcag8c+4vi8ohYPAN9uqUppBAbodKeg0RPJocoBTq
	 dfkjqfsPOO02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93690D711D5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611283359.22466.5108176619327491183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2ad2e7365553938d14d57fe46e00b6c89f719f5ea587eda982cde2c7f8d0f3
Date: Fri, 19 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766112833
