Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7F30FF31
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770414834; cv=none; b=nNQ57jmRCSwidPCCagzMjZGTTWGXMvhNByhwXMMEJkL0t0lecbLssrkCbcYDG7B3/sz9t5QSl+mr+MfMDbQriOg5cB4jfffsmZoZ93VOcb/UopTRYWWI2+cL6MUbcgKDmfNqmDFqy9dC6yOuSplikfGxVLoOl4KbCTAfoBxbobI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770414834; c=relaxed/simple;
	bh=LT6KmVT6CKALi9As8qcTa2e6MMmjxdn6rSXYg7FOqJw=;
	h=To:Subject:From:Message-Id:Date; b=MhF3dIhmAXx/Udb9ZJjxiLqfXI/STVcZjJiWgCep5ycLIlGWARAWkjaj7szPJWvZ6niXi9K4mlpo0Pz0y7x1QazMSZlPL+iHh9mfXr8vuQwFofCTMPUi7kQif/siu6q3rn8A6rv5ujFbVfde+SxAfGomSKWJ5PrvbN+jbIqVj9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkI4Aorl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkI4Aorl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FAC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770414833;
	bh=LT6KmVT6CKALi9As8qcTa2e6MMmjxdn6rSXYg7FOqJw=;
	h=To:Subject:From:Date:From;
	b=YkI4AorlDVQESZ1YV0fGTJkRnZUaZk1tsSq8Ta+OmYeXewMRmd6yfyzqBum3mgGB2
	 r9zCV7A6YllAXUqygSesU3QmsozyYGt72z+ETMsAClLP+O8IaDgIiP9ks3YtVbitoB
	 20UWPY7SIa+/4jVvLEy80ue1BRC3YVta9F3Bkdbh+BOm6gJQL0Ayf0h088yAkY0q5+
	 EaFF93feu14MI5rGBHt66QKR2LMlVFGtLQaIuYWW8JRAZTygIOxR9pWc77PVRbNceu
	 Bf1nZDf1rxwe8m+zif44fG/Z8BxV6nfDMZmBO+so+K18RVotyeAX0Cl4U1W5xfnQn4
	 0CNzKbw0BISlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C57EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041483358.14029.6890705748265149554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a103b276151cd6ceb5410039c850f4d950aa7ce5dfe60ea151243121c44c7e52
Date: Fri, 06 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770414833
