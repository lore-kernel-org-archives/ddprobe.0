Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A36322126C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791184834; cv=none; b=bLC9UPU/8z4Um1pjTIPzznOYsI6hWPFjVoz955JWdFlqTVWsvodjbMpzVNZw7Zs5ev5TS7mzK7ZaMkVbFM0Dx8UPfyl3ohk5Px48gHM6ffBnQ6/e9GeERqc2FHhDU9Mw0JteHITRER07NUGHMF498aTcpG+r7aaHsMHYzMS5x+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791184834; c=relaxed/simple;
	bh=767V2LY/YzleyDeKVHdERt7ssnAbf6N3Wfrjqrz4Sqk=;
	h=To:Subject:From:Message-Id:Date; b=SYFUY9uLHpQ5ffGms4vSYNzC1l9T3ap9Mr8qo7QMSk/NJ0qbAo0seXw4RTMwbx0G/34tS7aNI+9LDPbRKRsYj0UxzoigGcaf3kAWRVEhPLUgiWdiJYELcqoZtg4+b3ABrXlt/KgMZ6hHe3jlC9lVRJp9lrN6RcGS4Jsts4RamGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqXU/N+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqXU/N+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EC6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791184833;
	bh=767V2LY/YzleyDeKVHdERt7ssnAbf6N3Wfrjqrz4Sqk=;
	h=To:Subject:From:Date:From;
	b=UqXU/N+wvc++fTp7AH/8xX1jhK+CeuYBdBFJrZ+dvqUpLkDQM2Qgn14kWK74V9LiH
	 +Zsw9NgK15HaTe4ksmox+316c0C1JlkCgzMv2YKlp9SirVJ0dRqPBfv9TlRGA+rxOi
	 VD+yIr3f7NMamSprW81Xrl37vfHBaDJboe8GNDnDeIgrD/8dsCwqLjH+4R1q63IrIM
	 1oK6FbdeB1LvUGmYdcz2iTJbGh0VjxIATqcY63JOWGeoavVX+lj+fYPHXoRSA9uFa9
	 611dn/JUYy0xRC+K1WLtOYc8oA1KKd1iJJ1sFz0BJQcaXxmtQ3WCd2UNaXztE5sgLs
	 hqLmWgMvX0hjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF156CA5FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118483369.21299.17547348600751467871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cdc1f1bc36b4b2f8eb31edec88eec5cae4faa836dd3e5b60c9b3c5f3fde31b
Date: Mon, 05 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791184833
