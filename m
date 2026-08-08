Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE2D2D837C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786227634; cv=none; b=jIMOg26VcISnAO+4d0TkCNZiv+zhkO9s6JJIuP+nFsyKoBe2TflnVo2qeD/tVVxYPRWb6UX/OHQCG+kFWE03CugB9t46BIagmobRvAdu0YQ9kNc9+6NGu+RmGrlhU8kOgWtQGc21X1LKaVvFnNVvIqu5U0RVWbI/5HzWaTMqP6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786227634; c=relaxed/simple;
	bh=z3nimgsYYrg61cVUPC5NqJjzxzLHmT7Ow+YFS7d2Vfc=;
	h=To:Subject:From:Message-Id:Date; b=HV++AWISAKMoGiv0uqn8AEVGqaFWE6AMwIbzU7d/LP0/DUGC98Y9JARgaGRbD862lc59LFwgd7f5HJO4seD5BQffhjZjFy+Ix6mTRFlQf4VuWU8V0o02fPBHCyWkdB6mjLfQcGShNKxMmGR7GxfKikWHe6YorVvOzM27OVI1Xik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spwp2pX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spwp2pX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ADAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786227633;
	bh=z3nimgsYYrg61cVUPC5NqJjzxzLHmT7Ow+YFS7d2Vfc=;
	h=To:Subject:From:Date:From;
	b=spwp2pX8PPTHdNGS4qWDx7f7csx4RvbQB2b46F2F8elZyz9B8A0o7ROa7/5CVU8TS
	 TcNuiGnBqKQ6ph67wi6h1TilQg5ylYcliujUfBqEUWi4qtWDf3KVGHhzhHwoPisiBu
	 gnAdgB5khJiAtF3IPhJcMStyhqE2/bs/n5my25Bi0SdibLP4xkykrN/KaKxH0mbdp9
	 djJNmaINYSTeWRrG6CkbuTmcc792uYg8Jd8urr5SqDbHHI+ChrDuzkq8iTeePIi2jE
	 2VkV1eXXN2Uiu5mxIxGfImvYq7Ar8HaEI+O/kw2xA2GcRkLuqZ/CguV04EeCVwQghi
	 BMzjm2qTuf8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD171C5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622763368.9306.7865784455909869858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b5a2bfb5e1fafa06a5b9cbad78e2bca50d9b74262f3157e2da96cb77da8908
Date: Sat, 08 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786227633
