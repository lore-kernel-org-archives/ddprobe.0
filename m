Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7477220F37
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755208793; cv=none; b=M6QpcLHB9zMzfwyoIww4VY5+/ig0XCV0oPm5bZnVnDZT0WOvkVfYwBvOvMIXVE6YxUOyamQM13bwObB2botKI8hSEhI3t/klEF/AZrZtTr+V/oaU2Xi9RiEZpR+E5/Qj4lqJXC9JtnJKy4ZBs1Ly+6OD/WTEheUV+0MZsxJqZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755208793; c=relaxed/simple;
	bh=Y0qXVTSej7Hkfm1lq+p1Jmap32h28y69LcYlppuXRFY=;
	h=To:Subject:From:Message-Id:Date; b=Ju78EYMmKcyH0QS3mdq5BllwUJvSXBZkCCkO1QQ4TDT2/WtiSnHQluyihGkSkyQueXMZAc9Duh+jtRC06gnI5pob+FDBixFhEVLo6n9BZoy7uiJ9JWcNxprXjUTk7xCiTZkEipAkdxg6PlQWFGHYSnrBBthcufdaDGzl9xjEbAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvG8YPnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvG8YPnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5324C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755208793;
	bh=Y0qXVTSej7Hkfm1lq+p1Jmap32h28y69LcYlppuXRFY=;
	h=To:Subject:From:Date:From;
	b=RvG8YPnREqTCD6+AnmqM/VR9EOvazUrljZLckL4ADCAYmGPpYqH2Ch3JU6euEQq+5
	 fNyvgAnJgfpdVkhBnCZEnuZukmMIychKpGHJP74H1VTnCs92n2Kyn9R/724wGky8fN
	 gi+wVUWaV3DM6og8Q5FxqIXlKx2xd0pfHn0KtyFPiP0me4OsWP6H++Ib8YbAadoHFl
	 5mEcTIS5SIU8QlDdO+TGc5Ju6LKvaX6LqYux/WQoEsbEjBLZDT1PwynCXO6OzO1sm+
	 3n7g+k+jt+cNCm3LlwlnV3Wi1xlBWRv7rVqhwB0GyqD+7OTRzPTzdvAJE+7eC0nc2e
	 p2ueceGd+iKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E83CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520879357.21790.6381600447553641648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2cfde8b843895ba3f3ac6610c4f14db28e56f4a7619620be1013c7f704db77
Date: Thu, 14 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755208793
