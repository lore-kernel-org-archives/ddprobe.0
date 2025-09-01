Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC392561AB
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713594; cv=none; b=VLxVYQ+psINN6B/8ttxn9PPodcaCsJkM018axRhF6dEoSrWvpNVIgc9BcgTVeSfRTYhbSx+AastTSdVUfQuvufPygDP4OZKpqqhTJ4mws5gAyqnDuzdWwe6hOrWc6kUxE1BAWvMcsKsdlLkrk3gBXElgwOhuS3HJ8ud7CqvASbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713594; c=relaxed/simple;
	bh=s3PYgX8t49GGL2bDMvRbKkHv+woypg+mjcnapl+f3ks=;
	h=To:Subject:From:Message-Id:Date; b=rcb/rwr98Iv1JNrySVeUVUrqtdqpnuWLA5y8jq2y0sOeqo592rGSBPHITQWmCMHeHznhMPwwNUaYZcudskYu102w1GKq5uc8YwbQ9SPYvkPIW50k+N5MbuCql8JGIJ80tGq81SB8EBACdOIRKVQdTGLlfYPzvh92e9QStFewT/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcx22sEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcx22sEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE81C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756713593;
	bh=s3PYgX8t49GGL2bDMvRbKkHv+woypg+mjcnapl+f3ks=;
	h=To:Subject:From:Date:From;
	b=hcx22sEfNO3BFT5m7xZyJVXmsSeDpsjC1N1je74e1Io55JHljlYZgQbwSqR18UmrI
	 JRxNE4fw77Z9b6g9y2Nsf6f9nXzI3ua55lQp3x3ANO+Haw9aP6IFrt7CTmG51ECQJo
	 woxq1U6rDHbT5B7Zah/0Q5cYfJuw/q3jsedVZMaSG8UIoCKx2qMyHmCu2ZEluxpvYj
	 r008MDpjVAQjDRmoj3NYWQtP7AYmv3AE0dGu3/LnozrCkv8kfQiPvsYNJByyjzDmXP
	 BIiIqqYTGIEcYHY8YLTiwBK+AHywQZRgt3Mx7IIyNoI5CtkN1m2Dq8QiZ7my2kNKUo
	 QKbdbqfn7FyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C7CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671359357.12739.7644179383067717328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ecc9d4c03d803a71119304326e6d6e31d9931ef83151f357230ccb9c0acfa1
Date: Mon, 01 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756713593
