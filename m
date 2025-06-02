Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0E7F9D6
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748845794; cv=none; b=s+jje9DPKvlYxsUawUAkpniMIkATFdxYgvBpz0yZc0WST3xcPHmBYJjOMT+Cg0dI4PVu6H7++kw4KoLAjUV+AVK/v55qO1AlH+lx6Q4xcwudxhW9R9DA/nlULJ9HgD+O5wMSVADK/TIUdZW7aAJHUHmbWfbCIHEpfzGJcNOcc40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748845794; c=relaxed/simple;
	bh=v4ZeYgZGm1NCU2AWsfNRPDZ/RMI6k4Fg8zj9yArELaI=;
	h=To:Subject:From:Message-Id:Date; b=RT7fx6h56+awWmYNrjwEsIX9kZYAKka+aFgJ+tAzRFbJWMjA9x9IA4gVUGmbNRntbhwwiRpiiDsBP+iOlhwly87VfKB0D0AVk4vEnU3z7HYUecKiH57T7DjgdVJQbhlPeWrzNH+ezvFVe37cKrHGa3zEpcHYe6peETkhlTfzBUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcg6CK4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcg6CK4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B54C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748845793;
	bh=v4ZeYgZGm1NCU2AWsfNRPDZ/RMI6k4Fg8zj9yArELaI=;
	h=To:Subject:From:Date:From;
	b=mcg6CK4AzFT/5ZyeSSjvN8LqIr/oAF9P/LBzxaPsIQ3n4lxwemqFXZwjOSXTWi+sx
	 B24Dlyn7ZL2vB44Bd1dPLiJtCnwW4Ie0HXNUv29Z7RVXBnsNEr1Ea20TZYOxXz13cV
	 zL8m/1I+C8tP4ManfI1TQKF+wM5g8yF6vDQdEZ9bx9h9fcRCiYI5ExuMvLNxLvzp+3
	 5spc3Q4pfUoWPpSxaNmryuck2Bil5biZFv9m2uVAQuLKarIgn13YTmK8w08c80kZFf
	 QNvfMIR28yNV2CxXAFf3x8o0Dr1QgpQ/hJlJByDENWvnM6l8nvCjDPSHR/NrRgMNxt
	 0C33kUOGtMQDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F1C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884579358.31921.9223612506319798122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5db0e9c7b0779856b7d25b892227f068aba0e53bdd198cbea94d72b703c1719
Date: Mon, 02 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748845793
