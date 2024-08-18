Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D5618030
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723980354; cv=none; b=iy6Top2Q3gQWPcGzIiG6HUeUowLCIHn/EF0GvGKFBeZMloNlQd3kkuZkihzW0KX1CdP7Uh1YkvXtZLnBGkFI5+ZBtGmOPeRj3oPItF54fdEmzwHFSNSOSET9Ax0GmY9uoTVM23VxBjD0x6STvyfhEPWugGibJnkWt4rA/t8CK5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723980354; c=relaxed/simple;
	bh=6x/qp4/pTKbG9t3Atgybi4SRM/kmIWv0OPpxbTOv6T0=;
	h=To:Subject:From:Message-Id:Date; b=YvMQ+5hTheg20AVEu2OiWZakF4HAPu0iIF20YGVKh8w0jS6vegZT4b/P3uKq9zecPJFbIdHiJurWhAFHG2Kh0RFuB9dQ9ASshn1YjxA+5lFRQy9L9XllE5NikJbqbTvwB4oKkxrzrIaMuMVrWlArQ53FuZPf0m7yq4s67t3UfdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9M7oJIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9M7oJIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD97AC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723980353;
	bh=6x/qp4/pTKbG9t3Atgybi4SRM/kmIWv0OPpxbTOv6T0=;
	h=To:Subject:From:Date:From;
	b=k9M7oJISVLIFxRxd9IPCeiL9XHv0qVYtH/K6um7Vk4ABAnRrm/c5i5rB8CqEluvrf
	 gaP/QCQKqXLdof7WOYMo96o3HnnN3htYdKT0+qFXNweXMshbyFrd3HWeWD7Fnjnp+M
	 6hiVAz9T7VZh32wrC5EFWWKJwbaUnHWbJIC3vXIV3KDIikECqC0GD0Sb/NhjOfcTln
	 YSluPTBz0KvwF8SzRh1Tp8Q0rLxjxk/QtQ/en4QUHj7yU/YJo5ljZM7U5ujLXD1YYx
	 XKDTrnFPUAd4KNqAHYZbjV5/XadaQYfzGPRK4//Pjrh0oCW3xmpLBY7RdneCB6W8Eu
	 QTCtzIakfLBHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99056C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172398035358.28262.17006985941377283266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddc6364493d9862bbb501b8eee50d9396c1956f1a2a8312c689d75a2b9bd49f
Date: Sun, 18 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723980353
