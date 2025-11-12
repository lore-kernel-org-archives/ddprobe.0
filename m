Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4311F4E4F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762955393; cv=none; b=s5NChJQG33gYQ2ClMDopfqoyDQak7y30qX4hfb5erHDr7y8zk2HZF9JLSa23C5URylz+dV4SDJmyi0TUEkUBNupL+T/4oYKHK7ZrFZzIT4mmBH0gV/rUO2w4FqXjYyEY822x/y49pej4vb+5w0hFItYWuJfHLFKXocGotJgWE40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762955393; c=relaxed/simple;
	bh=/waq+tHJgDm1ObcLcX8LMTJ0LYaKw9q5mvFRqqwOA9Y=;
	h=To:Subject:From:Message-Id:Date; b=HnZvlthxZeiQqK3Mr5LvHEAjWK3LXdex8+lmTjX/AWLxHKz2fMbZdL7wZG7PC2RS4okvmhgmzB8uWpDWFkt61Ol5pA5YdpEVIk/8ZvTlbFprrKM5XCWjp2pEshHILlqErLPmaz0iX7ez+ufFOCfxvht4GV+gEc2hhnsUlLt8uj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYidCfP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYidCfP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F09C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762955393;
	bh=/waq+tHJgDm1ObcLcX8LMTJ0LYaKw9q5mvFRqqwOA9Y=;
	h=To:Subject:From:Date:From;
	b=nYidCfP73ZJxmKHKr4y++6GNAQtYZTl5VffNaZHi+5QV2KiMcnz7V41+LobC5jbDd
	 t6LmhBmN/mVdasscE9RsgGx1N+AnG/Yl+12a9Kxb82cR8qJjbkTx4gu7in9tfY4WOM
	 2+B1ED39OPliq60dOR4a2qj0hNyv1vn5vvSmfk3QYcJKjg+gVhs0gvhOlp1Jy6ylFh
	 a/8XSk11JOhgi5CbqjFCyiU9klLB9F8tYD7kXYIZCZtpjUETsdJqUWzbLb/f5filce
	 bL0vPz3EG2TTeTzxrHcN2u38bWjAm7x/27Jec82kFEcg+7IUmcE1jcwpQtoFgBfqEQ
	 CMWArhwkbzNLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91194CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295539358.1969.9609279291798804812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7a5366e2e2e826bf923f40668589c18a3d178b9249d8caccc8aca44475e99e
Date: Wed, 12 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762955393
