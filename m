Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D35D343D72
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790050834; cv=none; b=qIR4yDJCfNIi+6SaOybalWntdEqtHrlw7U0asdlmkmUL0gc7LLl0wNFJqJAV+qMIBTMoRtWvaffTjLqQG6rVz5naIHzDFT4IN3O670U4mfpOQUxgYG2eJmjdWmIL9MkcNEBaryjwXVicle3UP5coO6v+L+mp+ULmCa+XTAUMHWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790050834; c=relaxed/simple;
	bh=QoQ4zwdW1C+JP5M3v1nV37XwINvg3dyv4fE7unHDWKk=;
	h=To:Subject:From:Message-Id:Date; b=KDjKIKn+EKRjEPE/7kRPOCc51FfZebdmQ89XOOJFJ3x2UXaXxq6mrHo/xO8XQxV2XUxe51UkYbIhDJ41zqpwhG7waxE0PpbtJnUZZ2/ZMqRxDKW5vrzLnNGK1zwo/QIHMH8Ce3N1Unmky94043qcOYtS7WRguKjLZ4kulJfOCZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivnF5Ybu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivnF5Ybu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E997AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790050833;
	bh=QoQ4zwdW1C+JP5M3v1nV37XwINvg3dyv4fE7unHDWKk=;
	h=To:Subject:From:Date:From;
	b=ivnF5Ybuvy1B7p/g5UAeb0/lRZFap7d3zVjKL0cYPi2CMOKrsyZL3x0cQQsPkiGFF
	 IK8BdCuvj7fEICA8xS7IIHuTGAjNl5kBBHduf7dsclKQ6eJMY1ypgJ67AUdBD4FdXa
	 xn9cc2asAlnNW9V9KmNggGiOSBjNSXHq3iCDmf20SHu6rth1HEPNcocNtNW5L8f7jF
	 uuv99omU/ov1GNVZeorxc4eIZQ71VQ3BKMN8Cjgmjc8a23DXhS9W1Xwrm4wZeyfB/3
	 sN41Wv37me+tzt1ciq+CJdXTK5+LlKzDyJKXL/OO/JgTcgc9B+J06GYRqL8VLG8y9j
	 Hf9Q18nNRJRAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2941C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005083378.8788.8136457010766864298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3eb9b5f9286febfc93fc19f2a24b2943ddfddb36e2e94ddf90c79aad733f88d
Date: Tue, 22 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790050833
