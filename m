Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F097223DC8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393994; cv=none; b=RLlc0Vm0+/Sako9UsntshAJC1bqpDcW3zzpYOVEYf+xrIgqhvkY6MY2tzd29DRKLP4o7LiuHxNi7IFiikcogw757y2FrSgKafd+AtzQdbo1/9guAJ4CTMOu5a7hlS22pGDKDKleIiAo69aLAM1sZ021GZmlvecs3A00CUwpwduw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393994; c=relaxed/simple;
	bh=/t1zLrX87khG6lZVl/IhTw29toBj/+fB7rUcIwbG3Uc=;
	h=To:Subject:From:Message-Id:Date; b=aOqEluCAOvLCqR2wO0LOa7WSG14sp8YoJpoTLiZRXDFiKsNbTbXY7GY0ZKpkK4f3IOQll0sv9TrASVKlWNjiBv6g6+a9TT1nCZJV8edSpRCuF8i6m1oi+nJmXyp9cyE8BZKq8VlrYKHb3tWTuMrpyOhk4ryH6jLkJi6G4OgnL3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIQJIrFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIQJIrFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC6DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745393993;
	bh=/t1zLrX87khG6lZVl/IhTw29toBj/+fB7rUcIwbG3Uc=;
	h=To:Subject:From:Date:From;
	b=aIQJIrFyJOnRCteFBW7ncP8h2VKPx/InZ/ppqLiyW+PfSwK0HLtJecB9NG0V6FcKf
	 IDDYK2TumJUzDAJ1IBkIRMeJE6cEm30cBHgpT56V07tDNoJ1UgNxCveqIgUlA98R9a
	 mqroG7CnRyFyGiCmes6V/Ozj4xo1qs4kRE4WSmMcYJDReo/fkfHdsABwRlhn3EequI
	 ktbrLOX2k+nEkRqkR9xjWJW30n+uX7G2Oxrym7D0m4yPgUMIsVoH56TYSvo2g+B8/A
	 QgzCUxS4WQcIe5OObzX9eXbGBzJLSJk237M3vntdfmbOYl7x0zXtr7sov2WbRwqi0s
	 DCwv4G95Z/65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9FC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539399357.14134.10851402421944214186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39cec125b1853e3cc07ef89f671415a416c75387f0cbd2dd0bb8108b0d84ae17
Date: Wed, 23 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745393993
