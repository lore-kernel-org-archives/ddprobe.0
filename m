Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4A213A884
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726922754; cv=none; b=OB7kMFqXXKH3ftuNPNYWXietBWimp5uD6Oc0rd0LnRZoLk1cjyvbJVGv8UoX7SHQUyuGLhIXIvSgX2oZpDRcFXPz+z2rII+Sg1sHpqQM1EY2dqlZXIbjLs9Loy7D1pwdek9lO1tl3S6DePlO0Ff6slg8neBbDYNgggD1lmgNu98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726922754; c=relaxed/simple;
	bh=RuwnB4QiO0hY32/W/MM8kOoGdsLigvT7jruBufe2C4U=;
	h=To:Subject:From:Message-Id:Date; b=YzTtjDXAGqAXf5G/yyLvtpWiFCIrdbkMgmXTR9IP5ygywRardlvPAVYRXt6El5XZDAwnaMQzzyNlCwQYi4Qa48xKCZMA1T6B+ubyW3Fc7GYfiUQuCFH456JqaLoF0ip7wQqIthssKTKMZZBnXR98spM225Qd18kGI+swnVMhsJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnSRWc2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnSRWc2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726922753;
	bh=RuwnB4QiO0hY32/W/MM8kOoGdsLigvT7jruBufe2C4U=;
	h=To:Subject:From:Date:From;
	b=hnSRWc2UIkA2PYbrOjDw3aptmy+42e79UY5nSLEL4JilUDCaysnysJxOqXLuKiTGo
	 0z3B5i6IlcRc6BRmOAbgEqDNNLaHMWe0sgoGtgwFn7L2NAr6HY6ug31N51zDavGRLG
	 t5SpUWTbzLSqTW9o6dfv1JzhFl8pAqTxVFvpvSeXJO0+qshkGizLm8hhm6RFZhIhhC
	 GKA+bKM9G0sfX1RCcmvUGEMEFQVdVKFRyE2B0z2zjBZ3ZtcovjIwcdUCqfDslIX0Hi
	 zxoYM/N1rjylNPViJo2QGIeDvgKHdRhMoPf14UmGWPth9F2o1UZLQWUoY3rv6tSyNv
	 yA4m5+lOseGWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D6CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692275358.4539.6225065747814068476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f377e389ccb470a13dbc9f968577c8ec6821d2be61f6fc9fc84b1ed2eb3b908
Date: Sat, 21 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726922753
