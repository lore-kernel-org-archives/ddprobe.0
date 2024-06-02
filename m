Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7349915A5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717294523; cv=none; b=sD2LD7blcjzR2HkzSvLyVF9cbOe2cznrW1uB/xEgbGuAFaQQ5FZh4LYFHtLTDsp6utaJfgfGzZ5m6fvikRH8DRsNJllGDMmZyMwVBBBWvEK8EljSOS/qvbC4OXxVrlbw1httHR2CC/4Y8yFXPnbu5KcvELbKM7s9xPqfuKjJeKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717294523; c=relaxed/simple;
	bh=g+2qPEcBLGAIiL9IH7z9MIWq7ghAkw7qufJ8s2gqtWU=;
	h=To:Subject:From:Message-Id:Date; b=qE6QYD4lF3EBb01BCD5lAQNsQFo+2q/p4mvsgZnPI5PDVRyHnyGt9KIgDa0SE3XhOfoBsKYZxrrIcmJS7et/icHZyI+mr9vRLjn891j8K8LsqLY8DnjZ/zKYrYn+VmmGg/ZaZAOnkaL6F4AR5zJZK6OB/DnKSpQ2uxaywr8FG/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SigzHBdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SigzHBdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30ABC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717294523;
	bh=g+2qPEcBLGAIiL9IH7z9MIWq7ghAkw7qufJ8s2gqtWU=;
	h=To:Subject:From:Date:From;
	b=SigzHBdU8foS/CEDoqnluGSIZKh9DAFsypE+WQY2/PRgzS1rNyWFHjoFI+8mkjWEh
	 gNkqqzXYzY/J5SQDqZzyXH54J2zl14z5Cf5bv9+PMlbCI0fcMeWrvo/gwYEivUYlOI
	 PRnU0YKY1Wtaswo9A4j0zNW0d52GSaUMSmDIRsSv9ll9na4iwzhKbhLc8wKuZxuT8P
	 JdzT2ANLgPVNR0iO/kBUvLoUX+OSmuSyPAksYC9e3n5pysG1MS8YMmXpM5/jIWMrPC
	 he6fcFbAnXrDbGm2ZFk3+3VT2sYWqIPvyjyCf44cazsKz2N7VpYqHs+wmyMHGLzAuF
	 wUnS5QdDHafxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15ACC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729452280.28601.11540922490972984547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b57e08e8eceaff1d28ff06e541b2974344afdf11a83bdb49631537786368a71
Date: Sun, 02 Jun 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717294522
