Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047B92BD11
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926294; cv=none; b=upGtdVHG6doNpkC1M89nzN8JxTGz8d7vDJC2Yjyac0aXJaeOrMg5KlRje62IpyZnpWZW+ZvrLrVQAfhk12VlgF7egGCitiud4dn0BId2tItbnEf7d1ECGV+9yjh7xqCdwJw30tyO0S9TrvXbdsPqo474akK3+caiLUTf55M7PiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926294; c=relaxed/simple;
	bh=xJo1WrPL+VP++mCWO8B9TUJrk6KUFR5Jk87hJ4bji/0=;
	h=To:Subject:From:Message-Id:Date; b=PIWweB/XUQNBCGMg6IaGgbsmbTIAbqKxcogLHKH+im8aGw+brBQBRkUKVoI+W8YL1RORKh7im7gh4zcMC25Pre4SzFmPHbFEfj9TwCLpJyusYS8UfxZfom+Egqs8Xrk9RDNfTs9cMnjkuH9GgOQdO1nPM7SESz7gqZv3JhppbP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYULPjfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYULPjfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2603C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771926293;
	bh=xJo1WrPL+VP++mCWO8B9TUJrk6KUFR5Jk87hJ4bji/0=;
	h=To:Subject:From:Date:From;
	b=eYULPjfj872hFuhw+u09XDydAK0W+tOFw5DV39Z8M2WlWScJ3JhR/lzwQdUka4maD
	 VX7HWnoehhsMdP55Flsl7VNXz5AacKQcV1Q3MiHSBiDlzLB5GTxwPLX+6C1B/GucsR
	 opCzSyrK+Hsca7xKFb6W0ZwJb/8pu8NMWJLbX7oI+ZHfZUslboKxSvkvPAVKe8awOA
	 k5el9euwzPqhHSkI3G1GPHRKkCdlD3m9O3SFLkxdJ9617WsOx9w99z+LX+r7nbCblA
	 qKmDCWdqV+ArGybiuO129R2XNyMEghkiymAx9Ye/IAnTnCzdbzsPsJt26dl/4H1u1u
	 w06TxCqs3OtEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050BE9B243
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192629358.5012.4917403282591252090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdf3f8883e5e7f6240db1344a452496fd3b9ccd34a07323f428cba0162fcdf7
Date: Tue, 24 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771926293
