Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E9D1E1E0B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758349794; cv=none; b=cME0gHbDyjMT41DQGNjMxoIXh/e9S9FaEvhAzV9bfkz8Qt8UUn6FCSXknXLwFKcdZJnoOeVIJ0RQNAgZe5z1IReg0yJJNQgOIC4wXgedsO1uWIgxzwgNZnmbzk+z7OBZmZCs+vOmg2eMhbIiZTdPJENK/gJHZzYUI5bUDY7M7yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758349794; c=relaxed/simple;
	bh=XKVFHecx9D6U9pNjNbkgnW2S/Uza2nqdagsGo592USg=;
	h=To:Subject:From:Message-Id:Date; b=o8SDaYJpTw0diAI6TdXiz3yxUvfd0iq1LLyqiNPr38A0lvTg9pZ9AxtHHS0v/RFEAR0NUWAfB5qqf4/quO1srTFxeBFI6rGDGeD9jW5DVVN48NrKuYNY4MAu0my6HGd6bltkzdgQUkUEyOYslnejtr5g05UU5tsi8jXEM4J6mqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXQUXfUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXQUXfUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD72C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758349793;
	bh=XKVFHecx9D6U9pNjNbkgnW2S/Uza2nqdagsGo592USg=;
	h=To:Subject:From:Date:From;
	b=iXQUXfUsVyYt794H8Eb+oPpbyVdcAceYw26lj1UNXGMinCh5ue+jUU+HmiBXfXNCD
	 ZXpPxSDKn1uMANpwjMryHVq5PlllfrBTZbBqSohUmZoJF9C30WSB2rDkrXH6yqYdON
	 4w7jXmQWDqALFJGlLLCm8R6JhFRBS2Q3gP7D1HknB7hJ0LUIZ/9ht7emWXxV+BunHm
	 LZHPJRZHJsQ1iJyPhCnXx5yqwPMdiNmDHlm2U4L5hBlssAMAF5D2KCWJzxdQ6kykOS
	 cftreja8tE2O72CWMf6U+FuwNjs7fbP5oAYVErFw/VzpPUy889/j2IeGwi0fzu9Yi4
	 0zVrmbGQNLyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F394CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834979357.16898.2010071339939078860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607ce7a7d0636968a859a28285f501e210281d18ce028f03724ac78b9cd8df6a
Date: Sat, 20 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758349793
