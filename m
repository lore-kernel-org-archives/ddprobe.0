Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3523F4854
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787294434; cv=none; b=jIDrY3lalr0WcJtpm5SVDSySOa5PlJrdMGpWLrPnymdp7JO0b55zO1mLeaXEZH5Ke+lm574A+OrVFeNIDckxeKUvcyBZB3oecRtj3WcOw7sYSr5OxM00gtY2ofjtHCB/1SgVb9yc3EkoVKV4sOHrYyNPDyFtgoQD7DEi+QzraMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787294434; c=relaxed/simple;
	bh=pehjqDtCBh6Coth6wV0h4R2a8sj39+FKKDjAuICZBKQ=;
	h=To:Subject:From:Message-Id:Date; b=XBYQ6s/QP04bfv0+0dyYdUfZPsEY4IQkzRgvdUh5MI+eFeKfciwgG1OwKsxDfJM3jUCu/uyy/vLQJLPaJeQ34FVLYH0A/u/893DXRxf7DtuqHPmij+NjxIiLbzHzajpOrXqt6EMl62D3MzhbKXZRR7uRjiV3Pm1n3duvDM0VDGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbQOFHIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbQOFHIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B6C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787294433;
	bh=pehjqDtCBh6Coth6wV0h4R2a8sj39+FKKDjAuICZBKQ=;
	h=To:Subject:From:Date:From;
	b=VbQOFHIOvm2UGSzALKmObU+tPSwpuPA0tkQ0FuI5bQl3xvfz/X1dHnfiqesneUAVL
	 SG0wXDm1poAZko9z5P9hR9WpmsUVg+SK/LcTs5SLtPBod5yDjp8QqZurOmI3QppDn5
	 imCCZgTHmN8rABA7pFSjPTAkX4mXfFaQ9J7TJlfBOzQkOho0OQViCzO1GKUMLpeamN
	 w2K7R3l541z9NB1vrjR4Did5D83NguWc3zkvw26YCjMSNNN5YdewnEQ4eFJU2almM4
	 XaHE1W4L08U+JfBoS81KJ87b8+sa77Q3Ftawi79T+ZV5EkH1IRtf/rBGLh8NV4YMJW
	 zr4UfuQUz28Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDACC5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729443371.9285.8137798201550215004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47c379633d4d3b8d27c6cb6a7e5ca2bbd2aa273cf2065a03e3c660285297b5f
Date: Fri, 21 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787294433
