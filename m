Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0855842049
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770480834; cv=none; b=loqGHjoZ5nQOHuIN6N/QmseyPtfefPWRmq4s9Pe/QGiEMwtKfAQxRXiCPPA7CItjlHNWdk3BGuKhL0KqedUtPQc6b+QCmXBfkWqJQmKToPMmXJbwMN/ZsZabH9Ip3soqTLSO+b+eK+Ps3Po5MXVM5N5qyQQIWhyuXwOAxbo1YTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770480834; c=relaxed/simple;
	bh=cscAMTLT3NrM637SLj8qgyRHunbcFeYZfdxI9OQ8OUs=;
	h=To:Subject:From:Message-Id:Date; b=Ch6RWM1oXCKBpL27Tqpa6pqsX70S8RGq4Nm9+dZQdIE8rIXaHBfH65Wk4j9tD8XqDimoG3Pfqy6ljiPanJ+TCh0VmJtJEffUUud/kqrxdqIV3YdqFHBBjYCZ9NCLHlRIsz3WeTnXwmkF2p5e6lFyXi0XreszrLfRrVzRwe9qn3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9TlXlpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9TlXlpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEEC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770480833;
	bh=cscAMTLT3NrM637SLj8qgyRHunbcFeYZfdxI9OQ8OUs=;
	h=To:Subject:From:Date:From;
	b=c9TlXlpxunIq7v1rCY8kpEFW0E8bh9kiqd7zfRGWPlFpItYM8OCOmOhMC33cZzjGC
	 WHMM7iF4R13zTCLT7I1nCVyN54TGzZSq4DqOUv0y1qMHlnhqrtk09jAUDpDH4PWihC
	 AdHBJM+WctiGf4TIaVdbGDIzDCSV/sJTxW+XsXlGY1mUBv9kGpC7e/lrv0cS76qwVW
	 SQihjgMnGJkW28QwBnwPpT500uBlRqnD+belgoBj7BbKS//8fQe9aJuQKADeUh7lmL
	 jM+oAH/CNfv0bEIH9wNTX2pTq1ou/c2EO6Yob4WhbUxLGjKpagG6NZRx2LoKl/Mxeu
	 h/ZyN90SSLlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE8EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048083360.7485.2315895794219706258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17dc48276e7bf54a9955a4f0fd7acc73c362bd92a7b5af9437e3a63bb759937
Date: Sat, 07 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770480833
