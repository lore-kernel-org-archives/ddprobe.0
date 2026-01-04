Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0241129BDA9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767559434; cv=none; b=R6F9LcCL+ZGifSSvsBD0677ls9rGlRIQneYJnjN3IH7i/gVrvQP0GoxtYBlcRdQkxkj0z3T8d9r1MsUegG/sc8fQIc5+FG39IPOsutVCq1OmVygpkMl+oQDfQ9cSPdKwk6mzgEhALYqQiwlaQuh3uD9/E0js0ciqJLqLRWE6wDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767559434; c=relaxed/simple;
	bh=pBa6V2Jhtp71TVF/b2sYjiZV7Kfgn00CuhrrdkOh7wU=;
	h=To:Subject:From:Message-Id:Date; b=mhPfjH+hW4gmO/NulykS4qX2WQApJubKprSmJCwZ5o/ucQTXwfl+BrCAiouWBDlHB+ufJ41GmiKBaV0vk8gd+1xxa1vmeJ1ZQOGNMgW0Tcd0gqViiWhVNirLhoiZJVRrhPK2AgM1S3iWCfbdVYyqQTj/WbK0WadURRnody2mBnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0T46APK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0T46APK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E8FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767559433;
	bh=pBa6V2Jhtp71TVF/b2sYjiZV7Kfgn00CuhrrdkOh7wU=;
	h=To:Subject:From:Date:From;
	b=u0T46APKIKmNRzRgXyO+tU36z2c3SkPFv1Xd/mqX9gJufMTRbV7vxnloO5E/MNEVJ
	 NQtqZ4+HD8hVVJ4S54H3eulJ/vuR9HI/yC/9JtcgDZQr7q3HDqjoXAztXfafBh0oNE
	 XeRlmmgPzmylmjJsN0UhKXk1/AW/5NZjsSnmFBtMl8xvGiDG+8BgBojhMIjkCKq3GU
	 OehnhT8ssg8N1an1aUNF1EOy8qisEZJohrdRRayKIHAzixjwt3C4b8Fz8OaZes2XbX
	 qQYdvm67XdTm+DBBPWyXf6UCSm3YWugpmyC+ca2VxMsvSjDXf3D7J8DIitC2sM22fu
	 d3PSZR04Rclhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F5C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755943357.30702.8275460147293074104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd671209cb35c4f98536af0a90655c4bede561f2b485309cf4f01ce5b78c1359
Date: Sun, 04 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767559433
