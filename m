Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFA7FC02
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717681043; cv=none; b=ZuXNQ88tbMqcM9ZCitopbVXaffvxrTETu6ZoDuG4rbnVRo2cJxIM7D2JlalDx7iYhb2xNqz4qfKy5mDWGsuChF7EnUy9QebKhc3NmDXedZiyOG+f7QuMmLbAO1wOogAFeUJSU3pNPRFrbmyQzBz7OoY/aHFi9MAqNxWPFkL/0wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717681043; c=relaxed/simple;
	bh=ExwmXVPeAyoQ4iUpSTgQ7vZ2tKq3Gb2CakiotDNn72U=;
	h=To:Subject:From:Message-Id:Date; b=jxXjLT7xkCw6LR1p7btvGw0YD3fXzzIbOv1/Q8GsJMNNU2qIxK1NqDWfMcyA943kmumembuMPOOHA7h6Oqa+Pe/SJnPOSPsvkULzYlzdTRJSKS6tvW5dnElk4ZdGsgUVjs4+A3Iohd13u94Hjc9h4k8E01kOLH8U9Nkx3/Ti0u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Van652tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Van652tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF21C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717681043;
	bh=ExwmXVPeAyoQ4iUpSTgQ7vZ2tKq3Gb2CakiotDNn72U=;
	h=To:Subject:From:Date:From;
	b=Van652tgwTpwS1uDs5UOfwuAA327/WGmEbjwisSjRbr4p5WReBAPK7iFZSofaEFkn
	 X1EpIEWy2/STLgVqXwz8g+t/4+VLuJsJZMJQBg3DGinvWlJB0y1LoDPZ0DDoHSu8R3
	 SH+dIoGDsFu9x68GGH3vKADSLgBy5LecZWVeV82mqE0EikuA4LVpP9yehqHcxxvO4O
	 cI0ifbN8qhyUX22q1HVZqxw8ZSg5jjy6rXrkceXBv5tJDvhVR8Xe3604r8GWcWASJf
	 DeBTuzR5n3K+Di3s7HRd2yZifta7Y+y8q6085zBAJL176yVyf1nXzL/FcfXHPyvI8G
	 cShxKDJC53aBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CACC41513
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 13:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768104286.9891.12570916535500589666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101d7023b9f4e16c7b378699bddab943e27998ddcbe50cab9627e8115036c19c
Date: Thu, 06 Jun 2024 13:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717681042
