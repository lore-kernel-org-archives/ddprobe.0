Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F088F19E971
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742873394; cv=none; b=NWaRYxWhDgmhmFEXBr/Z3j/FJDtG0t5MFcAHukdMBqyLSO8BMf1icT0sedYcWiSs2aGnfeSdBd3Y9XBc5k30n1QIdw7UmMiisLBaDkIr6p5GOO3/aWlsIqb7CGLpes0bBl0xjSMGoeQbwgdZP2hHbrS7KYa8rcnlqOemt71DqQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742873394; c=relaxed/simple;
	bh=lTKGV2jQf9YapjPfMyN/CgNXp1lh5IAByYkjRJUhlxg=;
	h=To:Subject:From:Message-Id:Date; b=BFbqaIyn7+zOItWAHVQEZzqwBwuROyEhzUQM/hb33Tsoi01vv8maXD7NgRjhNqRJsWfKOdMKdh/O8RYc9bqu/voAESf175vQppdOcomauronsGz8V7p+IdmYzb+qKsNv3/wGAkJbEQJ4GtBmz0JRQveu9/7ekycLKd20/7xYTJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSPgq4R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSPgq4R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC48C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742873393;
	bh=lTKGV2jQf9YapjPfMyN/CgNXp1lh5IAByYkjRJUhlxg=;
	h=To:Subject:From:Date:From;
	b=DSPgq4R42JalcAB9Ofeq/0o2IvwM7d1XsvTjpF9BuE6sLOLGPNjPmhkJEJuuS5CK6
	 F47JjpepV3fMPWLdvek2JY80xXB7MjCQ56pU6yO5EjGOfsoBbHDNjjuuGA/jQO5eig
	 h/etRMXAP8D/AE3FtcbVMx+7XuLqra0eRBpVputdQeCRKAK01ONZM5cDfxMyaQhjeK
	 8o0CFoBxHFr+tvTB10vTZdVEs0PH94LnwGVXCvgw2/wN3gM4wX43oV/XM3dJcReKCP
	 3rHyuilqsO4zG4AKm8kXdGKJOV5aZLl7J7/b2LFkzoKYCSCutnMhhDQbOJgRDVFzS4
	 zz+mA9iQZ4b7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AA3C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287339369.17248.1496246898328410608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c861f5385452753e22b4e0ae3bfa8960b229d10320de284e91ece5385cabdc
Date: Tue, 25 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742873393
