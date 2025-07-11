Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26E72F1984
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752256794; cv=none; b=DR7XSa19C4KDWOHF4wf3MQ1pfNIA4zKr8aJu0AgAJ+iXzAAqebA4L20xzSnKqlkxFJ0lSJVC6Ke25qgarEGdB3gc67WNq5ghvuq6AWWoa9wpAztOfvkz8I6L1GgvWnYLVZ3d+ba8USL5NdFu4JIu2FaUKidmvRRVbQqTiFf7koA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752256794; c=relaxed/simple;
	bh=ZGDTfiq5TOqszetJhHfkoAC5YIE93bXEkBQo0UR+UnQ=;
	h=To:Subject:From:Message-Id:Date; b=CE2aeZEmXTaWdRv3q07E0FbXl/+J2RsgAPo4GDUOyZCDqLoXreCSsrtV32E0YlhNxTQFomLpwHb3OyYi0qDTaFlA6/VCpGXLcgWFQbaeDOUDySPlove8F7ixTkgttxvCQ6joSLBq5R4QnN5/yOIYJohbubyC8VbCEMwCit/Qvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQmS7vEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQmS7vEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752256793;
	bh=ZGDTfiq5TOqszetJhHfkoAC5YIE93bXEkBQo0UR+UnQ=;
	h=To:Subject:From:Date:From;
	b=jQmS7vEMtaDdyIfU1E5xQrB/ZX9879OBZHN9kChCAzF0v8/aR5J2uqWA28z73Pzea
	 4GH01dNbpegmt6H92KbhbHCk10TKKPHsbpXE3iiMdZ47XwGdGuEUCwwx0GRPS/QMNc
	 IfZuJ5ghkC9J1TSI6gr/CPnOF+BnJnfzzMWvjjO0skUzuiWqIssU+PUgKwNG5gMkAs
	 YD9inpf+ubPKHJUXnDfHnJ5sOzZe+N6udn3wwmPKQBRYV0BIqovEGQUyHKdUF1l407
	 hTU9YC8t52vKj1M9MgVEu9LSZqALjn1Udk+Vk8bPrJt1HS7i+QZVwnaddxM9hMc+XR
	 VgJm4Bm5PMXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3DC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225679358.22069.3454988176568703864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902f80b2b9953dff49791b8b4fac70713c67c99dd6a5495a09212df6a64b2f18
Date: Fri, 11 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752256793
