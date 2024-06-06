Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577CB74424
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717661843; cv=none; b=ozHAXB+O5DeIWl5wqp6LdHgYoBdSYI6FZhn6JaFUgTOhraLRrXBeL4e6JIkXiy5sgaI5eegUmbRUTiSoV7OvHdkZh4FbJxgWTn1sRZTjvtwxr2WbipIxqM1Wp8A4k/sQzuqzh5kkDk2ePuRk4LlmrfYC1toFeQ4JjbO3vb1jEOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717661843; c=relaxed/simple;
	bh=8Lfi/VlvSY7Le2Sj0GkPaYnSGvdsnCzWPhxX9HObwEk=;
	h=To:Subject:From:Message-Id:Date; b=DCD0xef2JoEfrM5ATNYJ3fHy/fvXotr/EoJF5OZ7m4uGFb9sseso9TqvVVM9EyeamtMYY74v6h0f+Y1weVAZrtFZiMaZZK90ku6vLyryVW/P3UY/vJlG8exVytr3Arj2lUV3/wmrqQxSfz40+cA7+fqYw/9Fj9Mh6dsgLkuRDR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr6qXCkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr6qXCkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2369C4AF14
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717661842;
	bh=8Lfi/VlvSY7Le2Sj0GkPaYnSGvdsnCzWPhxX9HObwEk=;
	h=To:Subject:From:Date:From;
	b=Sr6qXCkHOPjGtB3jift+MqmJCrhcyQgLaK2/e0h4G3joFA7ffHPlWN1N2qkq5b6bo
	 +gKtfX4TMezRk0avaT3A3EwsCWZgPDtjwYdS0Wda9ZLGqopxBy4eeSyJx5YrpCdBbV
	 q+J1ip8zEn80cnyj38ZEMLfH1fwwIF0EL3c3SXRC5lUw2MElWGFWnl9EvGgMS0DYcg
	 pKF9szNdn2VCo4EkM2UEr9jEG7/VRGk6m/2zCT5pRzFLF7HTIXit4E3eTZLK4nVEs5
	 lxPlMW3Gnqj7Aj3yn0uWJtmD2CtTaRpl5hBqiwMPYcyDQXoOHFWlOV6bKK+qKVQyea
	 Eojj96imSM9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0D0C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766184276.28572.3479367451631716438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7817102c32b3f813ccb368155f181d2ec049fcfc5e57d7edc0e017f468ba5df
Date: Thu, 06 Jun 2024 08:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717661842
