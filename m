Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252631D31B9
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756353594; cv=none; b=Zt4UijKZtyjxGJ8WW0Ec5L4gOnSXMBQZvpv6Yn4xz23GZMxGy/T8v9+W/4nZpNhG/BSl1GUY3pvvBNAPRXFophuWLEIftrk7e6p+g6kwvXAtMBpoh+YQmwel7Ls5VxWarYoKJLqZiCYPC2JdMmMk5wokLoUCuYIGGlUbbulBMiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756353594; c=relaxed/simple;
	bh=ApIVWjc2O5Mvvbv17GrM65hHZXF/z+P1Ci/4/tZxwoA=;
	h=To:Subject:From:Message-Id:Date; b=ZgV+ViMVSNkAV1lhuTrhohaZ6ewKnZv0VhH60jwnEZWyVT5gRZ07P4MM/P22Ve+bOiaZiorw6Xobfu6moe8Q10Z8cc/sz/FvZrY90PMUkNhJacmZcTDJp8zTrq3sfo85p1ABzjnlxnjCmuKtKoXc87cLVtNAMyerzNnkEP5O2AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMvWj9Fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMvWj9Fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2021C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756353593;
	bh=ApIVWjc2O5Mvvbv17GrM65hHZXF/z+P1Ci/4/tZxwoA=;
	h=To:Subject:From:Date:From;
	b=cMvWj9FxSGkDqlwQBj/69+hX0nK11kQ562+RSRv/dU6rzEWNDdfaQAA67hobxvZBc
	 wBpOf+dPg55+ulw0rFFrowuMeFU+77/oGQtTcZC+5kAYLeaNW3mGsNvEa76eOsbwuo
	 ztxg+Vi2aHdCrh8fJjxZO7ZYloKNztkYlIS8WiFHY37pHlLCVdd6F8unisChyUB5uF
	 3/CW8C2vB8JW0p9x+JTGfooUvJ3rqeSktwtOSWhAXhUo6wKfRfxOyvPyMGCl6r4jBf
	 WB6RNGpKvXR4fo5NLooAgQ3VHki+fWcxhn6JuaJliCfyB0UNkIvlyaijpqVaxQ6Tgx
	 3uHmR0YKNSHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B42CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635359357.30332.12187183832907673017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c681fd29c6b5b3916cf15eb9286cd532cfe1e99b34cf2169b559156f130d7958
Date: Thu, 28 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756353593
