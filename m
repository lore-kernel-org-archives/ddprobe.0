Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B79F10E3
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748077195; cv=none; b=CAt7KZoXKM9sjM+waurPX0RK66YmqF5Vb8MNmKa6K13nwBl9m7f1jfnoqgU9NWoQFuK3UMqgJSTJZbC9TcEgNt1kmjXzDBlGU/e38mTW3hmqheKdTO7azTeLTHXx0X0NH9Dz/DrG/d71RgKOUQXm6JyggFNiE8IR7LbWNkaCdAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748077195; c=relaxed/simple;
	bh=68nDmh/6+yTeGHWfjtZAzmVAFlpXzgqX5WkotYzJ+8o=;
	h=To:Subject:From:Message-Id:Date; b=V6+NL1RVXtZX3SwO5hzQPwq1wi07theC1+Lq4G0BMSMV76ZqTtN4w5ZpW4RLRzE0zAvp+0efjvnObc/owFU+Mdz5NOPX8kKswXPMI/mOe7VUYpSm1ZPbEfXqkKCzmZiphVexkvG9/n0kUoaMrZJXopHzTKL4AnYVjAinUwE6oAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhk2u7/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhk2u7/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9017C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748077193;
	bh=68nDmh/6+yTeGHWfjtZAzmVAFlpXzgqX5WkotYzJ+8o=;
	h=To:Subject:From:Date:From;
	b=Uhk2u7/i6XOOJtqvFaC0qiIIvpD7pIxFEZtq0ala7NOYu8JCulCUaC5wyc9CHWxKu
	 I0dH/JTQ0OqfBboX5DF2sI2Tbp5irQIKxiSPS/+eqJ5gYyYztMSSSapn3meckiad/h
	 tL+AgbX7A6jgfwsX3pLJRO8pEJRbbXAgRmH/DnTG777CDnMTQT+qUSa04fZK1GMWW2
	 k3TmtjRYaLKWXuNOEunZ2hrta1kyXNYYx3Q/gR/1kmv0Q/ukrKeqv5pJbmCY9IogrY
	 Ps8M7vMzfnPhg5WBTSXsTj70DQNSdfWuTgCEGZx7nOUa1ZIN8OB5zag2kmVz6QM/Z4
	 ZSMpmIRdpm3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93662C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807719358.29027.12503527692776317306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f649255b8e6a535b7173cf3b004683479053ba77a273ffc99de1b7af5062e9
Date: Sat, 24 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748077193
