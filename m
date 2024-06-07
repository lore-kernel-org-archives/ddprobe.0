Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C544DDD9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717745243; cv=none; b=qMswfGQ0Vs2gB1OiS6ZX9OIIZdtd5+6AptnHEvfSDAFhioWDZwCBi9+fbLdlY1ry6xdR8KP2HUZAcFp7UdsPKCKd6rTL0KvbAsk1Xcne+yU0orUFQFSdQWr+CTiF8TlU5QFkC4VF2Drd0UgZKkzorOrJE0p9DAZYn5+/JyA3YB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717745243; c=relaxed/simple;
	bh=MQ6OjIwK1x9/4UPQ+flxvbpi3YP5PmPh+5AKEllNcqY=;
	h=To:Subject:From:Message-Id:Date; b=n+TgBKsQuNUZ8yyuNgoUHwLCTsVORez4co3DA5JXuhH3lIFNmEmU2TqbXW+bPzMxPTBMeETD+as1ZAteYDO1ygbU0lbl3GrfGqeKPHHQp+vP9ty0QwbAQ43VCkOeJVA3Rz0/MDNaT7ITauOr0MC6SgXiAnVClFpISoBXthXyqpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJa3EJlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJa3EJlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CF0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717745242;
	bh=MQ6OjIwK1x9/4UPQ+flxvbpi3YP5PmPh+5AKEllNcqY=;
	h=To:Subject:From:Date:From;
	b=pJa3EJlUJOgeHMQh/lCMP0xOVeKOdJraL8aMAI1+9fFeJ1dJ7Vij2BuiIsCEvzdGZ
	 5mUZjoXRdkNT1tcmesHY5NIkeZJ+xOX4CZ7xRlw9ww0i6SABym6q5t2X2mkavmB1Ez
	 luGhdJMaY8oibEsI+l/v0DFGL4JLoZFUUwTdSdfdqiZBIysb/M16ZNz+lU+GHpHmmG
	 ib+Cp8+yXlTKDKYqXoYLD2TPvU2H8STyeWq6hcsN1ki4TdF0aopt2szpADQRIyB1RR
	 HvSOHHudNv/Pjnea3tUCB1llM5Ul+T+xX/xyFJcxAn+yJ37Sc3O67nhS480C+rYv5R
	 UL0/RQQW6WokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0752C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774524277.23874.15375695202745264549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee29a32a01c12f953039403346e73b576dc5fef07ee058ecbefab1f0053ae07
Date: Fri, 07 Jun 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717745242
