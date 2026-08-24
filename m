Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C93379C3F
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787559634; cv=none; b=KbvOpaLpXdxqOdRVWLH7/yLeXn3TGc9gEKdN/xCXjW1T0RT2/BMfcEA+ygyr86QaUoAe+u3DWQKSwcI5mNATFKEB4ZSvW9O36wzlrLBzcS4VcB1KDpdfy23CmAOSJ69OiuI4xTfkYVaV7uStoi8BXkszxS3lDVGE5ZFgOIe+tC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787559634; c=relaxed/simple;
	bh=xe7SdOMZMDXVqRgofxzhMTrjp0Far10kWTdgVRvRGAo=;
	h=To:Subject:From:Message-Id:Date; b=OFYM6M+Iy3bKMElpEcTeLdTMYhlkGHNZRUmy7tEBqvhx/H53J3004S1jUsPqd2cS3cbNQR97GyL5ubv1z95wbwBVZgqEYc8K/PTsJnaSRufLMfZLMzK/t3pGy4LrMlDhjIAtMhdWWaBS6TF5oeCUVxg5Dl/0crYBoJ5aqI4F8kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiH0mBf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiH0mBf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787559633;
	bh=xe7SdOMZMDXVqRgofxzhMTrjp0Far10kWTdgVRvRGAo=;
	h=To:Subject:From:Date:From;
	b=WiH0mBf+Jif4W/pyymzt020vzIhBItzdzrH1/5QcW3A4yy7Pj8021MnodfhsW0wl+
	 DEofIP2sjpj93IGS0CWITGEbIIpZhBiTfB/MNMk09g4NuXXXCZO6QcOejIQ2As2hQe
	 JdY3ZSoW5TNreM6IxBQE0ym5gi7d8p4BUaINp+TiT085t0gFLuUOnGdHejVcDtsNrl
	 AKkxsv0SwetXOAVhq1VvHA6RD6S2kvwrxgARmSJkCu+yeyRCO2dE+l2qCCUd7lO6BA
	 5cNmOspZlE65y5GC1RuZu+LyZ/vZi4XIcKHwxR36B4ixsQc92l/6TgrcEa+hIBV6Y5
	 ArD2a1bZCQAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA790C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755963368.24625.10849885649559742823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3779aa2a55a38688abbfb2622c3e386dc29b84e80b4bea17a46a979efbb33e65
Date: Mon, 24 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787559633
