Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156CF1A285
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708834; cv=none; b=ZQRu3FJRadzDUk4cXqdF5WAG/RM7KzYdsbhFqwz7xPg7DnAzVsZUVxBNXlARnXcu3eMtbJVU01c1GQ+d30xZQ5KgZBgpgfcojkvh5+o2b3LxDEov4PrChYsQRsIyfFcj+LMgdYpS4Fc7IBIFkYkZJePoJou+MpmrCLNJE+78dqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708834; c=relaxed/simple;
	bh=ZV+aLY3G9+c/n+aqWj1FT9uIJQgA/W25d6YgqaHWQFw=;
	h=To:Subject:From:Message-Id:Date; b=Eo2gHXwRm/MaD6tH3Yj9+9rM89jFnA+ST3Jfdx+OV6Lcn/8Jsde3DR08gK29lOKNtpAPjzjKXElahE0XnN2ID6bpFwELWfnzAobPhdbvBs+VqD8q6wbIc2tpCyxKRmwJ0ZH+yXeEJ9Y/V6+l2Gjar3+cUZCBgERyKMYCwKYFzjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0UwKrvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0UwKrvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CCAC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708833;
	bh=ZV+aLY3G9+c/n+aqWj1FT9uIJQgA/W25d6YgqaHWQFw=;
	h=To:Subject:From:Date:From;
	b=S0UwKrvXpwBGoxHIuJm9JDmsKeo/WOFMWnEhRU4d2TlRo3kh7qBNnzwvIkecCLFzY
	 Tgc9UvXUbze9TtHc7AJ5MBfbDLgFfrCWV8imX6T23lURjMWA6373kZDwE2/Zctty2s
	 b5hUMHA1FeZ5ceuFcC55POGiK7YNkYmiyJhEJ+olGAjJ5/Trv/idA9U9CKD8fUhq+H
	 FlmDt3NP3WEvVg6EqeiKmdTfREeP6TmszTPEVZZBQbGbSH0A5U/hw9J7fj3UhOD5Yc
	 0ziqqz2+vM6bLoeWFOH3Cu02ZsoRujIXBhEwQ1D7emDkDYdbW7H3DQpvVxLPXxSXKM
	 PW0Dzh+anmMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B3C47BF2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770883357.22736.13244531128253887345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef239d3717bc6abedf43bc73e5bf5e6e4696dab358de0099dae3132ad60572b
Date: Tue, 06 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767708833
