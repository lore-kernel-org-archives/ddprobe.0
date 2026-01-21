Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A417318EFE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769006034; cv=none; b=X6J6CpdJITIeFhvHqlHz8g12FpGvYn1zn2GqL5inVCHh0WP9kVsGRmJ/RVsqD3nobnb16DbIlIDm/t127Y8tiydgknAbgyEK2MLYhrCwzio520eJHf7M+NaNxOhQku3EOMJw0ZIv63W/FzDDJM+NrG1ima47uVGwKqEJVPLofro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769006034; c=relaxed/simple;
	bh=raAn4c0Y419yN8FTNxVDqkAXZCIQm16fb75CpfGTDp4=;
	h=To:Subject:From:Message-Id:Date; b=mNJtj/RBiG4yHIWHjVHTLVNH3cv81HzpqmmAYLnG9PvvaPGQQxDgBaYQvA8rsIiAXloIjlPAWgOSuEifJ298zBVYFSDHQmMv88IBX2DtM15csr/s0GAn/T+3qmK6ofEIZyFOsg7O2nyxc7uCER7ArA9GSHyEHwgC2WhICHjwqY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2a3EFfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2a3EFfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9259C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769006033;
	bh=raAn4c0Y419yN8FTNxVDqkAXZCIQm16fb75CpfGTDp4=;
	h=To:Subject:From:Date:From;
	b=s2a3EFfCknJwzyxH4QmmRP/YQQV9iqq3VlQ4YG1ztawcIHOZtuokDZJmsmMD1t3Ld
	 mff+393bYlLl9RMDABITw2Y9FW3TmYaB5ZvFmpmXGfmWNMlNDgdMi8uySvEDmxyYb+
	 QqV5gouyk8uwittZIt72+yh9tDrE5XbHT2uocQEpTGhLKxYXnX4IkNgGji2gJiDu5A
	 /JjDlhYcYAMr30FUF/3UzwDxIghkEDARO8lee1XfKskYDozOYKN44RO+NyKg3a2rV9
	 Cgmc+T4yA4rGsFKfH/iJTU5YvEwF4v+rvk8kjwr+6uDxmGGT3m6tHuhwVSslViJpcS
	 dpdSlLxtzwiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9911CCA5FD7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900603359.4493.17640841994149868016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312271f0f88a666c2826fb54216051ae2a168fd46e4fa3c07473455b090808ee
Date: Wed, 21 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769006033
