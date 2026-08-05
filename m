Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351683A1C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785897034; cv=none; b=l2S3ksjaqx0u3K/MJxZtHd4RhxQhvNB3LRnRV2cvjNHrc4zOIBbzsYu9TRi/FLvvV5TPOxLZNb5qLQERBYQLPjZ19nvnmT12qoReA9YdskvM1hNl74lbfeYlEVkWGq5a1lOA12C5gg4TDEPtc+C1tIj/jN0nyYXd/LrCUG3D0Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785897034; c=relaxed/simple;
	bh=DD2UtaWKwcO860iYatpkb1nWmF2iMqDPYxvSLa+AnMM=;
	h=To:Subject:From:Message-Id:Date; b=kuDt+sGrXF38GoGw4pYZBPJjOUrEIHRfXWb8UmKPE4xHzIp8Gg6t3fTwcHXDJax5djwEdA0WnyyffzUmsi9Rz6nhwCcuezF7YV5j8JNohEbjUHebNtoijoS4OZyTOyIMFRFHQu8mHIheJzbKvxRT/TDVFH/qN13mpvZKwkEfS1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUlZI3uA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUlZI3uA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785897033;
	bh=DD2UtaWKwcO860iYatpkb1nWmF2iMqDPYxvSLa+AnMM=;
	h=To:Subject:From:Date:From;
	b=gUlZI3uA+vF5pSzC+5BAjdnGcwlLgqDCWKPzyYmt0M+diOqqAuUA9M7eZ4YZ0y5xe
	 DDsZLWKVdDepVFyg25rteMAxViWjOlW1z+u2NVKY0BfQ1VLTcajm8ore6YL99t3voJ
	 5WOMvm79/8pdp9j6D2kkRLokkWmSDP3LlqyzHAR02UiuKtzPM91+aj6+gdEzrzpuUd
	 kCCllXBWpFgLiAkXa7j7WRSTGol3OmbFDiJYAq0j7CLIYfoDYAfPayccd4d72rD25d
	 M96TUVtaEtOi3TM0d1CQMwzFh+qM0wMzstpbLQPovkvNUBjqJhN5BHeRpFwvJQGzwG
	 rJZncyROABV3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA401C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589703368.6733.14476138453540435758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681f938d5b4ac88af8fce72079cb8f5923f70448f26eb8d63a8418e57a8068fa
Date: Wed, 05 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785897033
