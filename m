Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19215230D0F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759207794; cv=none; b=YmAhBc3utNORWlmysaP+16iKXLijqWM1e0Fo4HkzH7G0KDYYnWSZo6X0avgEjApu4hyVb9gyuSpfWP62vIOB86NtfMQ8USuY2x0LHmc6BQ9tIxgUsl1pSK3DFvAjvY2eU6LQ3NWU1QKK3YFdVf0/8eDM5rMTw/MvhbO+gdpjpl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759207794; c=relaxed/simple;
	bh=H2jygiJpq2UFqZy0Rl9lvIzioYaZIVbbGjSTqe3smOM=;
	h=To:Subject:From:Message-Id:Date; b=rvncUOFNomU04orwm/Xe9PiJB69XDr+xGGYWXmRao+Yb3kHY9neA5rj1G3aQoBO7Syiot/Q6+tKRyLtnb6kIfEKrQW4DiOqMfvQ820ZCqNmFecpcDulN4po/ZJi86/gNcjCenOcvVdScfuh0swCzrl1nBYFhYjGbaA3Bn0ACHl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPa4G3o1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPa4G3o1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759207793;
	bh=H2jygiJpq2UFqZy0Rl9lvIzioYaZIVbbGjSTqe3smOM=;
	h=To:Subject:From:Date:From;
	b=UPa4G3o1TEqkvAym/f/zrntP7LU9jC8jgjY3wkZiw5rE17tzDONKYKBI91elIVwz3
	 VFR2+cV+U26MPjrl1ybtD8GN8dBqNMrvW8CfeMFRwuEH2q/oRiZt6gfZ80upXAbUYf
	 iRfRaVX3K6NaVqYmrDfn+awjl/sP0Xj2cNROmDu5KCtkin1/Z3WskGFBIM5D8/zwl6
	 Z7U+ITYWUc5VyIN09F6KDrJjXWOdNT421hfTddL4/L9EeuHH9hpeVsBKervDdU5tPr
	 zEkhMjODZYCn8vFLfxzOsO2RHWfTbI8hFDd+2H/6/UdYz6bMa1k6SEjezYw5MrNS9m
	 thjJotFd+NIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FBCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920779357.1969.1595095909477872346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87160fa80621b38f4f56d9269a5653a6d7add4c5fb833c9f6a3269ff71827936
Date: Tue, 30 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759207793
