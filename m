Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043B0139D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773629094; cv=none; b=XAlF8hu1CW3Da/iSbsBJCWkSKQmDVBRJ0dKaMdgFUj6KNzAO9OUogYaotvajfj71nJy1FdBJHJAu1uc8P8hooEVp5gYpr9zun8j6UmisHPpDicOyMSZZwX1QK3KSojv9TJ3ozdzzh7sbhrOGDr9fadczFNUk4zHEs3cjjrkJ4Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773629094; c=relaxed/simple;
	bh=AO8s5i71weTFohsM4YkUTQp26FXxVpiGAix/VIiDNGc=;
	h=To:Subject:From:Message-Id:Date; b=CzsZUUB3eZUfV6IsLGSLpnn7ZSh6N/OnukqrXyQx5gPZUeb4eYvsvJy/U+DXfoZxg54Pe1W1NHRtTRYAQkC/kcf8wLYRqdXA3K3Fp6k0A37IzNauBrIod1IFxNe2rEf/Wzr80JLGc1hdmxyQ7QAdDJIG3m33u+S7PCSTGXLVKLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6cK61f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6cK61f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24ABC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773629093;
	bh=AO8s5i71weTFohsM4YkUTQp26FXxVpiGAix/VIiDNGc=;
	h=To:Subject:From:Date:From;
	b=F6cK61f9JS7I/w7jBlZOZpa3EfFS1ulGRohTi/dSCY4TWzyNgqXT0ncOJrrjJ/+eS
	 2A6XlnwgznhvVr55hUWhgnjsER3HPm3RhGyN/31Xi+8v7BvbWJH3mJTyzWwighbMDK
	 DgH4C54ZaDs0wUV6s/V28mWXIQwzeBYthHw0sP0A3yX1mFg/5nVscyXWTk2LPqhlAA
	 pHKF7ryog9e2K6CI4Z1qecxDoOmyK595qloo0wObhLMJQykVrxl5q45sVKKpuQF1rC
	 /qVCXnQLIoi4P53OsN96n2TzG1tnlhWCAMLEW9Wjtaq4Sk86GHKVaOvDjpXIcTSQq+
	 aYXMiljErpt+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5EF30299
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362909357.10959.7118176450658036735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8f5f1464a283b0498c6548dc5760c2da80cc771a2f4f6894b98832e4badace
Date: Mon, 16 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773629093
