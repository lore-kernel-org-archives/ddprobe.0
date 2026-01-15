Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93FB3933EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768479233; cv=none; b=egaEk8+7BmZwIHdaZ4CcMVLFsEP8MM8r59kjWeNH9ttjCro5+O3RvAYvypGi72RoSErNNzWyioU++N0Td9qeV1lwhgI4gGKK7HV15VvvgRUsBfoZDjLuR1ZCWF+GtlfyyI1Pyw731hZASqDh2pI6T8v6qVCLHcYpAvtQarFJWfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768479233; c=relaxed/simple;
	bh=BNFemoYsVtRLMKeByzGtLa+3yGarBAUV/mhHcQZAzuA=;
	h=To:Subject:From:Message-Id:Date; b=Nyd1OtQ2MX+YkAGPAkmsOsSiQn/UETi+av1ri9+FxZq7K9ebAuc1zm336wSd4il3Yv6VYsKNKF4OteYMSnM72Omf5Ipx5+GCUh9ecb91B5DmcRif+/JXkyI6M9h7jO57jzEJzJdcPJY9GbBXJPjxxga8xhxhQLeKellZW2nsQbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1U7vNvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1U7vNvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC6C19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768479233;
	bh=BNFemoYsVtRLMKeByzGtLa+3yGarBAUV/mhHcQZAzuA=;
	h=To:Subject:From:Date:From;
	b=M1U7vNvB6GXpmaWzP1fjxVSB4OIV5tHrqaX68U6ayucXTA5MJwLgH3KIM2ZC7az2a
	 6AbPDhKypPL1EN6L5u1T/5CYyQ8R8k9XABPnY0+adFGJbWF7zlOTKXGgBOc7ak+HL+
	 X/uOkbGDSCwXSaIiWAvvn0YnujNyXIEE3q9Ij2ntTAFinmLFXCGLn6e5VVI2hq/frM
	 TZgDvZeeOHUaeKZatPcrVIBE/7f7V4bhIqlFW+sc6yf48JD97rNIYKrjIQLcM8IKdj
	 7vjfwyEi22T0jw0M4m+kI3plOzd6r4RT5tenDip7JI/cWpsG8wmAkGjoqJVQmid8u2
	 1Xj7LLBA/fDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90065D4117B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847923358.3925.10572313956061402568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83e03220a2db3c8e4a3dc10506579616ca1fe02cb7dc87910ee24b276867c40
Date: Thu, 15 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768479233
