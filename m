Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C94A1E7C23
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908794; cv=none; b=t7ClI5QC0tuBPDSCu8zWSnrtjY6xYYGQiB2EHExWqZS74xmuYiCSIUVlBABwLUs/A7iln2YGuNwEcpj/iEoU6Her2Mcu3pHLIMOtZ9uEhnoKPh+ofT6j6Sg7J755sKyzBFeifBFOJyo1g1egHmvh7xFo2JrFM7jOmX0cyUyrUFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908794; c=relaxed/simple;
	bh=V+DFpYykh40hF/1Y8jlGJiznM+ADB5G8JHfHT1OVDAQ=;
	h=To:Subject:From:Message-Id:Date; b=Hve/pIeBMvG1hnEyoO7+S5MLpgwPK5MCAbrSPb+PV/sswXhznBd+9QKGJ5HN0wAi45Epm2sJdN9vTLgdBFzO5oXviHgUkXa1c83gk1tiyoahTPWpENhG8kXSYeqXRydOLsD0GiclIdjmISrZKOqN9hsmhKDU/5buJioyBeJquHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnuSIH3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnuSIH3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20E3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754908793;
	bh=V+DFpYykh40hF/1Y8jlGJiznM+ADB5G8JHfHT1OVDAQ=;
	h=To:Subject:From:Date:From;
	b=jnuSIH3jtJ0oha5S9E2v3g5iGkPgmXFgiXW7tSH9fVnCi4BlcgulYt5do+XLRCRMw
	 U31ndRhYStFcOt2Q8PMPe/nTWn1hZbQiPju0yGE7xFrEwsV0mflzC0+HYqrXt8pc4H
	 kZLq6aQjMcXbjilX0wBQBdRXMx3TfUc0EQdZ30U87VeFGvz/dfC4eF54pKXoJ38T3w
	 bUtvrz8icA0nggZKByLRagk5hp4rF9RtrTANRmaAKqqixl7id/LJw9kJ6hIo33Ziyw
	 3ooKMyNE5KCOQOjGje5IeMtXNUadkSCAMS16qzfO8qARHVYwBX5SUATXEkN63vNiEc
	 1INAg/WPWC3cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EBC87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490879357.7104.13985577615520029247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc47e30a5881a040b13abe6f439a8f79449ad23a86c54beea2fe1510582887f5
Date: Mon, 11 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754908793
