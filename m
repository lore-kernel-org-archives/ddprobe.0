Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D213E3DB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777915053; cv=none; b=JTmmyRaqVUCVzOTXDbHwVznMsscfM2d8YOIFigZhgtezORuDUkJ/1+PNKDdBrcbeLpwzMxflOV24y294Z56QRAEVCVOlGsX9WMKzZwV4tCsMaywgnwhfLWbh/fRVPw+Hcgn33NJysBP8zF3QdFbYRjHqwuo8ielnOcUSeuVY8R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777915053; c=relaxed/simple;
	bh=iNgFw54i65if7EIU70WTwhPYNDrjOKH9t3M070cF5cw=;
	h=To:Subject:From:Message-Id:Date; b=oby6VKjm8qwNz8rAmxYGosGYdxdHhSe3ik1BoiZr00HJZIbL0zIIRXDsN0Z/cDT9GqNkeDBqra33zVttXs/v8yT5hb33kNh2BoMKyoL7T8gDTRDwWriizLlp9GVBSKo25BTuzOg/Dfz6MW5038cfjDre+I9UxBos2FurIMFPsFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8klS7An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8klS7An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB154C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777915053;
	bh=iNgFw54i65if7EIU70WTwhPYNDrjOKH9t3M070cF5cw=;
	h=To:Subject:From:Date:From;
	b=s8klS7AnBjBNCmyq+xiXTkk/cLeR9iselSa+p99wLvIJZck7x6+ERM2xn+AYEQUzP
	 uK3tz7KrYpX6X99J3AyRulj/N5YIKnLDcf/rLT8mKVaNMaI1Yt7Wie8kjdF04pmT/5
	 OBrMmYhK5DurIO9LVojMDhLk6LeaqX7XfPfyX/LNAM3atScwsIZtfQHtyg5SredN+G
	 tzWG3M7LjKwKry4xGl2eNdBUpMPWuB73ZWjds5Pal394DJUukA78BcDk0XlJpkel7F
	 UxB1ehLBIeHd1t2c7GGitBRLCTssNW6XMEaB6P7ZMfZ3Fj3OzgIJ6aZ6VGXhMXXjGo
	 Hqc9K+Qxf/gtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9979FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791505368.1748.14328376400132040181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac6a4d49d13e25ddfaa31dea3a03e0846614207713d7ea0e802dd011d8e768c
Date: Mon, 04 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777915053
