Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66737225D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718564303; cv=none; b=WgH7uv7Fy2wxvyTIJ8nRbbY9TUC4nvwb7u328uArsbAxzbr4mv6yFIOexcK4TEPcvg227LEHUBb55/V7ZlJ31/r5kG9HsaoA6Jz6n+hNOzCuh6BT+/SlREn2aAQgrIoB9avDkHusZHFkSYK8EBaPWGymhIrIDo4ms2lDj06M1g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718564303; c=relaxed/simple;
	bh=JwTm92dEr3csqJWpFnYorbT9h8VfJ+OzgFxIy7vNoRg=;
	h=To:Subject:From:Message-Id:Date; b=Qb12k0pj5xJItmWEovh49xki4DTMWfMFEACnlA3qRzTWP3Fy9DTKe7Nk0Md5LUdJF5U0T+f0V2t7jRw0okxcZjG6Dd6HJAKt+lOI+WzRRhq1MQHcgtFaremgb/OQUSPLyU5oRQx2vO4wpN017yDySWau7oJK6TM8oWXbqwAVQTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq6NlS5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq6NlS5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3893C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718564302;
	bh=JwTm92dEr3csqJWpFnYorbT9h8VfJ+OzgFxIy7vNoRg=;
	h=To:Subject:From:Date:From;
	b=Fq6NlS5B3dn/MjJurc261P8o2nJ719YJm7Jpfrbe65nP8OqbMwFbW9nGChOk/6aCo
	 S11Bxv7mFN0nJi3yf+vXaiucv7/8TB5j0UAmCiV8WHrDC0fml7X8HAmM45jzkd+Nn7
	 yepQOVX0EIIkHtKr/EQ3UzGChm7+QU1dnLSYNZn2w6J4QgjOabSa7OdwP5xv7OifaZ
	 SuIcTUkJwGOVGb1U4sRnCQm1DDfs8jbn9o0jCdUfviGxfFZ8dLmJFIDereaX9MrEYb
	 x/Jpd+JyUgOp7yog6MCjqm1Zx3B8+6hF23YkvkFNxi9ReTdPQRUuEHOlP6SBpnSkBJ
	 x00UXVOY6a0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD8EC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856430280.10724.13338133247368471419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc9b2e9973bab90418d6dd211991bc492bf65cd2a878198761c2f32196f21bc
Date: Sun, 16 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718564302
