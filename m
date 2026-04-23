Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C2B2D77EE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776983254; cv=none; b=fpZwrBzizQ+3qMciMUg3HQwBsECLVDEUdBc1sZm2Vte60km3AuvEVoeUg7UuQnoX3vHZ91ieGSZRaytk0mdja1Yh/nwwMjKelkBUaP7R/0qTZGN+M+GQCP0vp6WsCy3EYIvMSP5fpjn+ISQEsvWwEUnH78BZ2zMSe8C+gCX7icM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776983254; c=relaxed/simple;
	bh=aAizg0hQvY3kpExl3iQ55tBGf8I0qMGih3KAPlR5MpA=;
	h=To:Subject:From:Message-Id:Date; b=cW3xch0PDk6CVekSsQKNtYuW6KJXca3z3DLfNf9Rh3W/Fu+YVjBdbXjXG7Ktyb9ENoPAVPHux23aFyyssLtg9fBcH38UXVmZaEziS+IqnyDgXsQfZDS76z1OVWLWYukkNc3xlThSGq1nVii7Etzjq1m0BNWgqHlkPsSciyQLHtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCMFdHzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCMFdHzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3A6C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776983253;
	bh=aAizg0hQvY3kpExl3iQ55tBGf8I0qMGih3KAPlR5MpA=;
	h=To:Subject:From:Date:From;
	b=gCMFdHzXzI3TX97/YtVJsHyzhyAZ7iWk/Tsz0jnESg5GN7GvS/7OoUKdp9tAVSe9T
	 3hUc1YWXOhvn3KEVB8zwrA2P9qCtS55P8bHiiJKHn/LT1XhetjDj8C38Qx6sntYD0s
	 ESWeS/RUL4hGxe5KohejMtcgy+UKfwKSq9xL/FX574oARG4FyhOLX3s78hOwvqroH3
	 6y1W0wxb5n7NtQ9HMPwQjicAyRzwBHLir52EPld0w7EVYsvuLcEJV4HoR8sdy+9pqY
	 6w0ds7fP6JHAxay0/eiYUPOSdULkwUX7c2BRg4ZYk95hEds6lu6agI9+CCjEuGzUK+
	 iI1jT/emdzEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BD0FDEE51
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698325368.26502.16379210143888259145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3b7485503e3a678d3d20514fdd2949eb419e7b9c00b8e56318d0a5654ccdd9
Date: Thu, 23 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776983253
