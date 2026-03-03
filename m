Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575933555B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772520894; cv=none; b=L66lgbA/o4V8zoPBOZIK2LxfSLQfg57Z9Gpr9b72zeOq0LxQ+wY1S8zS5bk5CWeDbkp9rWby0rFMxj+l/JT0bLFmlWPk5jjrmx4qvQ7+F/72KJAix7hnmT4Nl69kmwyKPMw3FccK0d9gcVkw507V5rvvBX4KCflR/5yhtZrqg84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772520894; c=relaxed/simple;
	bh=gmHgEIHB5s8F2T0qPjyDW8C0SZSm+xzBEH3NnVmoWUs=;
	h=To:Subject:From:Message-Id:Date; b=WnA/Ol5zlkr22re9LkEX4cR91zNBgFSuN8lzRpROGeXyDulJRZKVUAQD5BScULtXKCwowbIpzQ8RlPrnCzzABf88wVUBGwi/gw/FMjvnrACOGKR7vXoVAAzs+x9HiwJzKTHRgxy9zTOF+rHKpA1SKZPkA5GWz3nVJ7/a2pSfiCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm1M4tyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm1M4tyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64D6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772520893;
	bh=gmHgEIHB5s8F2T0qPjyDW8C0SZSm+xzBEH3NnVmoWUs=;
	h=To:Subject:From:Date:From;
	b=cm1M4tyqVmTH+29G0NRkgknREWIqDCJUBdL3W3X47xCeKVpDuuqSYWFHAr6SSb6/n
	 b9wqEG8j1gdcMbVKINXBveSC6FMlV0C/0RrtN539OzFRg6tmkayDuEOkNEfNVa3/pH
	 5Why3eHfEHjvyNzP4UCE2q7WjvR/fkqnn89iGVedsyNH6JNZVRjOO+19TJYFBr9VrY
	 zNP5U0wdBXHK47n4QomSQNUo8uTe6EZKRWOOmltkq5lsgPPz+t/xWR0MOQGu1eoWHj
	 7lCud4pq+kkaUP8paRLx62wHMmkUhBZ9BP32jbtXS+g58Zp0a3jYTlq14obQuFaGyI
	 6F5dUgqf9Cg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD45AE67A6F
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252089375.6966.10926089954422724635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae71f2e3b93ec28757949992891617baf08edd00b8ed0ca7dd3e5c35b2ba12ae
Date: Tue, 03 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772520893
