Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484C35CB8
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741910334; cv=none; b=EJDh4dgGwKzHEwlUoa3hgJNWBrC08CMdj0oPulYgW9hjA+I+KaRrRLP/bjksDrvuQ2JnniSBhH/fvH6g4r7mluLnueoisVe19oP8MLlE5+zb76QMnFz48it/KwqfldFpgYl9xk67PGTtgR1zQTC6Ct6fZ/Vu0oE0IuvywC1EJm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741910334; c=relaxed/simple;
	bh=5CTIoohMdpxxvonwRrusgaaBGjsd/UXycBIkwUf8EM4=;
	h=To:Subject:From:Message-Id:Date; b=WN7uBJlXZsAmZDsQVdS9Q4c+ZARD8F3gCCXK3mgJ7yUT00rVMYtjSJOImoZSsyQLIvYm4sP7DbvjBNsrFFIvx8U99qcY2NGq3REXjl1MHdge+vhjvX8z4Nhh5x9NuJRGGDRW6JHFtcJvKgq359O0Rajj0V5SiJPm8b/Wh7Hkp8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LinKQSWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LinKQSWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB26C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741910333;
	bh=5CTIoohMdpxxvonwRrusgaaBGjsd/UXycBIkwUf8EM4=;
	h=To:Subject:From:Date:From;
	b=LinKQSWj+1l4q2NnwEF7oje+/3ik5vJT/sXX8BHOySF9LjylCta3egiTD0P2Kslc/
	 E+om2Kj99Tcm1P2xGF9b35hwFb4j5CStNqGo0bsK7ETyUC6uXcKuCGb/FAOyIfzr4R
	 71x3cI8H1HlgDLe+A8c8ulDPviUtLagX6JkNTb0JVQawlUFZ3vAQJXUxbA3fiZRd8S
	 5Qog7COZiz0C3zzubdujG9ESLm8QGczHUz1ufjRXdtBaMkbjQqesw0rpERMk9wgn9u
	 n1n39vCdt3hlv80AMEECT7MQiIxyR6NL4ZO3LX6oQkCR1z7ev3d/qSGtHHdyff1bp7
	 kpGCR7XQsqXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CF9C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191033363.22285.5502437845018036185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccd72d570ed52b2e13cf1b1ded857deb03c4f2b02091802e204b7add47f0354
Date: Thu, 13 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741910333
