Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D275475E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746916794; cv=none; b=VwgJ+zfhO3UsLfGSV+f6x/ZNwT19+xWdnOgAr1uBNteTHhMUQInS44ybrYT/D+bqphN7yaBZyeWCCBgOaqf7B4rdzM93F3tAjamSwVe4kho1/8yLcM21uko8dvGB96wjPlAPwbiNK7D8dZJRTVdbPfvmO9Q1UQDue+LiLCz/70c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746916794; c=relaxed/simple;
	bh=EnDcjoXY0zXiZauXtBp5lJJ3ChZ5GVhXc13yjfX28Bk=;
	h=To:Subject:From:Message-Id:Date; b=QDb63vBhjN66+xsQlVpsdSNpR6nk4+HD7TuPMtuDIzaVlVVI+/u883IZ6dEGNhhLILUZ4KB+IZX6F7xrZR97IGtjtNpqeoI9MGjcEImt2jO0HnVb9tOKkrIfkLMug3+DiLOSSS3UH0eHclpIjdapIqLVNRvjWGqpvpGhkYvu7vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN7a1nFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN7a1nFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F62C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746916793;
	bh=EnDcjoXY0zXiZauXtBp5lJJ3ChZ5GVhXc13yjfX28Bk=;
	h=To:Subject:From:Date:From;
	b=bN7a1nFkrCNoF0oTZnP7WhaYQZ05rUTAtIwdf7Ig3neYjMdOxnbRowjLwE6evzzGI
	 ySWg9dYi+onzOWztBuqw2Hyt/dms9AID2Or6aDkMjVzDY/2TAwu0K3rbOJTF2gLrEF
	 E20p4ipYtzaj7cnAJBCSsC+uZX3XPcWibZ0wf4phNNWYH2dfLLJ+fR8eU21uq3wgx0
	 RTJbdoqk2jOsJFkQrvvinVvoPlIcWxzdLaJ8Y0RkdBN5ZKxIS8vf3asbQl5bcQmxPp
	 5ZcEsmQ1/IRF2H58QSeAKXTjA7PVBBZ/7stJfkx/bHnynR/ToFzWujhw9c/+ORKkPa
	 aPn7srQ6zdSFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206DC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691679357.27965.16425195958889355907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67858ecf77138b62798376039647d2666748c72485c4dea0b2e828cf40b1d8ff
Date: Sat, 10 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746916793
