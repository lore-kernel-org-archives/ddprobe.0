Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65929B200
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771251294; cv=none; b=f7ZMVbL69mt7Jvl8XriHV3xxe7OPFD9+EI75md7KHZYZPHIzFCnfxJSo9kPyRU/tYTziFJrO9VPO3dSpee9gijnqRp/GveTUkq6YK+BNBiHkI5arhHPJWB8uS7svrxMJOV6Y+g9kuszDP6d1DrE3FldwDiDyeGL6YoU8WGee9Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771251294; c=relaxed/simple;
	bh=GYrRbXEOn8xXNBB5Oae1oVHf+TcwlgKUOfbWmrPcfLU=;
	h=To:Subject:From:Message-Id:Date; b=OdYUMeqs0NqoNupa8a037VGuqovMNS3EhruurWACCzOoVYjUin2Ay3rUosIaKFmLaVFUCj1LZ4S2RgXQDleo5dABoacv4Z4X13nlD6opxQ3qVQVOCHnUw56vyvfrbqhMEhwZ8quri+idrOMVzIAga8ZXeF222y7ZDdGbdwSt/uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onUPW5qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onUPW5qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3846C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771251293;
	bh=GYrRbXEOn8xXNBB5Oae1oVHf+TcwlgKUOfbWmrPcfLU=;
	h=To:Subject:From:Date:From;
	b=onUPW5quS9BgJMFRYZMaXRQG5fHtDO7logFmPoO46XtbU0veFkCPqQyaBSzCPAMyQ
	 pAUyiOhalLrOknN//4Za3P2Zjhn6TBiEYpyioqHSVXL2oXgKO8Cx6MVmQGUXN81Vbc
	 7h414ExWZMdVLyCByz8PBq5tnVb3WpKisLudttlBEwbjMKhqDL6lPQht48cWMLXMS0
	 pqSuwF3D+dIi2kEA1zPVBZyqG9Z4LgI7ScZJpNL88j79TsOQ+8C27jRoVpm6RoGsUB
	 e0nzaUqEAdcc+p6bYiX9E+H8TETV9kgebjS5iticI/K7qXwyCjabJgvc//zPpotrOX
	 MFUt9rOLwoxzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259DE81A29
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125129358.424.283321031006920782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd7679802469300259db27cd397f5408966a1c0eec1b2be244527ee19a27a8a
Date: Mon, 16 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771251293
