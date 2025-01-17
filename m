Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B9425A62E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737125754; cv=none; b=MIcglbJZwfAZU9STXWD0KWVgNNig7whm+/oIn1CoMx1d5pc6+0LVEIGOD6fE3jrOdZJLduOntI5HG4gHKmASeCpDT8z4r/FRnBzQ2/zmHxlWuenl3xyYNh8u7PVl5uKJ0EQpaE36Tc+oh93yRai0RCfCobHTJJwaeeqB6g+h2jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737125754; c=relaxed/simple;
	bh=W5/hmUSpyMKf64DOdv70ocyTL2a+JaYcKLpnQVc2bPY=;
	h=To:Subject:From:Message-Id:Date; b=sICpogAqZbR05Ill4If3y930Lo6zvaWHKspkIGxe2dSXr7UvqVTWGAepH2IZPAwXUQDhCtd0iRvXkQ8Mks9lOtp3/BZZsIHf9qKFDHDeU3rTJAb14gWGWvIwAPFUmg6U/hdGt0jsxFuCL2bElGVjnz+UouCSz7dmJoT6ALOCsNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLYR0DRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLYR0DRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3382C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737125753;
	bh=W5/hmUSpyMKf64DOdv70ocyTL2a+JaYcKLpnQVc2bPY=;
	h=To:Subject:From:Date:From;
	b=FLYR0DRMPhjKJLiIAjhNdjd3weQIxpe2DBtHFjxs500zKAFXFzmLQ23jjCr4g5vv6
	 FW6VDFp0KhY4POqgSXpeISHpiWBCDhC2db0rIQl/nT9O1D8leCNj8EJ9aDfLDyZozC
	 NJCVlEoUFri6o/fNhg9gbz5nZXffalOs4fTkaYsKTMpW55lecdSM+2fsPvDk4cXfW2
	 0xDb92aCAWoEpbsnN8dSKN11/YszEgSTl2IaEZFo8KVtDsWnmK86uy78cvLYojdEIJ
	 8JwyX4nw6i416ZVBUSeFmtbq9waAJ7vliisr5B1qIblMhy+/uPQekZgZHhaS05IUKc
	 VGOCvOEZuLCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F06C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712575359.6210.439390491351426520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198f070cb0daa0b952c695c6913921c9c4c9715c924ad2bee0dbd26d7faf727f
Date: Fri, 17 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737125753
