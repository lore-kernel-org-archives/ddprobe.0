Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBB62E634
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718450903; cv=none; b=cSYMKCFjKvSzif6+txcmj7OLWieH5rccckpFJPYbJU9QoN6JtgS7exKdt5hWh9tKV78wgswszOBSEBqw+pl1Dg2ZUR8P/wDjVBg9g7SbbQ9o4HeatOQ1T4jCnzCkexHHIawxq2SoMB+iTdTcvaZ6Fvd55jCXqGqr0OAOYGRSxYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718450903; c=relaxed/simple;
	bh=cx6L3q6EepD+aJDYHvcTpZ4k+gRebkqoVfxZT2FMdTw=;
	h=To:Subject:From:Message-Id:Date; b=jpuF7KaAu6SSTAK13YpJtAHzVT+h8x2/tUuaE78Kqpi83JSkzgtReufKQqzfyPf9VM7zE151KZECwhuZ33pnSXlpy9UoIRQysDORaKKWpdchfPIAIO3VBoxk1frumC+reFlWgTq5MBrZC4ISQjacW3Zni40Cr93FY0ixVwdaWhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naAz4MiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naAz4MiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D925DC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718450902;
	bh=cx6L3q6EepD+aJDYHvcTpZ4k+gRebkqoVfxZT2FMdTw=;
	h=To:Subject:From:Date:From;
	b=naAz4MiLBJiWUyUSM6OM7D7XC4ls8yxar6rNDVVUWS23qOQmPQCz5rFKlWIw8pUUB
	 U2LqWmz2ssy9uWAa6FeA7RndZA1et8LF1SxfZq/CgblB5ycuXm+YqKvjGRkQC1nAIB
	 cWmsHY/BQeAVo5+Wvd+PzOj/0+sMtjBJ2h6pI9sCsyRvMB59vRORS3ZwK7qJSRIEkI
	 R/F2/CLuQnEMZJwaVxPQOXlp4upp1h7IVCMKmXBvPWVztYIuOgYk3Zv2919cyZEPGL
	 f2Cxxm/443Dwepu05l3iVlfVj/2a6sL5wnJ0Kg0hUo0Uh7EaAAcK8nWdVeb7p76vi3
	 YuEW2lSWF6Y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C406AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845090277.1680.2579915888750634578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9accd40053b3fb9eea5dae4cc5a15dac7d607bbb3168d09e09c4b79b6bef6e6d
Date: Sat, 15 Jun 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718450902
