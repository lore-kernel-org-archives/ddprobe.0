Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C131DDCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717961243; cv=none; b=aBXOeHFxUi/lYSsATZkws2FgJ5Fw2KojM2ChVI4d+dKsZRJTLFgzxHsrktje5eMmofNfsaSyB653e+tE40/jytvVydg6oSwUeAvV2okZFU4QBHSai5qgayv062qQJ/+fEdYoXue7MrcYVlrOrCUvH08h2ng9pSJ5KWIRCaNWIFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717961243; c=relaxed/simple;
	bh=zRuBFdqgkNSU2WXpMGtthl+uQz1n4uW+LPqtwgavNzU=;
	h=To:Subject:From:Message-Id:Date; b=mRvQdkWSWPEZ4lN0TetFOsWYs5k9SLglc7/TJlVIRueIWes2P7serqw6k7vObM+HAmpW9jZqoI4wbUc4DNZ7VDaBONmb1BsdVqWHzZi9EEfBFP1zgGb9SIaUlLP1EtGyTHm0/g7Vynq+RBfZctdyJzHDCtg1jHhe51JkJUjZPsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYEjzr9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYEjzr9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0B4C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717961242;
	bh=zRuBFdqgkNSU2WXpMGtthl+uQz1n4uW+LPqtwgavNzU=;
	h=To:Subject:From:Date:From;
	b=iYEjzr9TNNC7zFZMeNOMXmyym+PUjDQ5DuYCqomC8jMgqfYxl4iyNcpBPaX+m/sZp
	 C4pdEDWrNCrwFPNiuYNujTlkINU54ElEHjKVGbD+11zDN3QkQ0CLbGd8qo8/tJ/gFI
	 Go6LpRwUQVG0W8xWTAhSF9iH05FVg0FMyPNe3oLhZQ8FeqDIgoawgJIoKrFKkbUHoE
	 S/NOE0aT73ezBXQhAOMhKQLj1pg9gamVEG1GToefFv9ZlkG8NtMiQdQNXCs5DJ9p/W
	 Lr5f3elMe2kmpjUvJXDitgFUbOQQ61Dav1m6e+3lkzJpWVyg/EelvTrefv+Lde0F9V
	 y90SIyQBtRh+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA80EC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796124279.1470.2661763833371189223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21bb04c54a7097218eb4279e833e80d6fcc75273e962d9d6e7fc535c2d500161
Date: Sun, 09 Jun 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717961242
