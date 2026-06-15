Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333B824E4C4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781494594; cv=none; b=YW6EDIBxkDxMKbaw34aTFRwuU/YAJA0lZ6Vwo9w/yBrM2PWQXVrx3YJkS4vkHvk0J8ieiz52ExOIbEg7KGnedOpNC378GSYoYRpMcMqOHGtlYN/G/VY58gcTmlc0QAHOpvGSaFc2E/5Ts1+69pC9Z/I2iX8y5Lb+KhAzz4KNUgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781494594; c=relaxed/simple;
	bh=eVmJlbqi4dkMFrSfwAZqS5ly2Cnk1pYuerQPtBJhhKA=;
	h=To:Subject:From:Message-Id:Date; b=FqPfXVu1vKcnlXoM7phcoxdcNuIIRVOIG9y2Q68s8xhdy/2yrxL0LSFc9kbUK7xZvIPcfOWpoQ0K85Qt0lZkvKnAIvzMTxxOFb6qDMR2jFqipbMjF8nLhB3z6WCIxOpmBvJq5GfpyV8tRbvclTtv9uXvZZsD5qOY3RMr5gkbNOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxB91mjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxB91mjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E97C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781494593;
	bh=eVmJlbqi4dkMFrSfwAZqS5ly2Cnk1pYuerQPtBJhhKA=;
	h=To:Subject:From:Date:From;
	b=nxB91mjYxZS7IZGXqqZbEAMLe/gYDXs8424KqTXWxqixx7pbIbTU0AHj9M6H1Snq/
	 HqJmoTOFpdyAQJHjtqTZHoLJGpPHRS7QvjWqxtJbnx3l1ungw3hGDzYvhc0PDZVXdC
	 t6LC8K7XzIf3IfZsooDKIgrY2qqoqSIsf3dnTJ08m4O3ft2c240r1YJ2F3TUNZRR2T
	 Z5L6cvZr7mfEkDz11sExRpZm7fbyytaTY9wfoaWUyEze0SqGVrHLT7PIJiK5S76Yc0
	 BQIfdbG77R3YDxa55K4HwdWOSzeiHJHgq3Vvn46bsOmyqdSgTXfEIQLokEx885Saru
	 A53rxoJZCZgIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC52CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149459369.16604.7357183568878942968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d642d223bd631bb670814abb1db50de4ac7261780eba74b3440b600e7bf44138
Date: Mon, 15 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781494593
