Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AE926B764
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779600154; cv=none; b=u0o2wYb/VXdTsYcl1V6qVDi586FtGDrOzhqpKcJ9OuQWlNhUG7ewyGveae+goqlbF3pzV+2KIXKHNTNiBuG40LgY0mx8/7aWc8TwzfRRFc6DOFov/g4NHMm1YX31O015BWtl6SpYYyRgnmgPybiUhVz2AT6rRJ758B+/qu3kB4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779600154; c=relaxed/simple;
	bh=wDA6V5ShsQqXcwgY1Y6lQPXWBRnJxoys6dY/gLo+h6Y=;
	h=To:Subject:From:Message-Id:Date; b=IxmqHYLqN4fiB+IOuG7KXLRp0LDAa48yzu9fzaiQAJrShY986D0FoXQt/apamT5jaosFlOeFoyyFy8/Cu8hQu6aFNAELUNR/7brAnSk9XjxykffoCtEdmSf7VaGAPBw4hUKqeSOHfHX72xwIDVzMpZpu8wMyutPPkucpgsQG1RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzxm4a14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzxm4a14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE71C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779600153;
	bh=wDA6V5ShsQqXcwgY1Y6lQPXWBRnJxoys6dY/gLo+h6Y=;
	h=To:Subject:From:Date:From;
	b=Bzxm4a14QzFiTPsP835sCLlqlBz7Ni6cgf5N41QeWuqgYiu/2rUb7W/gRhqs3Y+O8
	 1pETEfqg6sauI/WOHgXmS5yXKE5WoVD7iHLAJDJiS/0yT41KPfwEDV4fBZ9FnV05HC
	 u1/4dwOxmrVH7y2KOzDnl3SwC7jlUWj5Qxtb8QWEDMa0UefwDgFEZjucflyUq2lJcr
	 RqUWLDM5LlSaXhPGoiGmozrTDN0Ozg6vyVWcQx+OleKbkSUE/mAzY5fG/z6nNKWmvH
	 S3PU8E/UuoicCYWrOyFelFTfJHLqhYXUBQBj1fzZ4yDN5YQCpHVevYlXEdh+wBe2Zf
	 v8fsJymC4dhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51CECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960015370.18625.11527742584039122985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2473cabc0abcc7cbdbeb7dc18f7e31f9ecff5a23ae768afd44785526100e52ac
Date: Sun, 24 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779600153
