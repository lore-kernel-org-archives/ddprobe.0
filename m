Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450C81BD9E3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745533794; cv=none; b=ri5ErefOa/6Au4/xgP1TJG0R4L2RMyf5u75EOZ48PsMPnTD0FrumNu/45Gf8hZ2VH+cV82nZ0IgdIyHXgV/Vm82oSFG9PRpQvLonuSSF4BUZtC5ItnxRes3WuLcF/2p/ZHmx48QB+YEXxRjYnLjEABovag8fO3XH8DKqJLhDMkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745533794; c=relaxed/simple;
	bh=Qq8/68IJqaxQKW91mFEVYdS0ejeOcW7jLI93+sjuUMU=;
	h=To:Subject:From:Message-Id:Date; b=OuAvHEVzJ+4xACTWWrxaQoemW6wOP6jfhd3OQb2kMLRtWAxREHe1dBeIcaGyATqd9NhoCXct0++1FjON2Ejopq4hqfnkb+KtRR0LeUqxHXPE9H+0kzo+4KTtFEjLpr+JeHJ0/YpYoi8piEbT1TmaXOPAypSOO+nAjVY2qUveAHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8cEepqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8cEepqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E96C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745533793;
	bh=Qq8/68IJqaxQKW91mFEVYdS0ejeOcW7jLI93+sjuUMU=;
	h=To:Subject:From:Date:From;
	b=g8cEepqZ7yjkhZg9KbxfFeWeYQ1FC5Ih+suKlBhEk0EuNu6EB4STrcOy9Aq/UrDPX
	 /UGgO7eGb4U492dRJ9GPnCCXBbwFWVaoIvkKsLm+qWZez+ps/nEEd9bUTj+A5AicAP
	 eFLQs+wuBhOCp2YZeZFpNXZ6JSckUV6Afc4QDXTg6Ylncf7+H1G1iCEDOHVOK0wURR
	 rqZlPQWX2NSCdhagz262Mw646ac6UYL6eepYaVxFuD22ssgv0oEMb1fIX+GSZzPQI6
	 SnGRAv69RbSF0od8op6ikpBIE9BOe6zbK+EuShg5vNz1o1A6CgjdeXsysOkylGvTds
	 l0nsIj40nfGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CDC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553379357.28420.2921949205449123271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e5c725559b3f0cef96babbedcccef9c1d24ebc22aa9505a2227148751edda0
Date: Thu, 24 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745533793
