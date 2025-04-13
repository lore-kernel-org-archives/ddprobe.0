Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2C31A238E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744546194; cv=none; b=n9T3h9OLJEjR0xMSzjlLkKfpYSkNCH4r1VUIgZXxIAM04LnwcDlRT0gHep+mb4OL2c1GaNS4gc1Lyd/Tx95+sq9fTypwlA6/1RHVFNpZGjM3FJ6eHTW1etwssbefkLTbxl+paNnJFNvC0BFfI9Li8CxghChnSXemzQxRvrsmjFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744546194; c=relaxed/simple;
	bh=f0JvtV8TlZSlTTA3zv9z0iRerlXAAvTb3N5NvXhaFRU=;
	h=To:Subject:From:Message-Id:Date; b=ErLHBxjFU9wm2CbKpS9ZRRbcEDw3lQWSGxZeMecUlRTYT9/6G/csiG591Y4FTLSNoogmMXeju0rcPxeCvh3hvH27WmSisV+KICE0EzbMIsf8hXK8YAoiZ93beGQpxAytnvva9TtjAmmelhh3TYH8Q2nmupW4clUIYZoKNLSx/Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPusI7tQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPusI7tQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F19C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744546193;
	bh=f0JvtV8TlZSlTTA3zv9z0iRerlXAAvTb3N5NvXhaFRU=;
	h=To:Subject:From:Date:From;
	b=ZPusI7tQehDFAZ40lWmfvntzyl22P7jKMnRuu8yNmQMXJ/yutoABOELNN7NBuXbAq
	 iWM+Z4WHV7bGH3vdEsjIfEYZgNbgL4bxAU4f5tOY+imuow1U1V8qkDo0+KUyu7mENf
	 ljiAJJwKInt9iDaLjBe+0TwF8fm35HYPR+yzeAPIfpTjZnxP/9IxioPgiPQk/Na7F5
	 bqu65jkK91wEZ8FdAEinrYDx1Yn07EMMBLFGxjbBOlgRQOAhUYf16LNe1fJUN93oD1
	 RQXqJk6j7erQUVrVZuhVUh83OLdr/x4PqsGgxJqAM7LBzdzGtP71sUlKoFwZpGm97P
	 3GEUK/FC0tj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19ABC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454619360.22004.5915799220976506018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8de09488a7ca6a34ddf692c5df6304f2797927df91a4ad4860d5159a9cbc48
Date: Sun, 13 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744546193
