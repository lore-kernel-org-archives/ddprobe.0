Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221801F602
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733612154; cv=none; b=UE7045Sga1qjGBhcVTqjg9C2IHVibuzjlliQ+tuRIaOd1T0ayS3jvDRjqpifKx93VjBl/oWXHkEajk0RFw0UoU8UfhGhu/oyx96ZErwibun4FBExcFmkHj/gta0OA1oS4DN2tmymbDpoZi+JtmVafkekMB0C3ByY+Y1D085qo9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733612154; c=relaxed/simple;
	bh=1LM8o0aDiybwO6by/avHF5yVjh23VWJ63PjVefIaYuo=;
	h=To:Subject:From:Message-Id:Date; b=nOM0Jx2f4pyM/lyhsD3q7xZkisfoRMMMqXNnAW3PC36p06gI0fHDbMJkJHdX5U3YHRl6uM5+yxDhbGOSJDyKY/sO+LOSKST85VghXFhYivnifqd7tdk4K/L5A+9P+hNZzRqvDokdcTfjLbaEkBVDScGLwNWE2MzriDubX7jW1EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixpDNiNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixpDNiNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B671EC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733612153;
	bh=1LM8o0aDiybwO6by/avHF5yVjh23VWJ63PjVefIaYuo=;
	h=To:Subject:From:Date:From;
	b=ixpDNiNafjyVtnBXHwiiBZHzCXUY+xFi0pXlHoxF89tqdjurp6/d2j99bzMsFcY5K
	 Ppbjw8rkuMWgBF3sH/MEAsm4TBrfFNfE5GSfql30d/g8WXRjRvPUOGXRpmFRPazrlF
	 DAZLnQ7XA/VsePNJ5VJFoZ2/YN9NA9spCn2Hbe+ZEA6p5AZwggWHJgOl3cxw/deIyB
	 0CvRudoKhXfRvmymQ2LgYr6zuihYJWuBqa1B5Vo04T+gUJAfgm6f5f3MIQiT0uBZZM
	 PwE0R+fwAf/C/ifTlMcV4ITj5YjzL2sBkyP/skgPz9oYeC+HECztz7kkTdpoZL+oQr
	 wjCvL13obLM6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9E7E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361215363.2991.3525764904211911843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14ffb7baf825c5dd9e481b457f3324e46d4aaa1eab58a8b167faf3bc1dcd1f3
Date: Sat, 07 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733612153
