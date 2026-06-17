Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7FE2E7363
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781661994; cv=none; b=cZqJQxTINprqO7s9bLQlP3CDbLa9qa3eBwru0myvuk7PVEIrj7jx4HxqDUWKP3IDvcGyKl2xH+BHPGHvrqGLrIFvOnax8JVwCWA3F4vtLK7gnzMrYMrqn1JJIdhIDwn3p9NW7F7SmNXGamxHB6abvEiUzgfop0iL2cGhXy/AIpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781661994; c=relaxed/simple;
	bh=ZpojhbOvST6Ee3+aqxanRQ5raIRWNp+0zkY9asSavjg=;
	h=To:Subject:From:Message-Id:Date; b=CsoCq+Z0uuE5JhTfJjUR/y7S3XeDBnXl77Rli0cPOqsrcageiWGTH33hzUFarzjVrYbZbe1yfnUr3+XcHY72zeO4wBN9mqnwOw0D/Hov4DszqGN2dQ4Nl2NXHOdYJaYf7WrYm1jngGT4D7feABQscu4/vmAOQ2pPeyXGMGvOILE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB13uQZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB13uQZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D12C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781661993;
	bh=ZpojhbOvST6Ee3+aqxanRQ5raIRWNp+0zkY9asSavjg=;
	h=To:Subject:From:Date:From;
	b=WB13uQZ4wyr57C1eBNnHO3wK3WHuiMHm+YBmInxTWXadswcNuP0qDbYrPjvs05MRK
	 RvVUBhklyMO+iInsY7lKHri8mcb4bd7Vvf4taV6Xj/6XkGN8iBP2gohajpJBfLI9AB
	 2YwiClXcSoObi46ZMNreO1DILv2J8MCRhTWcI9eTxXwHFfuvt7GR4SJpj0BVtioamB
	 3dz7IRk2qgupQg62ZLt5yq2FxHlndVnLLDTHwW/oKs6vfXlHoJq+uFmO8OldpX/kj2
	 UVjkZyaCo7sG2HwBbWt14x4kYoMmipMxg52L30ldOEkRLNo74e4W6Webf0riL7SzGR
	 zHNCWLM6T4TJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E38CD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166199371.5892.8844621042593511832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca08dcaeddf2fc4e75bd6ec2f76a15709b3a0faf0160ae559752df8139b596e
Date: Wed, 17 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781661993
