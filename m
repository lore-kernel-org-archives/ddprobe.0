Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87A202F9A
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747212594; cv=none; b=TiMn+yTWUVa745jgzPlBN80T/ulqISQ16o2iLbo3iBLXB8rkyVaNTI7LxZPyQ0zmIKHKDrlpqeVZQ/oH7hBc9I9XFaf4Ors/1R+Kgu1po4YkQECceSLpFjTMdVXrXJbLI6H44WonwHG2XzZTef337T1ed3sjGUxZOWp8aSQWBIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747212594; c=relaxed/simple;
	bh=CPbFZVC/YNbV0sYJ0Gy2czgrU1plrkBNTWTf+UdC0DA=;
	h=To:Subject:From:Message-Id:Date; b=FKlFeMokW3hD/Zec+eDKkrL4Hvn3L18OKHgwxtGMftlyEXSUaRnABRO7NqsnEb5QUYdy9GOiCiZ0Un+QZ4o70G32MySP/M4gcI1lKV6Le1BaqCLoj1t6xT8rKd6Dn3GS9N7213BCozRjtUdg4asbIpCMKL3EBYosUPJyriChumc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPkays9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPkays9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9E7C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747212593;
	bh=CPbFZVC/YNbV0sYJ0Gy2czgrU1plrkBNTWTf+UdC0DA=;
	h=To:Subject:From:Date:From;
	b=EPkays9xfAwrfuMg2AqG3ja45yA9Af40ZWYVRO9sW8LrFMtvcdszJlcug9UMVe7X5
	 egKpwj8TpGybRoAdE/H6QTc3SN3wm/3BHHVFtRLBu0mGd7bozbJ9Ll1LXbacXinnI4
	 RNW7iOcvrr+WTx5gzXaTHCFzEIdB/muz/iYIN9c8YsHvv6cF9IK0U7K6yQoSH5Bm4/
	 dR6RqfhBaJgAPRrkk5H7oZOJFpqo6OUc1QC+73qsGawdw1HhDGq5V+ne+Ez1vDGOPV
	 qon0iBaqh4bEjposcKquyIMGCZdhLgT9PD9lTuwHtIYdjAoev8VrAxEZ+FYBazYaa6
	 JC4Eqze4KLX7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A9C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721259357.11345.2641023715683749303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c9be282dc01a2545cdd27a32e57b4d7cf13c93558f402835ebbd4164742333
Date: Wed, 14 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747212593
