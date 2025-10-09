Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD073D76
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760017794; cv=none; b=c5dsSTNv5EyRXhHXi6gTdjZDUta3CxaE1pKKdFns02RhGlmpZiGfBMcD+2BBcRCQtigKgdkyN/sFxPaM9N4ov5xmAlcJ1gk/Sr50llAV56189kW3Y6FDRXRGZtoIIVcfayE68Ol1K2d1qaQy2ChFqoRYDOfVpSfZ74hCdYF7We4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760017794; c=relaxed/simple;
	bh=qlQ86U+l6b+3IZr1m8dSkjWvF5zLHypSlLs6tjsad3M=;
	h=To:Subject:From:Message-Id:Date; b=d+TL68ZX3IysJ1QN78zSYeMi9kAX1r+dcTDP1yQDjPfS2uZ3cL89Kp8++K+Vr725i3Z7Txus4sDI2Z4fRjNJ2bT4hyuqoGD2xZMAyOsQovzhrJMr6/Mu/AxArONiMs3vM0k8J4GJJoKjRZ8nsbaXOepsy0gzaFFNixjevfzQlsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY1CujAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY1CujAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE23EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760017793;
	bh=qlQ86U+l6b+3IZr1m8dSkjWvF5zLHypSlLs6tjsad3M=;
	h=To:Subject:From:Date:From;
	b=dY1CujAXsV7rdFzRHayq4+EHFbR4F9GMLm7/9Iyb0qpDVJDvyENz4UBKaTIys1Buq
	 5qyYXsYupTQPqKpAZsgY8Sf6avwA/+4Y79IpqhCYur8+wATwssWifniCq4omGlP6aW
	 t5UHSKbt9bYLkbFOtFfNdQsJxGfLgblkI/szhO7/uTSJTTKda1kNdBHhF6/HajtzRr
	 nbuoCjYoAmbjykx/A55X/l6cXu3cnjgcz/f31ORLqC7PmeNQBvDzk9ZZggzpck7nSt
	 ZUVwDVKFU8RQdgZj6Yd1H88Jbeg0WkuuhT4vxWoBK8T5aA2hw7TblmhSHAwxmx1API
	 C9h3hp0sSWo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BBCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001779360.5600.16448804526283661348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5196d5b827f2a580015e62ff23f242b1203438076979fe553780ec55285a7f4
Date: Thu, 09 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760017793
