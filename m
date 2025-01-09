Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3577A1AA1F6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736452554; cv=none; b=s/jzVpXnlLAJgzi4m7V4dYcXo/mPY3tNTaYV2r0qmblQjssUtt7OShUeemnn9lnX/HNMcdkjHom77Xyllboj9GMe3v2D06NrmFIvfYAc5MoQ789MpBtpTV5r4zPHfDjY4Vjw16CxW00LQvbVNOaDSMKJnIQbXrtJ+rA7Yp0oVQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736452554; c=relaxed/simple;
	bh=6znPknKBJ2R2MgmHkKvEWozIz9qA479SPualcb3Up1c=;
	h=To:Subject:From:Message-Id:Date; b=SmRRcGYZbmd3vUt1CgVrPcCT76mDXBqhh+yN9OaxUGXJpZx0Hi6slX28DDfjYKwNdVhc0QO1+JTB6qxdyu5c7UOARAxApM2er7gaFpEkLCDnnbArAtItjFRUZg3kEgi29zdi26zMdKrna+oZVBRZ4RtDYGjHM6Tlm0mJDdtiwfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCP0ID9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCP0ID9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0518C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736452553;
	bh=6znPknKBJ2R2MgmHkKvEWozIz9qA479SPualcb3Up1c=;
	h=To:Subject:From:Date:From;
	b=RCP0ID9sUTBdZz4qXIa4kgbo32+XS+sheb2kHEqEXMp75zKVd+rFei73uWWO/YgMu
	 iv/pG1xviCNiwKBiWUqAdTZZ9G/pFpVPHX0e05hiPJVcm1vysD1fZRwS7oD9XKszlQ
	 ZtW1+EaYAcRF8WMnm4zZ1vm6gVvxDxkqZSY5HNvC60Dkyu78viWoNKfo7mVb9kbg0Z
	 nTJ4U8EMSCN7fEfFdsb4WwcSwYHXg/nztYG77k6h+Z8F1chPTEuezAAPryl62Y2MAt
	 IiGUHo74LXWk+A1e3ZGDNqTV6CPQbJf5QfDzSeiSYYd6L87ZZLsJh5APZHHcEkbC1B
	 /UIwHhqySaVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91620E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645255358.26532.15818306592589844096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb412119739d8e590c7a6b6e35f9127bb05682459c481c2551a18424fd8aa9ae
Date: Thu, 09 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736452553
