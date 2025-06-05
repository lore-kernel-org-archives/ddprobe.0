Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CAC42A87
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749112794; cv=none; b=JEmKTVOrWNAgKp9PABl/hbbYKAZi0rbNzBWanCb7U8LHGjtm41nqKHl4hWyobzIO0+eUd5vd/gmlUCpoHDXkYU+nDiFX+Q3HOEQJ7erRkwv8hIPhcvMg9CsA69ohOZ9q9awYlvJ/N7rgOCX+5lp0vwvFcAxhxNxCUb8BLTbNMwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749112794; c=relaxed/simple;
	bh=8Ce4dM7mcFqcVqx3tw5DT3A467hhCtaWo8KZ/MmTocg=;
	h=To:Subject:From:Message-Id:Date; b=M1HhJqsZDaGZJsXDltK3taygTjBhyvgpq6hldYKQYerRALapDcELExwNb/oYKIYb4qkiXfOg4j62ci4hOus3nNqK4nMLtnW+ldTnjHfoQUlGsj4TI9L+y2mybhuvFgTqzd460lqOGZkK3UKL+ZEZczqRUvlc5sdAe8F6BIaSVgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tlz4axMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tlz4axMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749112793;
	bh=8Ce4dM7mcFqcVqx3tw5DT3A467hhCtaWo8KZ/MmTocg=;
	h=To:Subject:From:Date:From;
	b=Tlz4axMPhVoawlqVyyTz9A0Yq6gQLZP58ig3AH2Q6MlhphYr5m3LPcy0vb0znLv4h
	 Cqy4IxRx+TrVd/8UktKpRHEgNsHmn8pkbNnhah7mnMkIEMTy6oVcFyP7/6FLHFAEHh
	 xqWGvBP1OoXJ7U+9MfBABi4VEs8yXhHA4sgKPi8ktnVa/s2H9tkrLT4r+tStsMJgky
	 VTzzDirQz4eM0ax18bs1omZ5+E/lT8uOa/wRz7+TWa437pHvSFh+IRtibhaThaoanU
	 CIeZm1OMxdQDepw7vOu668VgEeeGh2N4WU8amyOq0t0RbTMbONAX7a2RNsU8RnTvlw
	 5a0NVpja7olow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065EC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911279358.8403.9137046540788181815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ba8c6da49e3096f9f302dce423ec9de059b949756c6a82106e1af91c444f1c
Date: Thu, 05 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749112793
