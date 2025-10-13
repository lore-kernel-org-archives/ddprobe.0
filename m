Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F96309EF2
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760387994; cv=none; b=MjPS/fUs7mSmwK6U+yWhJZPviE7b3HTPeGY8U84vzOPErLMQv82h9b2LlyxJHgKe0knBz1h+50D9I/Fkp5o09QDny06r0pxvBeZ4PI/j080xBYRb+SyAn42JoBXyFLBwWFSuFjvhJmMw/4muMAWNlSsqYKs/AK0UnsiiH/Uy6Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760387994; c=relaxed/simple;
	bh=8jyBJv3v9SP/jDDHrotFy8XSTzvNTZkFCCfzQxzZzzw=;
	h=To:Subject:From:Message-Id:Date; b=DVXkX2/R2FKgBxSn8y/I0GPvbPdBQ0IxEtnAaLVTZoSa5cyGv7Wng9Nm70FX5HdQ6KKZ9W47hNp4cBzQ7KL/AM/exdHTy+zS1TCyUvS4+UVvC5OunyVBSMr8o8VLYfGpMwZKzi+QJ7awUAMiMgiMG3va47Mqxtn6hKlqFAcsb6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev2t35xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev2t35xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760387993;
	bh=8jyBJv3v9SP/jDDHrotFy8XSTzvNTZkFCCfzQxzZzzw=;
	h=To:Subject:From:Date:From;
	b=ev2t35xqWjYTguZynmV3mY0MATfhUEf0ux7fysbk9weM6vcd5CB+s+rOAKVqoO/v/
	 OVj92BbLcGvYp2maqhfw/9QlsJmNk2YTprQ7BoJNCXh2h8vw+GEM4az8Yn6Z0n/bzx
	 M2CVd24at7iKxrGaMwvRo0tT1t8Oi4QvYEVn6INfc3ivJTvPvNGYII9+MR9YUIzZo7
	 0PIyrA5Mf22nm6NxqKcR83Ehn5XHBgVqQyiQjnbEMvoIr8J0O27Xpi2gi/ET/KlalM
	 t3oG6QzMOiOwI998yn2UNjLv8p3wYYPkPQwcr9NzuUhZhTmJdaw/eRjvhJyVT5BWI8
	 I/uEvoq1SmWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A0CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038799357.1005.16314620856380585802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b7df7c370fde3c385081d229b78c5ec72e34170de6422c0b4e9ec955e84f56
Date: Mon, 13 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760387993
