Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E00F657C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707465497; cv=none; b=avtNpgi8yfG3tJkhZ0ceeeWRbaxPmI/SgrRw4urjtsq7K3IPMgmlh1QJystniZZtLe+1S7aO3mrYlU85sjM+xhPEOkIn4MPZLxu4Z0EI3RKlehXqnhXfpuF9bIqb11V1i/tBiZiRYZrIA4z8tXrU1nZCVtAPfm0sQkTpBs0f/PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707465497; c=relaxed/simple;
	bh=qf33vbrtvkhlGN3GPpkg6bCwDHJX8sANvNqWtJGAhCw=;
	h=To:Subject:From:Message-Id:Date; b=l9ZrRvheYs27+KWyCpJVixmwKFU7TdJYXNJ+MW7m9NrF0mbfWzJiVVNqvzEN9TNYrW+/8bF4ndlKqg3UzLxaDf05DPPQJjiAJ00OWWhVEsbPNf8tmbyj9fTlIUVWXNy/56h8zurp1rC7xic1LsgjJIPBE8sUGmTHbd/8c32kK5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/gfFDZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/gfFDZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9D6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707465496;
	bh=qf33vbrtvkhlGN3GPpkg6bCwDHJX8sANvNqWtJGAhCw=;
	h=To:Subject:From:Date:From;
	b=Q/gfFDZ9JtfhzAiwB4cyhzVxSMhX6c7/ThULXqvYJu5uuLUywcQ8upwe41q39UfX3
	 bsv4c5pNWsqUCo5S8rBNMJCaSTAGYkf3htzU5McGic8FqjB4GtB4szszr+2X8V1KeZ
	 FrtpY+EsUmD/Lp99659FfUOWgRReCyEz6tssfyehGWdyyCXGR0g2r4UM4MNf+6HxGP
	 AvW5u81YH6fgU8SwUxifJW1otNj9kcCWDQPqskIhesr4Jn7V0MLKlA3jn5EAhvpZiq
	 bo/iMpgqOChBiMBtODShahWL5YneKPd7GG65Q2X0FWkVYTEk/fgg6tn3JCdHagmgjX
	 rvnOlL1iWCqCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624B5C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746549639.10507.2699706123017282955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc27e9f95804727e4ad7d1801c3a20e68594d8fc23d9807df07580eacbf393d
Date: Fri, 09 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707465496
