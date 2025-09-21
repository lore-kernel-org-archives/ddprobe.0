Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2501A9F93
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758470994; cv=none; b=CSDXVHxLp02InnGBLKPYmIkAuXmlzkQgNMpUoWq3bX82h5G1dUv6WOBdb5XnF9YsuvUMlghlBO/ib+h8EMSa95gnUe/6vcU18iBUSbZbwXa4JEVKpry/8hbdfLLFX9u+javyvzy1oUyayJmm/MkmOhDcq7e/Ysw8eev/66hNQIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758470994; c=relaxed/simple;
	bh=67SiiA7ImukWcJfs9S7ijzdOtyjpMJ6AfFRiPsNMTLY=;
	h=To:Subject:From:Message-Id:Date; b=AsBrx0E15tejPy1OqeVUstpE55/faRy/vWmYO7S83WmHN88RGlQ5/Fme1WnBHK7oGrHXN5HJgBGLr20ZDGeFk99To8cVD1UTwdB30Fwh7mEUeYo2FQC5dTxKJ8lwwK4a1bvENXqZhd5UZJlhShFQaRsNM0Jhuu+S5GVLuuyE3D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/cJdzCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/cJdzCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D11FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758470993;
	bh=67SiiA7ImukWcJfs9S7ijzdOtyjpMJ6AfFRiPsNMTLY=;
	h=To:Subject:From:Date:From;
	b=Q/cJdzCQn1NvU0LoUUX7D6UkM3uyQKibY325QaHc/tAUq2uGDuuUhmMfwNbLSHDb0
	 rp29bZEplYglM5t9EUrVxKO1t181r0MBdQamPMVf5S32nHcXTBFBZrqaoPwP2Y9Noe
	 BBTpHFlou9w1/7FfAEJvzUPKs3tHSO9l3wqccwUV2ctRo5i71jqi2arYj3gpNFfSTj
	 YWEUHBZYjovY+JJr+22hgdf2CKWuxLqb6BH7QJha58PVPLgtbWsfpjbolAX1yI6yJG
	 6wbTcCuJUh6Z+Ad1zdVNVb+9rL/v5Elql95j/ZY2JL/gtFn9oh8hejqomwPgBhcjTB
	 D4P+hntTlknMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B3CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847099357.24820.9626692620791580153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cc54f89258700f508b0468d021c1e819b0198a3f59a04fe0bb2dd7abbd44c7
Date: Sun, 21 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758470993
