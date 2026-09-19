Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA261C84A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789803034; cv=none; b=K1roepfb6UaIbdpmGGMFmG3zXJpQ0YwomCg6ioi7gkvJC6wPgpe72yMN/kTH/rObkXEMTin7rZtm/S12dIt+6qoPyUWvV9i/H5IdYLbWMJExGO6Kqmtt56/F51N8fGQgV29Pesgq2qUMnNmKdHJdISxAWicObr8KF1YkUYaA2fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789803034; c=relaxed/simple;
	bh=L/3wNAbt2QR85UZCNokjDeAem65h0tZJ6/RJ13fIK1c=;
	h=To:Subject:From:Message-Id:Date; b=cwQhddhcZnGy0GiNoM2+ECeKEYm4GBcCcOrzeE1bkPDmm5/H5tRhc6EkTvsAHK/QgZR7dIbAGYTNm0zlHs/rmht12XLljWPpWVK5vQ257mMLkYKWwaXBm8X1LXvWI7tSA17suYkk4cO0yGkJur37XJmCUT9rwVg1g8IJgZdbxGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCqq4IJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCqq4IJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC67C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789803034;
	bh=L/3wNAbt2QR85UZCNokjDeAem65h0tZJ6/RJ13fIK1c=;
	h=To:Subject:From:Date:From;
	b=PCqq4IJjrNCQex906byXkRTzh99oHHfm2pV/4zv8uMJKjAlrQfAaaTcfYEEiichkr
	 BUq26bEqT3T1wRQYUwpMkdIenAGOyua0hGinqPKxrhSVCfm67a7KEpnEl6/43kdza4
	 SliNVsPBQIqqaAE4B44tO36fv2tLMbyH14OSptoXk68BHCJVwBobRrQXAHSzypjZTt
	 7HirvNKAZM2niQdOrxP7joJAbtKjhjdsi0oOn7xKlMwHg/x0PYVxo/CJLccLFpD6vZ
	 fsg92IH1E5bXcfq8p53pZico781RJrF2izlaN53B4ZG1eZMWuLFRQBegbyL9my+kto
	 i+ax+n5vvvk5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACE6C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980303373.9847.9740338349576548650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1764a84b61af6e06da6bf060715ef67a5b6be0e4822fd93a72f95cec834018b
Date: Sat, 19 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789803033
