Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386341F3FE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744879194; cv=none; b=tmwBmmxqjiFjrFUkn/r0uqVcts7FntpKp8/LYKXsVXmCX7CT5VDtdPOqU+j7Oo1By1Ux724WGpxdBfqxPX0HNCa09zKmyIjQeheBCUe915MTe8PfkqPivetEa102laKR5EJALCIq3qD87xlFYcGDZm7gszrtGbn2BsYpqU+AvB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744879194; c=relaxed/simple;
	bh=4erkPrur7AS7lP8ZUXjuwKQcfG+wlbTStw80MgZbrC8=;
	h=To:Subject:From:Message-Id:Date; b=rI+fOR9wYrw4Zo1gVJhO9eODgHezwzvPZDI5ZeHRBo/28g/49GdmYBt5i74J1jz0Q0f1FZre0dg4xgKArLQ1NVs/PSSGTKPSOJd6tuGpUyhvUZy4JZKrWxqU+bCejJKJsUcAN28dicUnIW8KkgLOxhWsi2Ai3XgpN09DzeStpXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfRi9s8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfRi9s8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B108DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744879193;
	bh=4erkPrur7AS7lP8ZUXjuwKQcfG+wlbTStw80MgZbrC8=;
	h=To:Subject:From:Date:From;
	b=kfRi9s8xNLXa85ceR2QtxceHy6hSetjgZ/GzVYVxSs5qNpVPWiMe+1aYMY4m6Il8M
	 1xfMIHb/AnYxiURxV+ykCVZVPjMFKtUuFPWt6T+3h3OiZCTO3qM1ogxJFeajBoQbMj
	 Zxg2eQ1tbSz8IqOPb3YxINxFzSDAIHERU+sVu4Mufl7L3AENhmXF/lDSfnVhmf1Mfa
	 8/JOmn0srpXTQdw2LU3UtZ9LJREarteggPBOqdM0UNCQuHSIi6mL2+sTZKgCuL2RjH
	 wQw9gVViTGJTOXDt/qB+oC8EX5cMsyX8FtC98FonKi1ZlE0BZGLcY6V7TnPzNRXZ83
	 8E9/3VAr0ymUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEEBC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487919363.18135.5212297838377488092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828c8a35a6cd51591c940faa35b2a56c14358ab5977c14b4fa7f9c50aa459a80
Date: Thu, 17 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744879193
