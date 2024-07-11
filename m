Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E24715956E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720686443; cv=none; b=cecYGMNJL577v3tTdaF1+xtYMflGOhTqXhHMf6BhDcbnLHWVO7M4k1EOClsymY7bnrOV0o3TdUp1/lfT+oLbUK7MhdcIPW8Vv394hRKwhXX3KBsqZJgj+wH0T8ouBk8l5c6rSMsDgk4wVkS2KQe0nantUxwC59vjBfV8lVdpAyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720686443; c=relaxed/simple;
	bh=bknWkJ3RZsDaqWBCNp+xSefOZVvyiL6IIJJVQvJhQeM=;
	h=To:Subject:From:Message-Id:Date; b=oM3k0qLFY2ncru+5i0dQebY8irfJOQ65NhbnMFJKzLd0sJc72LK/BW7jkEEcmATnicdsY+aLicIDgX5MSijFppmEz/wenjK0CySLZhfiYv5oGOAjckwd6ED6Sz9VY03Ssxmuyxc5Au12/MVlwert7bTdpQzzz9XJkKfOwWTLLMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPSpjM9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPSpjM9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B50C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720686442;
	bh=bknWkJ3RZsDaqWBCNp+xSefOZVvyiL6IIJJVQvJhQeM=;
	h=To:Subject:From:Date:From;
	b=dPSpjM9uwkjC4wUvofcAtbRsa8wqUjES3wkfhIWVg45lkQQAFb8uI2qwvYN4OyiD5
	 efFA0Vf1Fw5e1vwGUZo23PdXKbvxdWdzvVprYhkrqn2w0JGmzNKlDMD6T5UtZAoYNo
	 8Na2WH8zo+CI+q1pNPdq8Kj64QhUWnpQ7ytMMfrQsfokN7EBiOAULh9wRdh5hTGDp5
	 SgLJZsCK0RlH5s/24qzPNMRx7ZJTDnpkeW2J0AYQDxUmPDV6E3N5Y0y7omu2vkNv8u
	 mj6eLo3qKT7/IVkYq93q68lBuycEhp+nc+YD3z5eTRkt6/Ewi064/PNxHSBphLsd8O
	 1Ktid2Zs/tv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C821DC3DA47
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068644280.7816.13207297128291530646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0843d56cff03cad7d8be3dcca4e78ef64edf71dbe69a2bab6aa94591d5e504
Date: Thu, 11 Jul 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720686442
