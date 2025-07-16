Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329F614EC5B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752629394; cv=none; b=D1KXrrHp6M5cKxKJTPNqQL8VEanhAYOcJ6I6IM0L7YBHauPcW03qFf0/Bu60dGy9GOmytNTHZmG8yldkT302Yirq7ebI2R69mQ4O4g9xDy7Qwysv5lDQzs7W/dHnHevYolAS/MT958FUqP/aJGE5HKrr4rzdXkOFK7FgEBHpwvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752629394; c=relaxed/simple;
	bh=fDZBC5BnWEwO3gt0yc9B6R7Re3lQZu0JlEy6mnQEa4U=;
	h=To:Subject:From:Message-Id:Date; b=BeQc5MTkVGBlPsAm38gEL30uWunZgnRqXGTqMqFMXUr4irgAvJoIB6i3F5OwWiH4TEk3pAjhtzypk9fUVmLkyPo9Ph8D/lFH+iGaS6JlOjabwo7Bz/ula3bb7o9cpddr6v6brGdg5HdXCMDKIcFhYK8ID511JNJJ5vrsaFZnvaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf8rTHwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf8rTHwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752629393;
	bh=fDZBC5BnWEwO3gt0yc9B6R7Re3lQZu0JlEy6mnQEa4U=;
	h=To:Subject:From:Date:From;
	b=Jf8rTHwWFMjLfxPmzA2yJOlRrlz/E9GBB5EQEUjOWx6lde6H/SETYw4VIyWnJyEvp
	 UZGTvhQouHpb9VdWcMvjq4/7LSxsM+XOep+orclZUbq/eQN7x4UtX3X61mf5mlvRZd
	 oPorxUURhUmNg07jgqZDaANrfbHh+JFQTQzUQ8vi1RzSJxt1eeVZYTlcMOodPXV44b
	 dgnStq6N2d0IFrpnKizCZdhB+yEqCUxJqUB4lZmpXAxvYAaYLlOwpARbMV+bQKG7MN
	 7ewAz7TVYGWazuHt9xdCmre0ZcCsklu/8xv8pgTKjnwA1TzKzdfKJx+0udqKBfB7qa
	 iZ7iSxT5j1ZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A4C83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262939359.21070.4666188002717033846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7404072f1bdfd51c4bce2580e04999f06f1822f85e497e0bcfe6e823f233ed6d
Date: Wed, 16 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752629393
