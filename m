Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7242BDC27
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769843634; cv=none; b=hX/mDpQTAm3lphzY1xcKLHC7S3GSV1k8tajGiLuawludlfNjrkdOPnVGxbOrYfOEfQTFNLKeaRzoNhhmge24Y/GZHlnUB34/D04BfiWrSrk0qDPq9ycYRQMqweCGRtzUcIFC/RJWyuX8nxvCwJBeLGQKxHp3gya1WL9w8ZCOIOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769843634; c=relaxed/simple;
	bh=RjD3+1ODMBo7qVAXyXa8FgqinPaWmspXSxLPAlfXiac=;
	h=To:Subject:From:Message-Id:Date; b=rJ+kaGNtXhO5Cexu8hovQAXeVsJaht35NrIGyvWbOYdsHScq+ahMjWRb93fjJ1tUQnBpDxh2qeF+DNVjsMUx9kDYxtrWnZY/3MxzcvnAChy2yKtdQHDG1wi+spK53nO2Ph4fhyMQgtvrWG+8Fw04cu999qg9cvKJixbjan7e+aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2mL4RE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2mL4RE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7267C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769843633;
	bh=RjD3+1ODMBo7qVAXyXa8FgqinPaWmspXSxLPAlfXiac=;
	h=To:Subject:From:Date:From;
	b=D2mL4RE0hBQH+514SpC5DIwqKBDa0eRgUfOWJPIj3cTGuGR1VP1CJb44Mcuk2WWCO
	 XKkF1ksgN+eRgtNXbN6ZIdu8KM7NxTQ4qnDYqkhfGSCyWrX5dOZnvXW2pUScyfcYLm
	 VSueC3qz0DMa1scutu4q84ockWhLuAFhDU3sQEceXNufg2sGybr30Zel3jGHr5n/0T
	 2opI3pEtoE35KkdzEjCryCkfAS0970hciAeaSW9iOO/qFopXr2JKghIbmqY71lIv/F
	 aVAzsgiJNzPHD7dBvss3NUotf/UvmUORHLzyWfjnJFwg9RxSGIPqclopfbrgJCJ4s3
	 uIJscXRx2zTFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF8D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984363358.2374.9890337904171547812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e20a0d42473c55cc66c49f5838b62033f9b4141c5aea95c21a1cd1005fd9ab4
Date: Sat, 31 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769843633
