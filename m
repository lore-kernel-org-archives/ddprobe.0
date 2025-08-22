Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F11F347C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755823794; cv=none; b=VvANnCJOak1esfyVjY/3gIz5oxVE63biXFrsGvrSe2jb2alUUuz51JPPg4DfbS31OueqXGz+UqAj66ZqyB4BH41UCCdAF1wPtlrUv1QYlcTqEGF5TyGn5GDJNU1UZbTtC3pdSB0INi4/QQpOwAN/UkoEvWk1gGHWlbgBk8BkkBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755823794; c=relaxed/simple;
	bh=Mb5MXnP9gmL5ot94YbALabwbdNHk7y5XXvq7DIXjJdE=;
	h=To:Subject:From:Message-Id:Date; b=B/KTIOqpTyqbx5OlGt4isXJ9HQsWMDWyYa1YFy1jzC9YOtU0tF3DAFs9fBlTmxJ7O2RXAoC604Ax0dmisMZEZMeIl3VU5SSU1rHfIJGkC35/8F/PSZA6h7ECAvb7hLSodmNm306nH0mme7w9QW/m/RYTQWaTxRi89HhgaW2g5L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJYTsz9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJYTsz9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1873C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755823793;
	bh=Mb5MXnP9gmL5ot94YbALabwbdNHk7y5XXvq7DIXjJdE=;
	h=To:Subject:From:Date:From;
	b=FJYTsz9fDg1QqVw8o71uEhxtmYUo11n3tkqOR96Xv6rml0zlZP0z9AjdGG0/lTcSN
	 RhvXO6bzh5P8Uqw90jXrJQXmnh8i2dkO3XOnFBW0N/WHJnDlfant23CIhimGQ8rLG9
	 +33i31G87WhRGo40CrYAZzuorO8B76IG5KuWePakkWtZ/dXG4MSx9a561y59Jh04Vu
	 NO0kYi4Oiz9rxuObm7bTkQqRMDDU7El7BQgoDOUwinuujJKVKV0hrs4KyPz0D7l4il
	 HiKomRI3EVtQuiOh29bdRVI/KwqJPWO+glf1aUBjqiBL4zAGmmBBAFRKIcgWXuJ/Tn
	 uFdIQ3LwDssJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4CCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582379357.13184.215279102974002145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14dc799eb01d2e2e922215956c91cefa27ac4a44bffa8cca697d239f5625b6e3
Date: Fri, 22 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755823793
