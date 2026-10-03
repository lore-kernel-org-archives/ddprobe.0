Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330B485CC6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791054034; cv=none; b=RCzSqw7FCDBTcEOhWcfk0bMGRyWAajEYUBu4AHBdT5W7vy68CP+uFqxI4ZSUNM8S6lnv3A5k1NvNJqKFinVOp7X8fEfVhQWFQfy15YscdtwJlWvJj2R+fLJ2Sf1S7B2ZTpYpeHGZGjJgWVH1YqXNoEmDL7e+WxpwkCHurqbvc3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791054034; c=relaxed/simple;
	bh=N8gFo4HoZ5HuDl47oTStFVi9l4iEKN676PNY5JNUq+c=;
	h=To:Subject:From:Message-Id:Date; b=p4dt3431f9pxZdLp/yw3hNSCVegZhf0aqfyUK4P3/xTWCIrypshBRmm895PfB5UW0p2L4Hxudjv2h6XEE7n/G53W+ygwC+JgFZD69Ln8jZZ1A9WCtvMZrKzykLAFfYAcDv7WnGw+EPwv+L+TJFO6j7kJE0HpB7XeMKMFHMcvJxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjJqr42o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjJqr42o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDABDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791054033;
	bh=N8gFo4HoZ5HuDl47oTStFVi9l4iEKN676PNY5JNUq+c=;
	h=To:Subject:From:Date:From;
	b=VjJqr42o/DQVAC3tdXwSyrnFWIsSOC1E/qtiritb0pdrwtXraZ7zC1mIn+77otCQ1
	 tXADfP+ItUWYqIcPdjY7kAZ7oR+iZIyvfHzqxUvcxVBUP1cGGshz+lQvH/8ujIm99Y
	 ArrqjgeXAWz8HmCZ6iq0HFKooal1jGI2cQfN4NtoYtrpm9VIRmPGk4ZP2xyJDQLPmo
	 DTtqSJ1YwgMFvH5NhXQuOyxVxG5fHwTGH2MBJTTbED8LLvSkX7T1mteIMu9dwIMf74
	 1L83VPeVv426uLZLnwDB0hKKp2RHhQ4d0xs921YLFFjJ6207jegV6gd4m4qIzNGOQ1
	 J35+91yXxQkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45FCA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105403368.3775.8181435378415114071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d3af54f5df886029134c0e8f863f5a768d9eb31bf2d563f36d3f6c247d631e
Date: Sat, 03 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791054033
