Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32B23346BE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781672194; cv=none; b=Ho0GavAnMWc4XXtAvGatXbU/rSKvruSdib75Iq8gztPpzWXUgmvK+NxrBhBpQXnfuWvpuYCrMlTuQprrZN37WvieQRWnKu0OTzv43ZOoD+mj51oaFCQ2naW7Sn4WzHh2/iYNV/4eaJJm1eHUy5DHgxGuWai1EObqkSdJ96XWWY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781672194; c=relaxed/simple;
	bh=ZOkJh5SFao2mNA4623m7j8i1vNJZQ8K7gYAzD0ZnU2c=;
	h=To:Subject:From:Message-Id:Date; b=PVdQL9NeIQxepF7RIEoSK5YDm1w5ierVt15AOAH5TzXyQPpQHjSbyCsNAWfwcfvrsZozjO74RXKkUc6CsPwnaePxndT/zr5qAqPc7U88eBsOlLI0MI94FRzZ9pMh9OzSvYu2gGivOwAeo4kWgA3x52qC23/0IZ7n7x3XSmW4nJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBv7sGkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBv7sGkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DD98C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781672194;
	bh=ZOkJh5SFao2mNA4623m7j8i1vNJZQ8K7gYAzD0ZnU2c=;
	h=To:Subject:From:Date:From;
	b=gBv7sGkJK+xYi/lLTHvy2pORXOkpaRKoYNS+3qbnqlA44NtFRMwu+vIrrjdvevHVi
	 +c+258TkrcHwX98XRWpwKJ9qFiDbFa4/aAnu2qjaFq6zqGtiMj2Dm4g/NwmpoFqH7U
	 O/6yhPBg8Csj+ZbhBp24sdh8F+PIqYrCiGWU491oGEe8zvEhsfV0JdcdumHDMNvSNC
	 VOgcjsF592fsllLrov8Zjgd9IS/2GNarKwMJ1KktTKxyGos5d0rEzxZRJKVDyK6S2t
	 nnwETlxGzTQQBXQ1Ffd28s6MuOehua7p77Cix8kNCM9a6Vo375VKCaOcqwaVmWV5ox
	 Gpu0JmdpPtLFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50D9CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167219376.4286.8418565327635338384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e99aeaa7767f7e51719f6deab9b9ac6f12fee47ba4a6016533a953cb2220ab
Date: Wed, 17 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781672193
