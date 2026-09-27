Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772D23C8AE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790530834; cv=none; b=j6BBJp6uu4LH2KU1fqtyyfjGYn+LaYvc0y6GnCOfN2xG+bsjfNEsi7N2NVq4W8mSwGIV0X/MYNySDv5rgAinuahHADYf546jb28DUtr2aViswc/ajdJkKf4gMJIw5Moy+fDpO8wzZE5Aa5uj0zAhAg9kd6zUSpY7xEfARasLkaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790530834; c=relaxed/simple;
	bh=/gO8RsYUZ0L2So8U8N2eM7NroJQfJLbrCdoYQGHp5es=;
	h=To:Subject:From:Message-Id:Date; b=gI/lLBX1CpbmvTJdSyzqpOpjx9j/qsmEJGJUbvxBDM4E5GuhFDYJ3BKrIy4LWJjkV5v7aYucgU+M6hEqwRIsf4sJ2xxpFh6CaREC71wPpM4G/GhmxXqUZpgnj5SKIZ4stjp/5WCxj3CFv6MdVn8A7sglz4Kc3g9mVHhULb54dLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6DhxEpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6DhxEpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7BDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790530833;
	bh=/gO8RsYUZ0L2So8U8N2eM7NroJQfJLbrCdoYQGHp5es=;
	h=To:Subject:From:Date:From;
	b=q6DhxEpGtryRd51FaEeUODYZ1aaspC5uu8YkGCBS3HAU9kJUu2NqvGl4cULj5hCu5
	 JrERgAdDYLklzaQwZI3abGe//iixjhkQfWF3ZfXo264kBHcpqrDUWmDN6TFogpMJ9j
	 fNSeByhy8voTJnGHBqHDLMVcq2ccLDcBpuH2ZoWNaqgPg2PUUKpzwmtvWxsf1GaxyQ
	 uwrtE8h+Nk+rxht3g8GOMLhGAnrC8bL1q2drwdf6cedRU869O60ZqkCGC+utBOxQQT
	 dzm6XhUHI6+AYOR5m2flNOpmyF9XIn/+69Ylnfp89tNRIZjW+9Wi47UqR+Ng7fGn6W
	 aR+d8ZT1/k+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42A6C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053083370.3566.15626403502612377622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94a173d20d7d05732538bedfd46447d0b522f62fcf7daa0b6c07c0026a06f18
Date: Sun, 27 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790530833
