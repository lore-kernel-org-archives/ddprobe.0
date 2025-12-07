Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DB71799F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765143174; cv=none; b=N7otZ2sQzNkQpBSNJxCXRD6vI5WplyAy2pgDztC7fG33WskhawU+sS2XpJSvBnLXmBHpDKTBS55uArZNNsKj0pqauaDvG7Y8Yg5rUzafGUUvALy3PwbBEvVtzrrIt7ua0fEN/ueRxL+3XFS12rXOlge/0ZvUWnhsHxNN+2+JsoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765143174; c=relaxed/simple;
	bh=CbdMut9W60c5tNRCv9mahXkQlWz3n1P5JnNj13gek6s=;
	h=To:Subject:From:Message-Id:Date; b=rePW0IqpBcykWa9XxoVf80aXj4j+Jvg1JdvZH4gvYEoT/R74jY0DTrxZFdt8nDNERMYeYBtVxXkrtB+BCqlcPf608W9reDZMdRYNcTwRoaXfiaAAXvsTW6ulrhJI8guj2UeAJboBodIoGwVnDmyi9jCp/z7doJ8IgRl2jtUh4/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdo7YNdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdo7YNdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765143173;
	bh=CbdMut9W60c5tNRCv9mahXkQlWz3n1P5JnNj13gek6s=;
	h=To:Subject:From:Date:From;
	b=sdo7YNdt/47odJr0xj2+C95yMrdKsLZKScD9TKlOIdGXjnGL35tKnfiOqfeqe5fEQ
	 fq9l5GcxkoqWtJoXUUxPQx2GXrRZp5zcspmkZk8Cg4N3Q7/JB2JTMAarlLFXauJ/8D
	 5GNonQb7fUvJs7oJPvbLBTNfFhVgMEGLC4IQgVrF8Y6RYXDa0mhuzmj4MpuLMbXhJ7
	 5IsDYvMiMDHEZWvsX8wH9oEHkTnWImSNAajh3/T1jYZLUgGn4xjida7m8f4JI2P6GY
	 WWG5XyLZIhW7HW3AhFKlFfK4yGIAbFsJIf2PRmmv6i5cOZe4Y3EDOGyK0/h5Dkm44/
	 XaJeX9vjHBhWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941EFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514317358.12074.7972407720998691641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02158c45c4499f7537fc4501837f33e18f51e05a1ab336574bdcf3e2f3f37364
Date: Sun, 07 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765143173
