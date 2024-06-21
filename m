Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2D763A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718947943; cv=none; b=mUcZTckOQ/zaw1N+4RRsZ0bhVRSjUKcF04ppogglvvcyjPQPc2hPcRoQ+1hda0R/VhvOU0BcoFSPvqsY+5h4gDeQ+FGqW8+5OtROSFW1tLDKYDSsT2V2IfoJAJx7FNYuKua+GqJYcKNFz8CS5lWVj6h6lSX9OXj97jk2MVNldi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718947943; c=relaxed/simple;
	bh=+m9tTtRUS1w7kyfEJ47cZXv+HJpesnAaJkRLZ1W775c=;
	h=To:Subject:From:Message-Id:Date; b=OQ6tb7ZqtCL/ytbBmBdiwMjfmS7zoUrtLkF7m+uTRhxghD9oJ7EMTljU9rNtknRUkQj8zTzsQv554HAwFUv4cfF+8P4k1uwXqAmbkfTi0/yHBb/73jWSRoRHhm18pxr9zWOsVRh8FQno2mjIORXJu/dil7dQDEhETmq7W3rYghU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4Nuvg5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4Nuvg5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59F9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718947942;
	bh=+m9tTtRUS1w7kyfEJ47cZXv+HJpesnAaJkRLZ1W775c=;
	h=To:Subject:From:Date:From;
	b=i4Nuvg5HeoQoEQFwE6x7x6jPlal5ii3pkCrtCsPdI+PFlFS+luOhBs0SjRXIHAVjM
	 BOwuJ5WFZ+4pN7PKz9Iu1OfC/fkfxvlPbeKiloqzkTYbXnTZ7ADdMvD4dBrP4l5BTG
	 UYV3PJN9SgTzvaQb7U+q/1FHGjb/JHpDfXHFJAmdi8rE1SN2qsddVsYjj884lbQi/b
	 uFmI9j5/aRlcDFuKDZqtJfQfXcgKE2cwFWoUk3ZjIn4QTYj2ObCAeE99OmR5cLjJ3E
	 wwlFvJfgWVeeMBNa5jce7bHZqa2034EUArvr10OVJAV5jfWkPVlY9HEPoqSu0Vlt10
	 Zk2Ava+J5Utkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC699C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894794276.24481.2821281569747565143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94dc1a9737c91de26307a1f00d25022fd478b91dc46cc56309bf84cd97c9ca5e
Date: Fri, 21 Jun 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718947942
