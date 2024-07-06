Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6063010953
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720309583; cv=none; b=jEMa9xHzR3fXQ0aGZlWILXISydadkfC0wUzcV3IyAlu5qJxtGLOGZzKNs15ytotCPhfhzEzuSHl0O9OkmpGOCizJdRTVbkAneeMRjjd96XOjbmpg8NgAmZ/AKfay5Jw/gB6gtHxhiYk57446tzr9PW4jyXPup9LN/O3CU570SPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720309583; c=relaxed/simple;
	bh=Y5kyp4x3+xVsVtnivpsV1iV1JvZWm68hKhxD+VVchBI=;
	h=To:Subject:From:Message-Id:Date; b=eH4l8LhK58GJiMkt102a/kJ+8TsqBSTBoRZSc6ipfdUqaPX4ioIbONICVQp5zLKm6wa35UgsrsgosYGBw924y4gfK28zkxfNqy3Ia3nP7in7WSjrBTSZISQLqL4h1V2ZuqUQ3RDhsGiVpLj+NNML1GILMavpwHEvwTh92aEiEK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtKEB1Ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtKEB1Ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68A5C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720309582;
	bh=Y5kyp4x3+xVsVtnivpsV1iV1JvZWm68hKhxD+VVchBI=;
	h=To:Subject:From:Date:From;
	b=OtKEB1HoVT/12m5ntq7MJqX/ZX0BgLBdeju0OzM+sIOsp1zEpZWjamvKCkHAq0xnQ
	 NE3vdLk+PpEo9suULj9zj6+KUAM7vz9n4alDEXY5F8xP0YU2zDuuvJkJMgAEujRT+7
	 WVx0MepyGgEnOACeqaFWwVQRfJRyOzMSU5PbqhHTrmYI50glWnxo3C8xZhHi43nLvY
	 F/dr9a/RKOuHpyQBnPo7FiLrgst1TeAUOxvVw3v+qsAvZKVkJThe0Z+1CTsF7XaBT0
	 IU+aW7WJOqH9z6PBxzHEU4H9kPznsZbGmilqOmn/jFGpeavEWRo4q7+9CCrsEzO0gQ
	 mlzng6/JrAwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06E2C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030958276.5596.11334675383699457173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8bf51b40208f448700dfc20105cf9fafc2c2815b62d303f8ea27239e3df1a08
Date: Sat, 06 Jul 2024 23:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720309582
