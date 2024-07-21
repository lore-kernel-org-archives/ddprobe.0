Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EF71FAA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721528154; cv=none; b=O6KtLndpwxOMEHgzOqbik6vt6+ucPtTA/BwJujv0TKyZU/jOceGGBlJaabudOLnaKauDIKkJFPJCyKRB/3Qz2tvDMY1YBNrga7t+Ce7z5Us/tG+zjatfyWRBFKCwJHO2kDbQ8fAmn48Maxm6ESx6+M37YkQHiUPjpryJ5OQ+Hcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721528154; c=relaxed/simple;
	bh=WeYjwWjkL3ox+shcSakchwa733o8LooSYFuTWkpgyas=;
	h=To:Subject:From:Message-Id:Date; b=toyBk0sZZ9XN2/u/0hcag1lBFy/GuB6HoA2geWtIDjwnYh6E0EJV41FUGFVJO4XiMYGQYlUSRwcDMmwxfr7wb0670jN3zwxlEirDJNiA9wBNBirG7y/nQGG8Z9A6ApOzsOYvr/4/JH1AKzJXxZC5k/56gR5I8P2VXcp6cJYH3zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgv2uPkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgv2uPkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94BFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721528153;
	bh=WeYjwWjkL3ox+shcSakchwa733o8LooSYFuTWkpgyas=;
	h=To:Subject:From:Date:From;
	b=Pgv2uPkwianscuoPunOzfKpbAj3qbWzaeDpycjylouewbkC+hLtN0uJeASfcjdZJ1
	 q+4BOa8fQBF7/+t1Uy+rrvrgd22l4umorrIeN7aMVveEVN56z+aqZXS9I9lwwZtqBT
	 LFAGuU+CQ3Z+uem8m54t5M+X7VPs9JbtaoATCZV4MsqQHpIKs4iypuRW8gFSY86VOY
	 iRJ+7uMUuavK9w2WR72HFA6sY7QgxCBC6kZZYDxlPbgUEtEXyvdSJJ5GMYhuzdnz8a
	 jvHhcAmsYZ7ZiHanDUYFlb9oxdi1l38XiLK+ginCuf9h8Ydlmk6nFSoOfA0SWvWFuV
	 IPSrplII2PPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A383FC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152815362.12666.11535272355045191677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39dd7f2eaf7ce2a9bf1a602d2ea8038b28ee01bce5e4622a3accdd46c6197a38
Date: Sun, 21 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721528153
