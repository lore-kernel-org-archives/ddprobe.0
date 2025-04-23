Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB726561E
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745427594; cv=none; b=Vt2xT5HBDpNvTsQ7UR3SweaCO/98UMc0SSmLJCWlMVvma/JLdLSgMvpIoUlvRCBTPESXvA48arqvdBRtrezUxxiK0tKaDcoJiC8YdoraJV9Q/8qWfnCsnTPro/+xrC9OSKKRgZcWEwqi0JvbhDsCLiqYkQd1PcZT5UnPs4y/87Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745427594; c=relaxed/simple;
	bh=knjxFUd0F20tfw3/4QNppQfi7nHYS0akBYvPLpw+4q8=;
	h=To:Subject:From:Message-Id:Date; b=fLCd8U58sfi08W+MIrhl6DPYK1Patc/zdadq2VPuf0GOMl2ue6EDHxPPkfZOn3WRB9VDdwhVX0WprDYp/Z5dDw9050wLRSjJETxS4IHsADpZG9nF7t/DROpVKfJL6dxzwypGijZunNXMwEI0KRDSAfKXLXw6SlC/HszMIA0gG7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5+o2zJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5+o2zJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C39C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745427593;
	bh=knjxFUd0F20tfw3/4QNppQfi7nHYS0akBYvPLpw+4q8=;
	h=To:Subject:From:Date:From;
	b=m5+o2zJODc2ctYIZ6pKd1nHKePdLuxMrYjF91eM+nZnTkYD9xP9HnzsuuNwSLGNb4
	 Shrp/pgGajhCFXC5p9MU7Xa8oIJiaQdL9MADsn73ScWh7tLT8P6JM1rnq8QcbWCjQy
	 DCUIHaDYiKXI0GsV+SrzFWHA2PHGwZyXVPKAyIP9ThESsv5lbvoP9PK8Tmg3aZQuOh
	 M8J1AbbVlj7YoeMO88tVj2YJ2753WQHHHioJUPRdm+2BB0tIrd1np2Igyk71pTv8o4
	 7EYRonYlPF84nbROfmnxnfm72oUF+jvLGQfKcqBo7dhknE6qQBQTdfPDlvkN2Z+P6W
	 wmcqFr8QuiofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA5C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542759358.4357.7474862675292331901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edce6a12bb089537c16007cfacff61cb0487ceb0151ab3bae03f4fb0e1d9ebc
Date: Wed, 23 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745427593
