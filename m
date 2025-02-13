Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF0220B7FF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739451534; cv=none; b=l3R0Yiv+GrKgOrwIQX+VNWkju6NdA7wJNqVsVNVeBjMMrKUfaixnubm5eD2qu8OIIuZEPDfNdYuLz0g0EwUfNTrQm72xLaZ5HWJ0uAPA/FlyK0p5SPu1SeupnXWcoUrjdBCy7lQ0mIQqkS+i5Ymxl0pzWPdayt0D5zZjVL74rH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739451534; c=relaxed/simple;
	bh=YgLN/TaVM3HwchnSegnYq9ZIQj1A3pRogr/EV+xowEs=;
	h=To:Subject:From:Message-Id:Date; b=DA4ic/KIOSl35nvDFN8O4rvMXAuOFKFA6np5WfLarYdmWWkMQZ3ThhkwUqRbXd0v26bNOHiVHe5801ObcAdLysL8ZsTNCF5hb333rr1irGvSuUIdSAazyiDZAWAWVq/WX/QygtsKxGmPmROF9mzxJFk9Mui1xnkdaS6Z1DYZrlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ9uQVIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ9uQVIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3C2C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739451533;
	bh=YgLN/TaVM3HwchnSegnYq9ZIQj1A3pRogr/EV+xowEs=;
	h=To:Subject:From:Date:From;
	b=jZ9uQVIi592EbsW8az9G1+FZ84HS03MzGRt+FpxIOUiefPSOaJWrnQV80e1RS1GNU
	 LrTQWi1WtEVta4nHnz4b42Va6rjFVnhOBnx6kHpplewihYlWh1Q17jdb4O7eJW86pa
	 wXi+fxLBy6AGP10d6XGVkMf6vq1hrzDoH4GIdEzDP3kC29ECqw8219WWwAF49YC/2X
	 mzXSEFh367WAU31qAImPoXUl5v9oqKOUZGmW3IA+H5I7a3hPOFr4YC0YjTEcmvApRo
	 /vjlMz/ppFaVWxuKK1zT43lXSw3XTtdhXV50YwRWgjiNkb6dBRnQH1xq2gEkp+1Ehz
	 IklkABX75/ljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99158C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173945153361.12241.15764337155059176070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283344d07ad1e19170d4b13ca12738d30629899bc43921404440113082436c3c
Date: Thu, 13 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739451533
