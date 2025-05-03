Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2141922DC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746292194; cv=none; b=aHBNgOOeSrytqjtSu6o7CvYnhNlB6Va6co2vaj9FdR5YgV6Teqs7fh5e9fE6tDmBwyrDEYdYFXpFh6uW05qJUOQIe8RVDW8MSTya6QYEL7yAaZxpVOYO0k0NmG0rO4X47u2DF292LBX1mz9yNt/07COju1GqOS+vdfMFvwZqxew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746292194; c=relaxed/simple;
	bh=b9+ApOx6OAQyDC94SjLnvPFFW09GHMNg2m1EoHmEnA8=;
	h=To:Subject:From:Message-Id:Date; b=HaCoYcktz5HUc9co30sTRM9EKVX5lKihKPd2ViFRgPo9f+PPKTb7x4mToOJyvWx1m7xG75b7coIxVBM+NVO+kJ5E3BBOgK2rAWMnN7sHoQN5dF72DVK3IzvxFWtGc2IGw+s86h4mWQdWFgS1LnGBo+OJSJavQ/FcO9QbP/thRrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK26Fv4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK26Fv4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5340C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746292193;
	bh=b9+ApOx6OAQyDC94SjLnvPFFW09GHMNg2m1EoHmEnA8=;
	h=To:Subject:From:Date:From;
	b=TK26Fv4b0/1ioiQS48gBuE3btY4DRqRR1Oz/f8Do1dq4pnhjqMv7Ddjs9nRXgnm+s
	 CmUj5DTBkXjYmdSa1AuzZ77S5LA6xPkmk1Z72rYUojq67vnaVBpAdArRqsY5BeM/iq
	 wOpPQ9Gv1n39AakjEBy9/UCBWdLelXszOMA+NhTCGOjoE6+rWCZsF0IhRJoYCtinvu
	 4DvjTpDqxZ9QDHAbCQMUb0dmhqMI5Xo4FOgWCESATlhs4BWJLoIKzHIvT5/O6qD3Ek
	 l7qrHjkc1JeYOs2gDbEpU8ukDpINqUasT9sJ1vGyY5y8jmF81H5JXNPsQzQSifdbrr
	 ImKapWgy1AP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90853C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629219357.4877.4890031982555597500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db133107984f424a6aab6c154f7ca3f4033a8b56df2994375e259f53748a217
Date: Sat, 03 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746292193
