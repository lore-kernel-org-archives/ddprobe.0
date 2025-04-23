Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72B1FBE8B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745436594; cv=none; b=T92x+Z/73nBKVkps64GG99daZZYkeonqzdQBIgoCWP8mawX1n50q26f1pssQaa2mBZ5xsU0wSnDVeUBL8VjPHb8xt9O+OLJl23vFABMFebCt4lSEuVPqQZYIVZ6jbBXEF6auamg5JpcdbOnZs30W/UX0V1SWbO7dVIdf/WBfJao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745436594; c=relaxed/simple;
	bh=qdt/x5Tof83xU1gOlqlgaqsjrCOGiJZqIeo5c8uljgM=;
	h=To:Subject:From:Message-Id:Date; b=dXYDbQsup76EpBhq6vnoi6RiIuH/u0tEwXD0sGUkgB93U4lURK0nUFdw/UJ0a1YWacMYVxHG9BG9KR+RuiQ81pTUXSjGncwtnZz1DoGVwPpF35/j1BHw1RrhPoAHl8uc0gYtja1brGgxDutyShkNy8Mg+c1yhP6QVhWGPBT/Uog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/wsqXZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/wsqXZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1365C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745436593;
	bh=qdt/x5Tof83xU1gOlqlgaqsjrCOGiJZqIeo5c8uljgM=;
	h=To:Subject:From:Date:From;
	b=s/wsqXZcOUc67dKR2ng7XTnibg9Rmnnfpn7ma5hptANSMZ46GKgGwf36/kgWviIR1
	 cjU6QXXvGS2aVo0224ssRpgXUCvZWzYBRXge/TS++lxFeqU9iwBqzcYeReNq4+DhJ9
	 gt6iuMUq6ILLahI0M1al88/E11xUs7074TUrZuWnptjgoO1uRL4mZl+HOjZcxWXVPQ
	 g95ipigdagwVYt7FIqn4BnhmDMwH2xT5bjB5cBoD7YEEAzxzwTiH/aRjIdoQ8OiIiq
	 1yyhEOR9NzySzb+lqOkTF0TqSXICriDEMt9Hv7LXlvp4IMca9v68E82XEd4K/6MGpV
	 g+ShjV4NyznVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543659358.29492.8642000802870177752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b425df4eb563b67cbb541d49c28b34db6f50b45a01fef0c1f452fc0697800386
Date: Wed, 23 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745436593
