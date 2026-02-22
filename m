Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1952A7081E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771761894; cv=none; b=qqW+pRQCSr4yTFMu0h1RwIX0ujjsm64PFSddwIZKOwiwIFCEBK6hb3mWztR8dwJHBpQst/nCKOSHC7EeJgxSy+R5nuU12eWxPIf6UMxh/n20EDxtI8Sw0aUPiLZloTNiShZjHuSsOARAY9bVZsfGqpF0Qx3kKuDTYtpiv/rmEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771761894; c=relaxed/simple;
	bh=ZqmRznBN75oEB0GrdqrMrNxEamaBHcFQ6DOYvyRLoVk=;
	h=To:Subject:From:Message-Id:Date; b=DrFeRKi86s2rz5EhgXXZLYiUJyLb+qkjrOx7/TZ5VoGxiVtl6tbjYgKTBB9nUFPcf4Y7+BVszade1+XZWlFH8mPxI8yqPUlMX76Y4lWuy7fqKBErPS4ePICZgrXa5axDY37Vov1pVg7pmRczGcHXXE4iS3S6TwJUXwAlmMdu3Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDjvBJxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDjvBJxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4719C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771761893;
	bh=ZqmRznBN75oEB0GrdqrMrNxEamaBHcFQ6DOYvyRLoVk=;
	h=To:Subject:From:Date:From;
	b=qDjvBJxKEmKkhFCOtv16NRTThYIMEUYOec9/S5okbpRD+xkly/3F8atiNu9knNzoj
	 Zd7KUly14KUMPzKANv5fsMZ9XTpRefSQNMf/kKxhULIfRhVOW9onOnEBVPuB2h8Osd
	 JecaYwC2XGUmobTeqWrG3BPxuMrP6ceXaVpJ5hpnsP52fkAqycnFXc6RfaFHIy8wnB
	 V5qItMk53kyqlB1uKXIE5awdpK9kLRh1tRik6xY5Em0ZUDbznZH1pBkEQjhqgzB9mV
	 3kycSVF77/fjJ/Vn30v0zC86ode7cUh95EK8z6G8qZI25F6ypXrem8p3mV1ZxKMRZU
	 sHdryPWmVtcPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F35C624DA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176189358.24910.17089321431633706528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487278a03e603cf09d89065032b17fc05be55acd1852fc3b44cfeb8d32010937
Date: Sun, 22 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771761893
