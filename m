Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD0355C29
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712129896; cv=none; b=UbDi40xlE9yTqGj/INaiFTCMkA40UPssv8tU25UhQF0CcpIjhtidS11/yRmtmqsMPPfvxcUxcPl7UBnbIDN4rmQCmYiMz1DZE4D88b0hcXOLgX0t/0xIGXAErD4o4sH8pkUx+EOn7njW03LShxQWqa4RX6Z+vzRDJPIZSMnQe6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712129896; c=relaxed/simple;
	bh=DCpur7kllbHZYb7DhKNNlryQQEaJMGAv1coV+A96yzE=;
	h=To:Subject:From:Message-Id:Date; b=Vm2f5G+SMSxeyYLM48Vzf0nB0aowMkaLsIuV3fxhb6JO0b5tDNk+H3YV+72sj7kW/Bcmo+ppiNE9QZtF5gfW3b88C6JjU5vAP0JGOCH8IYngttTAsrobkefiGLBAV4pFpeXWB3UlK6P98uJigQbKIEN+hoVfhCLxzXXtoFHyvz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUGUsPZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUGUsPZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCEAC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712129896;
	bh=DCpur7kllbHZYb7DhKNNlryQQEaJMGAv1coV+A96yzE=;
	h=To:Subject:From:Date:From;
	b=KUGUsPZr1PKT0EsbUgIa5nUlr++tZFJ8C5B2FRkuJ/EaXUs5DbmDY1vkKmA2LTLDH
	 UUSlnrhX2snlv/faWxzw2TZrf88gqi5vZiYAaSpheFUZjFUangDYG2Jotj7AtpgApB
	 YPOIzUXRl7YmDm2NVWrAMALcCXscmzDnIt2LsXqlQs7uz8KnUOHhxbK1NhjBVAQYiv
	 zWEU+4GwAdSVW4hXOBLjjE3pj3fHzW4wx+YqJ4/6LRlSZguEoTH+toRNFQIwkOSpmp
	 +mATTYER68Ryr6WfdTbeAq0W37iRZx/nbUqfz5l3yLK/dXbP9pzq4O+cLKPGBYuRtx
	 GCgcssyPHKmMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B98C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171212989641.5344.10682672550032863999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7736d4b206c7c60905495defdf2562136d9613aa323ad4692fdd6aa8df21f956
Date: Wed, 03 Apr 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712129896
