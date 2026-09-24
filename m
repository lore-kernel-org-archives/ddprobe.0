Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA8178F2F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790208634; cv=none; b=VRWaoRgDsD+GomlWqsWCz/I7AtsmYb4mx0gHR07B3F13vi2PRbLcvvFvtIKQYlJmZLkilr2Z6GVgvZzpOiufjuiguzrtRC2V4orIWlQx31tLcqlwdsXLOGci5W0JMvCgKZU3+egBpNqPkik6zqjsH3fcJ/PKq4C+H99guYAvKFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790208634; c=relaxed/simple;
	bh=5X2gOz5vz1JLDKT7QENuwfcemtplPWh4WQT1zfNet0c=;
	h=To:Subject:From:Message-Id:Date; b=WTwaUvPlEu2eb31r9d1G8Q5Pf4CCPRIwGrPOoT8ttiNKtEx8swVsJYpZcxxY0X6hGyojM4bJP3QqpylQ5ySsmSoozIDxDGN7U/80mzwXS/1nRlpnXaPqPSrLg5OkLqIOMxt4miqSh/qNMfiTgZEnhm3sJJSV5OjG7DSiyeWsMdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChCOmkRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChCOmkRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA05AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790208633;
	bh=5X2gOz5vz1JLDKT7QENuwfcemtplPWh4WQT1zfNet0c=;
	h=To:Subject:From:Date:From;
	b=ChCOmkRolHqpVhXN0OOvj0l2ZWwPug97I+oDzQ3X0Hp6b1KgjzXG9NbY8Qt1IN+V6
	 y6u8z0qT9zhKB8ZG6VWNscAhuaq8Jk6M2xiMqVAE1F7VbzYtDdUdo2Ny+0ri0EuYuY
	 ogAR3rQ2nDNdu62f+S6oQ+TUGdCguDMftbi+Dxv2ETJqISw12jX5QI5BCIUn14i3/+
	 IXrqrWqTY1tgsEjYorfKEFtR9mmTi7qHtOLkDfBgbe9kGwCvgSfjqOLCu+q+3LHn6s
	 t0NVL2wLAj3tVyvdzremrH25BcHvon+0pxPeJZjgysGUuQu//A7QPh0FNafWZZ4kkg
	 f9OWzfSfO2KvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11FEC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020863373.11447.3700994672960871263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b696a0e7aad0f1737149b5cf99b1601347cd843bfbd44e400b22d879f8e1e961
Date: Thu, 24 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790208633
