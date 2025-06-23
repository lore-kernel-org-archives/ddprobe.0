Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1FD14658D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750711794; cv=none; b=Hjd76xl/WNpULEKzghR5zlIJBuTPifO/ozSFZnQ+UIBYg+OlHjKkIloQ7WP0Ye01UoCyT5VyIOkpd0lxFIr3hcHVhPlXJxoFcUZGFVvNSmxGu7/orOFkYJocfBe8CrKKkiEtP6jvp94mohcbYTTGMqMc+MU3YPaMKfm3jXYnb7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750711794; c=relaxed/simple;
	bh=Qmx+B5Q1G6o0NuaK420yJ/0kwJcf8QoWcr1uy7Tth5U=;
	h=To:Subject:From:Message-Id:Date; b=tX222FmOAvY3mdZ4i/E2m8KBzsBNpIfc+LuAQIX4lOESRfuMqCH2K0d31AI2wAJFV/Zum9AT6goOdhZ7tf7q0v3LtWfk4PX0asRviVNon2+tj7gcGrmvlJHPtXscajkppIbkVsWmrs7zGDHEcgg2Ldh5hH6AiWnq2f44bkBjxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOOJZRBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOOJZRBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB3C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750711793;
	bh=Qmx+B5Q1G6o0NuaK420yJ/0kwJcf8QoWcr1uy7Tth5U=;
	h=To:Subject:From:Date:From;
	b=DOOJZRBpGA820logzr4HXiWcvX0gwSviJ+nosOgHbAfDqEL1XCNsek28ww0Mtw5mV
	 5ogN/fAfMr6jrvOTsi7CYjaTHjfw+e6KFWK3l534QnaA5cj8wCuKg+FaTEVKST1yaD
	 tkgbp1uvut2x3osQ27tUy7TWmkX+x6w/Fc+sPlcliYWCXA61sNkiQJSuLXUcZZmhAF
	 Z6PP45OV00rID6EWksLXBXEQMSpGLUN3i4+17MctvWQVHAg7UgTQNQL3+ILLDkfl6+
	 xYa3eWTz9jM7Bplzh3yZejZ9mqOu/bb9sDabb8O+14j4f5nefiAGNBBbX8/Xdu/P6o
	 FBBElicRmJIVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED25C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071179357.29696.6260159350001097153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f27e74a9e0b71ab334f1e2d270af0977c635f127a08dec3e1e724d35cf7646
Date: Mon, 23 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750711793
