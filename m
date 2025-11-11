Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30588218AB0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762831194; cv=none; b=MT8PSuiFOoHDVCYvtoyW/S8upBg8hi9iPBol8+y7Se1x+zT12dfS4nStA+Cp587CGwFyqNmdnMgjdLXpy/SHfe7l738zudhRTDoOJx/JZZi7qKSE/PYCYtQYGF84unY7PKfPwHzfJlvw2IsV6tHofyO2zi4Zf18yYv6SXDnE/WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762831194; c=relaxed/simple;
	bh=5qB7Ej2GTdTVrOrzphjDt4pshsogSWYGw4fyfju1Kp8=;
	h=To:Subject:From:Message-Id:Date; b=SsnbhEhZUT4YeB/NKUJwgBK+HpScQBI3JEPbwewzc6QIg3oXjb4+y3svE11LXtD7SQMgtqUozlH988Ef6dg5wVZpyri5PdYgWJjze69370YjYs5LPJL6/7zoon4S3hVXjULnvxaIQDSk4CGsPih6OlVyZvABehALuzznV6PXi8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLVNyiZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLVNyiZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBCC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762831193;
	bh=5qB7Ej2GTdTVrOrzphjDt4pshsogSWYGw4fyfju1Kp8=;
	h=To:Subject:From:Date:From;
	b=iLVNyiZ/ryQIYfGd2WSSdQVqf3qcKYW0CBVRFjVRjr7UK+BAjtwqo4BF/gi9HMTWT
	 VyPvuSYZar8n5DHg1LfeXXn6h2OLmqCkr1llQ92gyvxfXRitDgbNPWHjJultPLHsiU
	 DXUBYvktMcqPfdfzBm5SB+Nswm+bwi8fSKGy1N2Ufmdhhux+1snRoX9/EnzgElV1WL
	 PrM8Z0Y5so47q8hRF1ic95P4OL6ogxpCzKtOnNJl/K5NDrnjgLMiBOdUHbqtwbWutX
	 p5RFsM2MkPG8QxztXgM0hDkRn/ieiBRdshqNiaEts3BJI+5SD42iksfslJBjOQ9YYW
	 e8ZOKSTxFDXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A4CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283119359.4223.6824589872943782586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ad136acb1a780cff6f82cf0195426859c6f3d453ad0952da5a16faff4bb220
Date: Tue, 11 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762831193
