Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45B223DD4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765348374; cv=none; b=fpcHRV9FIYIAXRl+pvJPpYvMAT6h4xxchrypJOMNpWrDDyXyuBc4kMjll+UdaI0gowXE7RzlOf/u3+H+jd4LwTOOKMUoLt8feZqkJx9viqONey4YxGVd4enS1U1PUR5u14AK3eK8CgcB52Zb6PWBQMdTvJrlSWqhUcRNmpyEFfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765348374; c=relaxed/simple;
	bh=bDnDxJLRUAZU0oQQ3TAQHWKsjFW0Yz8LqjKi37UGTlM=;
	h=To:Subject:From:Message-Id:Date; b=ZqCNE9YVQY5wG0DelGwlz4c+Q5eGrwrWm1gKGV+DGvGsme398nLgZkPjfvK6GyZM92iMeCezmZfA6CNdg4LKx0AX6FF5hqy729o4Tx9c1syPi+2JR+otnVETS1+6vY8KaQH//e9Lyf//Okj1rErnTM1Sazs0hVifWu2KSy7DHG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkBXnSQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkBXnSQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765348373;
	bh=bDnDxJLRUAZU0oQQ3TAQHWKsjFW0Yz8LqjKi37UGTlM=;
	h=To:Subject:From:Date:From;
	b=BkBXnSQaa5RrRLnYufcLWpf0iFsnXvm2QJATuz4gY0kC+IQOKUojOu+WG7DGP3ZaT
	 13favvzW4O/RCNjZvTbGXtqKsXR30Xfa5FWDv8CdKeqmBtJknAVO+gEZtF5kgmj8e1
	 Ql+EwfYHrK7+3vHIAonvuRhklzShX9QfzYiaLJqTtTYgOFPDBaWVVyQj+fTLCMpL/w
	 irct+7ZJMvxR9L40N0VSmfXCV2p1IWHCzD9rBrElMK36XjlsaxR5umu5gTN4iU1mBG
	 nf9uGmXpF+KenLsANPeiiI5AtqCz15YnAHGknlqgWBRStpUThk9UooTWkDjKsZIidZ
	 eiO9ys4ejeliQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200CD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534837359.30242.7587026748161454346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce4b12886240633208264ba6124b2cca5d63500688cbb54e0eef24e78899b5b
Date: Wed, 10 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765348373
