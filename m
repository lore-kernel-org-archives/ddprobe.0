Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D5320DE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770534234; cv=none; b=BMdMT0qLP/kJyUb/+0Kog7Gg1Lm4CLTbhxgh1pT/hJ1NPlzndYyKGj6136Cvnaa4NQmALlLoKM+5GlgjZ2YCpurg2ID9yZH2XPFdJaYf5zhLo4d/udrzwWf5ulwYuCJ3b9YV3d5QHi+c9RSUFzxKra95bXR5JzNKTM4CqYHQSS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770534234; c=relaxed/simple;
	bh=K50mYsQWQMjNGXQ88fBzdICeZLQyZsbT8NZDAfS/8xQ=;
	h=To:Subject:From:Message-Id:Date; b=mgnTAj3MHlWPg4uXH482r3hM9/H0WQHDJNXcwbouNk7tW3qM9Q0jrBlbgr+81JBZDE6YRu0aHeca6B6054N+p4rmqXGyK1Hu5YgXFBkm94uwgdzIu1gP8YZtYU0am5QkfRpDizOSdg8GLLYbuEDzafVWF4qAAY0W03ZKmygC2hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV1WQF7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hV1WQF7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01D2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770534233;
	bh=K50mYsQWQMjNGXQ88fBzdICeZLQyZsbT8NZDAfS/8xQ=;
	h=To:Subject:From:Date:From;
	b=hV1WQF7juF/bl7zJy8pB0FhTNA01jl4k0cmunekfTOS9e+qEG6cN17sW8g2cljwRE
	 e4raLnx/P/T4t0zqt3cmKS0BvoeLlLCAMx88GQqkK7l+Xcm0S+koMh5qi8iCr9JuGb
	 AddRm8GJKKTZLfzT44wtyCVn9rFFHutZvhNyXgyJ8knINc2wPwCyJ2OGEZAYDFxF6s
	 FmbtdIT0kmlga9mwXpFj7LwQzCAQ/Ve+c2I87/DT3p04RijEr237kTjncOL77R51L9
	 rAgIW/mxOG9FapZrHd+hav1/j7pdUY4FaC8mRZjlzBeI6IVFhsm+gSFSKMoYvLzVMB
	 hcypdWO3KPxyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B06EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053423360.19017.15445491528801975966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffca67d8853a16c5b4329dafc2af37fcafce5805149d1fc248fde4730913ba4
Date: Sun, 08 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770534233
