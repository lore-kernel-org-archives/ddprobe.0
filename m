Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F38304BD3
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762708194; cv=none; b=af39cLuieCyf8xkmiWIli6p8S4Vui/rc68ON/tAX0ihSjve+SyvjdKNUffLKVlZ3uPUPl5TwLJuBOyzm9Nqzou5ZK4f7UawN/MfloBlbOm0dBx7lRG6yj3SpHDQHnLfiEz+V6XnkOygYJc26kbipTIkCXgJ2g9t0WxgJYtxyv/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762708194; c=relaxed/simple;
	bh=S+V/Wte6xlghNptAVEiMGdptdHDwV0v6UfjtLyJLUno=;
	h=To:Subject:From:Message-Id:Date; b=qlQwPkR3Q1sSkrK0HjlBj+M6/Qig8/AYFhBkyP+PNVeYMaMKUBiG8/T51Q8v3ygVM7zLMr41sVYODqllbkXc5zyo7LjaeErZOVySPNWfkuNPdBslFsTbXRXZizXDnLUqAk/6JQ6jtCz9BcHLt5XHWaH5SNttSDr/JSRgaIQk6Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC76vJTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC76vJTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6E5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762708193;
	bh=S+V/Wte6xlghNptAVEiMGdptdHDwV0v6UfjtLyJLUno=;
	h=To:Subject:From:Date:From;
	b=aC76vJTyZrxt/yIIWx+jHgYiLVGHHAlttCPC/+4EC5Ol4caYhrswEWf3jFOzLgx6v
	 1Z1n1kWdLv6Jknf+3bXA/j6FrlXE0Iahf270Oeomm77a0ePN4f5HQnrg05eCbR+jIw
	 qQuizJhebTBjP4khIUnXl604Nsj5SFu+eYrzHg2ZqAMQBcDOoG3+sdWI3SYdCYGPuZ
	 P3D0mNwjDxfluPfsQIlCmvdEcuJkfx8wQ7S7usRHpZNEjWrGYNKeaNEt/grZsMpfy+
	 noaoMcrPzKwwpZh7TFpMNtQXouGvso0m3w+OQFbgAa07NTB/xcZcLQr8UMwi8qkvLg
	 H6ZvxHXZa5TgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4FCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270819357.8286.16671543895208213572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47768055d83a333e85408a6d3c3e0ce70157d9cf953bb99f0d4380b764bc51b0
Date: Sun, 09 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762708193
