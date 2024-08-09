Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2808C154C0D
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723232754; cv=none; b=frSOYt7MCFtGxcevDi5mDk5I9P01Ae0sFtA0nEBKhFHN5bg0PtpqHpx4oBFEC4opofuUoDV8RtzCKhlRLnMs9cXvZd94QKNlnuyIl6gfHniKXqz8ZZNXx8HUduaBOHjv1fV65V5QNdg2wiRxtewk1pBUMJs8oh21Zvc+H9E9iik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723232754; c=relaxed/simple;
	bh=suaTcEGo3oIHOC6LQ4KBm/wQr7C8aw0jYWSDyxc5Yxw=;
	h=To:Subject:From:Message-Id:Date; b=KFlGwk5lIS+wUxsngkMVUfC4JcuPRMJZVrFzQNzYEnIcxlmOPE9rBOAtqWyYc+kAYoowOBmQDxgvUhz1UtUReYPPSdrD6zxBwae62c3XkaYmjZZAVDHyhxp58RWXOjIAA8MZuxPdix0yJVi3uZneVLIfv5JrhbNpBM3AaVGI1Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLr/UHWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLr/UHWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3587C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723232753;
	bh=suaTcEGo3oIHOC6LQ4KBm/wQr7C8aw0jYWSDyxc5Yxw=;
	h=To:Subject:From:Date:From;
	b=GLr/UHWQvLv6Z4DhJhOrFZYH5EqnGrSK8DSkKrT1ypdcfbeNiPeWOk1O2Z897keT/
	 LPvPFU+oKzXGcvPTgqW3H1GINNRO2w7AUUcncBjlrsiu+icn0bG8vP1DJZ02c1QQls
	 qyZjsmvDITdDm4xnL1SUUDkYNPghXU8dhOcF7uX6DrqTrtMy+P6A66orO0TBMuO0TV
	 xIB9bVbc5geTYeELxSbx6EetysS7EENHYO+uYflGxGgqBwk/Hnt6VnT76grcB1nhsd
	 YjqyxdNF6y31xZNITYAQRq59B4GN35CZxDWQ/ZpLKnh9Lkd8n4wISINQbm0KyglY64
	 NQ7aZeIss7sIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91393C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323275358.28895.5231377640241631547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55aa17a12d257b34d33353472efa3185df4b8b11d989fb47234f58afc122f66f
Date: Fri, 09 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723232753
