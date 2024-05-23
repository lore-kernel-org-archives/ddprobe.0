Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EDC2AD00
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716494003; cv=none; b=P83aY1fX6NqEKLPK2XbCtOoze3CqWm3q2mWqFiXMsd6KzELMuL6Tu8vCE76f/PSM4y7K4d2Ae9sxzRshSB9w32ukuustCVkDnJOanHjP4F+uL5vWlpR9wX9Q+K9ccp/n3d85CHJE8ZLSgtHI0z7Kvycjc4xKQ034DYHbmPrwSWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716494003; c=relaxed/simple;
	bh=Ucu//Wlw3tIfIrYaWHyQfDtpLVu6Y5WiPzvX3O7Spek=;
	h=To:Subject:From:Message-Id:Date; b=petL/cFx/n3kLoUzBrdwnvCOEloGHEWF7eykIJ2GsY+6T2s73ha8rapVbvkTQ4VKHVTS6BZnqhsh8Ng49IeY9LW76lRnvAAukr0DYNv/c5IBGs/qlPWDqSnekUNo8hitQRBmUUZz9AmG8VP21iFhnN/uCOiWImFrX0i394cdIv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOu5NQwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOu5NQwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE26CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716494002;
	bh=Ucu//Wlw3tIfIrYaWHyQfDtpLVu6Y5WiPzvX3O7Spek=;
	h=To:Subject:From:Date:From;
	b=SOu5NQwCcNA9oTbdoWZEiya690rZI/WtI32rJkOzcr+SUOL3hleGOIqvN3EjmNfg1
	 niHEA6sIfq4NK8FBHGU4qv+FnuRuDfgjqUDoc3mwKNC7NXEik1Q9xd/It+kfOvvp1S
	 TlqqvM2k4tfzJeahr+7sM+9SXmar46ZXsbJRKmJDl0oKIkKdbjl61bblDGsbuxfs21
	 5oJOQ6IYg5BRgeezicMU1kPxi4gsoRZvGKiwjUqZmOQh+UD0yUvL4eiSTwWe+OvdWl
	 NR/5j+Od75sXadLb8jAL/VQIJo+en7Rt78XCAQv9NJ3USB1uVkcD6Wl7cgkW4isNRO
	 JvCFOh42xf0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8278C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 19:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649400278.20028.11055118513585006000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f994de4ada5fe54768fabd09bfd335a1693dc792da83a9ab44ddb1342dc1464
Date: Thu, 23 May 2024 19:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716494002
