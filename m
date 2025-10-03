Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123B82D46A1
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759516194; cv=none; b=dFNBreSguyFTwALktdRx1tf327+E7PzJOVAALJbKW9LO0HMU1KK9C9CFsH1NoW05GbyB6b+77L1nDY940Y3Ym3pKOD1sT80++XM9AnNBnxmTdCwTL01LgK5LCNElexOVCFK3uoFj8A330J81vIxKPGG8l67b4fWBZ9q1gcTP7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759516194; c=relaxed/simple;
	bh=k07R1j5RrFT6vV8YD5cSjuST4+gj7Q5hoUJFHPbzRYA=;
	h=To:Subject:From:Message-Id:Date; b=QLKURWx3EyfyIYzNIn1X7uCoAp9oXGz167VgRqI6JehQ93yUUh3VOVZgYLILhA0kNmnaeE6X28grr9U7ZJhUvhL5oNa2usFMpSiGYMRFdtWf/TJ0eIWtntSHVhC+6v6R7Egz3NP6RjMJHzV40elbSCHMRTOQCbf66yOGAPF9t+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9+XxYEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9+XxYEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB78C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759516193;
	bh=k07R1j5RrFT6vV8YD5cSjuST4+gj7Q5hoUJFHPbzRYA=;
	h=To:Subject:From:Date:From;
	b=h9+XxYEFs1zPib1Cmwvz/czir/API3cHoGnpp68Z46RhaCNpaS1UVuXd9Y5+ikM/2
	 DEKCiC8l96uH3gnZuIprJvZU0Hy/xrGvZUMg0MABHXg8ihDadsvgaiWhxbI/JS9a+V
	 qpri0cIKcy9vlDD5q/DqEc8wzRULq5+N7xYByyx9g2AmWL0CB60dHV/rQ7RZNHVCn7
	 ONIXP5SNUvCfoE4OpYYVqDWAhQvAkBpt53xbUB/GBhzapE7MPL3kPx0eWk2iZ2NGOe
	 Ef2YzTP2nCzipO0nC5m3AAXqd7HsCHPJzTp1b+4Of/gCcdDodrXmJSf4ki3IQoikVS
	 ODTECdc1J3ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ECAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951619358.14278.9119591516437717561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d8d6dde56a1ef10f6db85e29cd55dca7b8ab519dbc6ff24fcc81e1b8c1dca5
Date: Fri, 03 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759516193
