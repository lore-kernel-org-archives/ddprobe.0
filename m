Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E404C83
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733371554; cv=none; b=e6Upr4CY9EM7XqWxff/RGAUFIo9IqpoCDhSn9vLMjUeW9z0ZzlwP6fl5lpyJpySMxr/eVk9ic91c6ip0neFQc6hjGPqN+sdc+lz62oh3oub4rY0QQu032tJ7gLCvwWTgYoE5yRcwJOrv7mIOzLXdkcF5N0pGJqjGS7lq3o5AmBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733371554; c=relaxed/simple;
	bh=TRTRWQeLW1h8no77Rh30+e+YnCWc0G0uyy2huKqpeaM=;
	h=To:Subject:From:Message-Id:Date; b=q53qmPmxocleY90rhNKIE9G3nDdhfqBIT0ftLgjRwrwm4IRv49qyop5G3AO3wBLeR4yBl/346CbPiy3gZOeSL0+4p/hO0UcC+Mw8NAbOQCeFElADLaJcbfqtosOEiH2YUP5cSPnR5U61+RAoE1WHKZ8rk/FgMPfpz572NykaIMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTn3yKb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTn3yKb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0ABC4CED6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733371553;
	bh=TRTRWQeLW1h8no77Rh30+e+YnCWc0G0uyy2huKqpeaM=;
	h=To:Subject:From:Date:From;
	b=OTn3yKb2Db5yEYVaDHAhnn3n/HPmqTeIeonf5VOL9ZZ/6P5X/O5n7JcesyZ2xGeXO
	 9CVFA+HyeOY0XeY2IsFBbP9mwl/nkckX+Q6ZYvQaIHpxOciceAaOTwp5GWHZPCozRL
	 ZhNWC/qan/B0lD8OrBfVi/H5ZJRJXlp3Kc6sC+xGuukqrBdghESczwuocijNvwUxe2
	 DRHoIZSoX9RNzcebQ+UoACC0VXG5b1yama8mmVuhpV51kNMZ1IPGRfM9hZTBw2o4K0
	 WdJTiTZgT6IH2QPuX8qpMXPAD6dpFniGkGLI2XBGRv81qN6uD6tVRexJrseeqaC0vD
	 qlhk5xpROij2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE49E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173337155358.14087.15191002631938853709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f3f0d4e5142a408e40511be73982da2947162d3d93fbb348e93a3203c30f68
Date: Thu, 05 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733371553
