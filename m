Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282F02FDC27
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775244934; cv=none; b=FkPE+ozka2bcNr11vZahRvqjQXDWfJuhGakS+QZX7eSAMJcpiedLfEK45TL+x4VBtX6FGr7aNJZtJR3DyvTsAHt0sJvJJ4CUCuvBaSs21aKCPkI5A/0qUpTOXe/yci3SShhpfmQz/nREqEvYSgueBCDXKugdR6AHgZ/Ak87cFqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775244934; c=relaxed/simple;
	bh=2WzJr5e7GTj/lgBwNBJh0K7zWIc+Xv6lHyCZ6niTvqM=;
	h=To:Subject:From:Message-Id:Date; b=ru2Jb6aJIFs8yNcYYQ+xN8DOqZ7F/NYslNgYyDqX1Sh5Br4xe2HPSFCAUdwBZXAeDi8Wj2kqHiUThUXD3n3/wMFq2WsEgum14BsklOxsZScdVhSV0tKfoEnDRZCIpSqJjQR7+NnKvQnzR2rHGPUZkNKo44PHKOh8COZqUGDzRBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UED4QUk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UED4QUk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF67C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775244933;
	bh=2WzJr5e7GTj/lgBwNBJh0K7zWIc+Xv6lHyCZ6niTvqM=;
	h=To:Subject:From:Date:From;
	b=UED4QUk4uIQXeYLBMZshlx1fIYJ4a1i5LON+Qq3U6Z1VutGJjff7pqbSny6zTN3UE
	 EJyN1ZP3I6rrGjCxuO4Bvlp1OXMnw4YlCnjY90/jRgVecYP4eC6K0ipN7pj7QFWcj6
	 mrCs85OwIIVeCjzgJ2XJ7QxG/KQz+aEedevewOr7P4BhtM/UARdKGi7ZyhR0htzrLr
	 yFBXqEJVzcBOvnnI8MI1q36p4WPGiNDgZxpCH1vWfnNoBRnViJ0W0HEHXEdIfy7Wmd
	 9MI8U8bZoXYjPxNQqWDNjgD1ajGp8/TsUL1xLbBQjviKA4sYWNrHIjBSLvSHxfvNG/
	 YHq/TtkkqBQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB90E85368
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524493369.5264.1509435206763777644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdbcce7134491b9c3128331a1bb6ef8ab5b24622c0ed1618bc78894c02aa815
Date: Fri, 03 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775244933
