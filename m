Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578F23D2B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762743594; cv=none; b=X8muM6yz5e8pW8/UXK87+KIH+7BIFf35pm7W+gpce5QbC/voIxmJeDVqve8nJ81e41GKXTCvgO7JFH+galb7f+23HVFbUqEtZKwoJqibX/pLAO4DCElifKDHiqFMVTlhiP9V+b3sTF96YfOL+6kppY59nuIw3igUmZlHpXu5pbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762743594; c=relaxed/simple;
	bh=h7rCsCWrs9I/qaZqgLuQDubSpZ5W3PY1bnH3/UaFa+4=;
	h=To:Subject:From:Message-Id:Date; b=myTo1B/+YDrxDbeIHmNhfDo0tcJrHmKNstzcCOlWxwR0Y6mlOdFIZGZp1OYbuoNrjOrUGeEdFFmPOwfdeQJdnMJZgKz6sCqdvFWRt70DarDc83d+bvGTtt9SGka0YU0RuNE6VDX0zsxOkfvSsKeLpMQ3u/zyDF76ecNTH8LIhLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJLpc3t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJLpc3t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B029AC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762743593;
	bh=h7rCsCWrs9I/qaZqgLuQDubSpZ5W3PY1bnH3/UaFa+4=;
	h=To:Subject:From:Date:From;
	b=OJLpc3t7p1xCneHFPz6Ax9luS5UWdNvWskq6Q2fcuj9dWeC6QYKyyEFdE+EeITIfI
	 tvI+HOQ1PqFOXUvaiZLOhzXSweFfaZgpnHHAHWJbIvhrV49TO5qrRCzf20BXZOdl8u
	 JZRPsbPdNJk0mVEoNDWix7/o6Wg+n2dOzEGaeX3npSxptD+t4q91aJ6uVAnUK30oHS
	 SlzSK23TMJhOfPUoELwVM0P1DR1AV9t2FRrV2YyG6FENtq7ormGlcZCY22Y3Z4RLGM
	 mISWe8ZS83/CiUsOIOuWR38PK+9Gg5o5XKsTt9Y4olgEz0Lj7EGqRoV3ZdOCykgcBO
	 RKU/nd8VMJf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21ACCCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274359362.6550.15594647439590024500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6517cee0b4620c325784cf9e5257e564acc065347c73045937cdb3e1c68b5feb
Date: Mon, 10 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762743593
