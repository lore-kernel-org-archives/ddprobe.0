Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CF635
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753867194; cv=none; b=B5Lg2xKKCwZPJ6kXizDxwX6QgsD9uUtdjONX0LusgZAEtCEs3EKRLSoLoP/6y2s15rRhQTTs1y8RT3PjdYe4Sv1xRgKerY2IYC6qCyY4uy0UBOgOV+tnAtS5hpf1LIR4bMQp45Z9l3lbMCLsCuD+rYh+/H5awhzR6wfbaMgOEH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753867194; c=relaxed/simple;
	bh=jsaR4DatKLqw5yrsEfkJWM2HVUjSMG4fysp9191siWc=;
	h=To:Subject:From:Message-Id:Date; b=qNgOWDqeQsjaGtGJ83uKOQdTZG6/4N/iwu1oancWuMw0SN+sPCzLMg0bwBlRQw/L4OtpJUdB77Q94YBiyR1sMR5GSsdh18vUv0v+/d1Q14eQ2jXqAmCw90FVEVbZrW6OvYH8cZRKO5SBRn/JJa98XH72OCNzDPASnnWqNKhPp58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYMZixCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYMZixCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D716C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753867193;
	bh=jsaR4DatKLqw5yrsEfkJWM2HVUjSMG4fysp9191siWc=;
	h=To:Subject:From:Date:From;
	b=CYMZixCkeDCEKPA2LLTfDcPRnoYH7YguTHDkhGLTqU8thKyuowyR6bJSLexpaJKfA
	 sO74lQzcFb29yH/Vx7a0bxk97NZqagiXHzhHKtsRSGA69KaxspRw/cnwntnjoNaF+U
	 GRFDr0/UxLVTJXldiZrdQC9iHazTjjLDbZYWdoXmpMPWVwPcgi/xUfO5Ze2Kb0YFA+
	 CjWpLOCNLha7D/xZfcWDt8rY1f2QsA2o3aTerH1LVH7A+DlgQPdmQaoSlZ8ibJgZJy
	 XeFySLSyqKSGX45Vo+/+rqmidttpGXt1zbkpMyLompZHvNt57OwF0ysrp2KbnLHmCj
	 ZLMy/KXczUFkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE9C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386719357.5785.13831880757424052848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e38a213f29ce0a683ceda534fa000709d9adccaf387a4f6484fc1f2d2ffd692
Date: Wed, 30 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753867193
