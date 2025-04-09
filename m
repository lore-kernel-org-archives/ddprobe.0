Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502F1259C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744174194; cv=none; b=LqIrwILsTYyztE5QDzBu0PnJ1AvOZP5G+tje7VAibJZanWw6n8CDXFZqoWYcge+RFGSyXKvMD+O1iL2PPJgvAwBHN7m6xYKErdC/t7DPml6lLSKjKkCHJFwFEfcvSO8uG/85BOLUN4lgM14h6KBZ14SttTCp21OsDau0g+wUtDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744174194; c=relaxed/simple;
	bh=q2SKv7LXeyED3ySxTs8FI7VuuRaTl3SzVujqRUieJ/I=;
	h=To:Subject:From:Message-Id:Date; b=GId0tjS0o093Ofy23A7u52X5Av1Vj6cEObrhNEVajza61noVNSG/wUx7NRRw69q6ppOClN75wCJ6ivapgUgr1jvryHcbqSEcStxjqPw3nrG7/J3HHzEZB8IkrjRLXR9IbJRdyxcE+DGkDb/DgYxLRiKBJqy6pO1WcduuxAY92dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldWC8ESy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldWC8ESy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF382C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744174193;
	bh=q2SKv7LXeyED3ySxTs8FI7VuuRaTl3SzVujqRUieJ/I=;
	h=To:Subject:From:Date:From;
	b=ldWC8ESyT6XzgkrV9bTqOzw3AgRBUzumrWO3xbtj97/QEr3zyQHeWCN/ERZxrvold
	 rOtyG0PUDcPoloDBxqJ/aC8HT1xKL6EkzniPZxtPfE2mU1RAyN4RQ3jGj62KHQMuKc
	 9+iYqeYo2cNum6XpXGZjWdAacMkDWyn16lRg/v5l6uOB5PIZ5oTBMe11O4LiQ4a14H
	 jJbBkiVmQ1EJ2o+695tib7EyXeK3z5XdPoh3zXZdAwDFVWRDSSVzDTLcgakXQxmuE/
	 67WgSLC2jMKJBYfsG/kpe/c3CbLthL5Nk8lCVtyaoKAa/SgVq3s9gd749YGCfoxjsg
	 g4J5DogR8ZFcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5C2C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417419361.27987.16185144065442676200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fec808879790d04b3a445c8bfe13459021c2025cf2f6e9d5ea87723b29577d
Date: Wed, 09 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744174193
