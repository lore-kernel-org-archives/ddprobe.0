Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2FD3FE7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748134794; cv=none; b=gv8BLHv3UumfWipCQZbI9+dqByYAQNRfoR4LKvvlilAdhXcVvSGIXYesv/TYJCjduQCbMlaCX5dPHIxb6jP3dSaXtCtzajIvOYOyYspChmm7CIty5T/OGowV6WvTfykMklPPKZCSnDm5MDMvgOWrUf9HW7xFTLqRW61qqjpdMLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748134794; c=relaxed/simple;
	bh=mfhXfHRKUPmYxTZqd2rjFaMWgORABssByIxbBj7MiY8=;
	h=To:Subject:From:Message-Id:Date; b=fyXakhsz7Vul8+mrsPgNjgQvK3k9YichDgje9iZl06CTTmRgL0gbVKCx/4loM6bQufKhoZAPrwvFkRDtMp3PUq31BkL5r/PV3eneOkseO+dsUdJ8BGzRGGhXVW/XnZepEnKsFRpxka6eRTfzCO+X2MEKI73cNI8jb9qCfuSwH40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYDNWAhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYDNWAhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732CC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748134793;
	bh=mfhXfHRKUPmYxTZqd2rjFaMWgORABssByIxbBj7MiY8=;
	h=To:Subject:From:Date:From;
	b=UYDNWAhSUGmPC9UQNyDOppGwrZgE8uR5kYJbKsXaT6QDIHcH/01P6clYKNAPB/xFZ
	 qxyCUXLqf6Ml5Fqbbf6xvs51RpLu41N8pTxMxqfBjKZfgm+YvRH+P+310nK6ByZvZz
	 9kiyTQf/VTXBLgeH8jXIJp0GUC0OsCw++TTo4W6pyz+xPi3EJmG+jkdZfaqcalkgwJ
	 f0WpipPBuYSfgR4YyewC+7VTD+9R/t0bL/Le0u3TLyDTLtYNYNhooZWa2K/MYyAPcq
	 ElYwtUQZJViruYVfgLCTzEE8AueW0EOanbqGzL4y6m4NE7ghMSyT4EZDoXsAY0zYpC
	 RHU6aTY6kVEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9488FC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813479357.8515.13695166009102896241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1737af930b2d76c4b1113b91bedfd9702469b71c4aee417fb5d794863aafe99a
Date: Sun, 25 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748134793
