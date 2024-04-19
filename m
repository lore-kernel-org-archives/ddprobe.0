Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE2042AB3
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713546023; cv=none; b=T8b9xhhFrNgw8M36I5vWLM0Rd+ZDNcbfbbaMtw6Xiy2jEKBFSuh2x2PkUjE7mgf3etPdEfYEdF3CfpXePW8rh6gx44GAkPeM09L2n8e2HiJCO6Z1I/WBXnwFNexOkO4zXZgQApo2nH7QXnw+p30QYP8mfB/EZoTOvUNenlztc7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713546023; c=relaxed/simple;
	bh=E4FlZ/D7qHWlfyM2lzJxim3A5ncWhz8JETe9eywuXFI=;
	h=To:Subject:From:Message-Id:Date; b=QHSotbV5AvX6mjPOIPfjBSIvLVJiNQHAeBWFHyIICOH79zA3JG/jdKM7q5pF+zQpRF/bI0HJZYIqZ4CV52D1O8ULkMKDW5uNVPiY+LSfl0Dur92xn3J5vwVJt55O3lF8oAeCOMrcgPbYoJ/4b4cgb0RIHAVtsanTLQ1L8yuuLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDcjv+be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDcjv+be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CD1DC3277B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713546023;
	bh=E4FlZ/D7qHWlfyM2lzJxim3A5ncWhz8JETe9eywuXFI=;
	h=To:Subject:From:Date:From;
	b=PDcjv+beV8Q4/CdEgzrf3hwPk34wOXUlN8Ss4sU3lmZZCLC2Sh57pNK105gjrlY3j
	 oWdHzaRCbLdwBOsAuwP0g3DOtOP21rHkNUix/mRhpeBPoXZ/hTauqIylF/DdE2U7Qp
	 pMxzdvjk0+t51VvaJfKR0oBqr7lXT42qNZfrT1jzb+0urg8zBB4RhlZU3+QbmHCxbm
	 rPiXPjjCt3oSIvNPzMIswiDNvtxTcn0O1rO8wrWGSstLL7qKoH526pv3S3moJgAH+R
	 R90Mr9rFAlHqy4j7/smFqiLL7Xd4QqD/E7ivs0nvAMjHcZPcPWmVVAe6NYn7gFfuW0
	 /3x1hpYOSbpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FD6C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354602286.11452.7231622006194003842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73216f45272f199ea7526355be084bdc774155e28309e77cdb93c859a26ed93e
Date: Fri, 19 Apr 2024 17:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713546022
