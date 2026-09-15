Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B644332EB1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789437034; cv=none; b=Etj1bXalo4CuVxZIDs8732Jdd6AbNYu1fO3dGBblcJVCPmvqcrifOncvnJ8Gu8S9XTrWJw2jEQ4r+thhVg2sqql89E97IUWOztynyHoMqxrJQBNZYpZleVJLFRnMtOLFBR10dEcoQtOt7eaj29RyFaHdjY5iakwbLQoSUHAB5OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789437034; c=relaxed/simple;
	bh=nDjTtDeZBF1zd2wn/mUYyUkK93Z4T30GYM3FTdL+2I0=;
	h=To:Subject:From:Message-Id:Date; b=itDaOwrOHPyWzcRubYgJjihA3ITejXmYH3zLYmZgcwhMjzk1M+W9fAW/d6BtDgsiGE+CvRtJ00YKCqgscV+5kxPcOX4gtKOihzeXF7rjJ2AJYHVuIzxvw+/Ivcn2qGKuHjleFxuP6+pNqjkNpIKbxe9vshBGZL91Je7lZWHxowU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERctC+9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERctC+9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5419C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789437033;
	bh=nDjTtDeZBF1zd2wn/mUYyUkK93Z4T30GYM3FTdL+2I0=;
	h=To:Subject:From:Date:From;
	b=ERctC+9xbTrRvcnVccAM4H3mR5RAbb4jB2XgfxCiQZUOyFVJwJz/tDPPKo8b6gIY7
	 3APIjv7/1j+Z+9dl8dTqrmz+PK5zVxeDqKWH2wmVLCEyy8GGhtt5t2ZAH4QrGzEZBm
	 TFE71mDrv4a28wMNL6f1kNE4fFyaFrYB8nF8chfJVN+ZMTyxAbqCLLvwjvGF4yOGrj
	 tWKWv01xTIceLpUNEhyE1G0kjWuBv9Qt/K7FJS+MMYMhHQwqKD6mDC2ct7zYQuzMG2
	 8jzB1cITodrkXb4zBQ92Y7spZen3KY77xsrSBQj/SVF2afUmoadG2+KdWPW6H1oD+I
	 o34sS/iTkcvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3468C88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943703372.15948.12664555763761516514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ece690b3489b6021e59a9c4bfd920ec4bcaa95c6fd9b7157ed4663fc95e56fe
Date: Tue, 15 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789437033
