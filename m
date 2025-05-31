Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BA710E4
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748726994; cv=none; b=A5HrOepRpCvm43uAONiiAGKS2zfu3JqPhooTIJtMvDlIApbPeOK3oxItzfkMIScjNaZV4y29XEy0e1j4ldbnkx8JQs8Sh8ZynJLyd9BQvx/s23/W5OaNF33oX1NueNn5i1oWmL7wh+9Ww4zcEYJ1ehVrYEAf/wyDM+GNgDmUBak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748726994; c=relaxed/simple;
	bh=DFTH4hOFNLsXx5CATAiukeLVQ2SI/TZhS3HTK0f4wKo=;
	h=To:Subject:From:Message-Id:Date; b=GPQVogvlkVy0duVKxXfjbCFOuorGCowz4KzzX64EE5a+e4IvgHmbboBFe7jNKrEdhqfyeS8o6DAWak0O0Q6OJHgCRQLnxgAdyd5uUP+NpNoCNJSrd/8ooN4a4B251aJvvGaVkkzmOnB583YNL2JdA6uxPVGRFj6UEc0jOhLwDIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/giqYPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/giqYPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2085C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748726993;
	bh=DFTH4hOFNLsXx5CATAiukeLVQ2SI/TZhS3HTK0f4wKo=;
	h=To:Subject:From:Date:From;
	b=Q/giqYPnk/oBC0bs+VVj+nmcEdkrWOJH0NfYx/i81dVl/nygAVXxbY1931Vegy053
	 mg3DvUbbeaKjIcoHQ/d5FmwiXHklyhs5dUU+k1A1rmjAyVvrL73YahwphHiqAPEfVJ
	 RDv9AJA3fsMSEScilKeeGcaqLKsw5j/V6bCMjW/eG+YmeIxRswKmWWAXGQoyR3dK3U
	 3hqWfBw0F1qMMqIw7Rc/VhN/hEZOrp4mGJqfRvREV4x2QSjOeJDzgWioSmSGA4bSZG
	 FZMz1hG2JTuKaV1RomQ0nY037tEN1appsGi5qglxQuKgETcBs/YN7XIdBcASbABr8X
	 Iv1LXHP8sERAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F229C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872699357.26729.8091698144838781465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ce233963aba1362fccbe2ef0412ba71401552f26a5ad3203a4c5f795e8ff9b
Date: Sat, 31 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748726993
