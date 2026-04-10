Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD03C870C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775829454; cv=none; b=B9QYWeAKPPF7r/BpNFRcKg1Jyfog3OwYnCNf20upkfjFC9pUPAmrMvC2VtaNSqU7IDSStJDur6vM7ke+jI6lcbN6e8QguQfL3Ps0gv1zvydGX72oGTP3wdrW9GaR0ngAv2lYIfYO6A678UVVEbSuVuyB2MxigPB553Ij6hFeFGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775829454; c=relaxed/simple;
	bh=k+98ZtZOWeCfc4GNgW3OeXdOcBU3jhjsZNb0FjB7Xeo=;
	h=To:Subject:From:Message-Id:Date; b=QfLoeZC/aZE7/6FPGbCBlPGrODQn4UZzhGT4RjOJ3DdoQLklJOy6k1y36v201EqsXH9rzCNZVyvzIgtmgCRjGahjCXENh0v/EgGJu0p69QiznMb9LpYu2PUwcmyzgOiWLUGvqtkBm6BVlc560mtwZhpKR6xNdoSihKMWCtbtsVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2OVdw1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2OVdw1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF81C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775829453;
	bh=k+98ZtZOWeCfc4GNgW3OeXdOcBU3jhjsZNb0FjB7Xeo=;
	h=To:Subject:From:Date:From;
	b=Y2OVdw1oS+LiUKsfCtqVIVvzcW/RRpaLYuDJJFnYYGUsnKer/nO7p84EThTY2u/18
	 paiKQ2zej1SJBZWDfTCichc7rbZDn4HBpGo07JEfCj2L7dOnC0H5xSmiCfvDK3oJLt
	 GB5eYHrVFC+wNytjW6rzJhkN/PHWcjlGwlotsbqZr7PSQBO9LCiZaQIXKvtFr0M3tQ
	 DOa5goLLUKfcqLHljDL/aONLhj6nZCt5OAtOvtxdkxuRGxVHl9OKG3YjF9OQ3pOOxY
	 xkyEC7cgrZezBk1teJQ7pXAd/e59+a6FrEgOXQhg3qc4ENJnxUgiJ4S7kVa5rQOI+S
	 9Z4Z3n+6NqbCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF5F44868
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582945369.25447.16400788229472216333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965d94a1f9141434180953ca32c5512b6bdd678dd1b3eb05bc9f3f3616814ac6
Date: Fri, 10 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775829453
