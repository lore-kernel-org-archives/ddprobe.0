Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8D0224B15
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762850394; cv=none; b=spf5tl8UeVTnqnljxNg3bmX6jrjc5FKtuCDci9aak8gEt3HgPkqfnINQxfXRt4z8bGjbp0+xzvVH0SYQNwTamTkTXm+rdPz3ZofXhLLEH5RTXMEOboYluTnxb9rhx4ERNSAbl/ejNqMHVWGvShxav3tw3X+NUG7Q/KXWiRT4h9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762850394; c=relaxed/simple;
	bh=2RjZVq5LiJOnsSfPqtj7him3h2wK2faU/C9LikTQm5E=;
	h=To:Subject:From:Message-Id:Date; b=LgFCm5/VT4WOHG4JiL9oMwRkbqNFlmgUbReQqSbL6G0mM42jOflNie+oF1g17BVHwPIeuBzS/yVtn6Lbqtr0yvekIwLwwcQXd9LwpNXXqLJs5qGQDuZVlMUZjOSyfFANjeXntfGEFExU/XxpxFybJUu+99EcwjZK1e8XvEZThH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwhCaLD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwhCaLD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F31C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762850393;
	bh=2RjZVq5LiJOnsSfPqtj7him3h2wK2faU/C9LikTQm5E=;
	h=To:Subject:From:Date:From;
	b=lwhCaLD0SsRgD0q7d7IluV7UB93w5lp4M/zq/JUw+fnu9XeUMlnkbddSsSDvYCsgp
	 tJyDhq1C3sfNqaeDquJy9HG9p7dLOs+GWUV+LxegTOe3aqZT01E6hsfDmZGRiXkaYb
	 pvUpFG8qeZpIitLipwGn20vp8/67+Wy1l4ceKIt3q3iQt0LiTo/5eeHzro5LNuHfrT
	 Rzaz4o8disteXKvvQ8hnXkf0mwmNqMBj1mhla+i7X9D9sMK04U6WrZ5FmqR2/o83zC
	 3MWN9rT0MWzoNdnm7uhx/loF3CA1j6/+uGT+Cd6XV9l6UgCjbAmwqd6LFPEi7mCijH
	 p3EBTtcO0VhEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B8CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285039359.5745.17835336597535010982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d5ccf5c31f229ea2cd87f4ce99d6deb89af9c16932d8ee6f0cb8562091a349
Date: Tue, 11 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762850393
