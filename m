Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7EA1C2BD
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735329954; cv=none; b=oVSxA+CIQWp59+9RAhLjO08N0MhI5jDsZbjpcxmMI+f44nOKcrjFRnfBbxXMdLnmBX8uOZIvY+/wAhqjq47th4zDmmftzT7v3vF5ZF9mwVna0rBMm4t6GWCTR5KsEl7uBpE6cZJ9oL7fTMCkSEsvZgMzlX4PRp37/FLwHv43VPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735329954; c=relaxed/simple;
	bh=1poicx9qCKz+jUji2nTf9+qV78KGqbhRlGzF3cou20o=;
	h=To:Subject:From:Message-Id:Date; b=DsrjyazZnqEyJONpInVowe0Ug+sFJaU4CxfiDhSKjlQfbA0HLM8fVaUVZLol5PmvcbxE5m3EUyscfilZ/L/OoGIe2katqI+e07iyEQwogH/Qn7Cd867G5W9CTD639+caxqQUr8mHYSbZtaG7VlWd3j0ni1JBoAZgATosDUwMJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfQFBpMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfQFBpMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52BFC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735329953;
	bh=1poicx9qCKz+jUji2nTf9+qV78KGqbhRlGzF3cou20o=;
	h=To:Subject:From:Date:From;
	b=bfQFBpMH4wuVrxdGmFU46JuN8HMvyrolI8LCtqiTlVILjyGAfxTSk0gqVL9ivA3NO
	 FnbChPFhjNT5TpIndJNDyJs27LuIjrDGG9JRjQXdJbJ1TA5O9o6BsAL+nb6uLbSEXG
	 ZCjrITSdNpG6HUwYfzlyylO8Q46biwZ1R4hmcL+bpTCoTf741vQWXIBYkXTWZyX5Vl
	 goWdmpySFRJdb3PK8p2WpxAiIPPbBYCbiJQQsac4f6gcTxHihvFBKCCVHoHu3pEDcP
	 DQ5dq2TOKAVTlZjIpJdmdUkHn4OTnZmxn+zgJzfqHJ2q6vbypiwG5jRCp/aR3rvHvG
	 UZ3ZLt6mcq6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C647E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532995360.30645.4500799870133368938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1056e9fc2eb58422622d70ae5f75444ccb39627dae556d5bc6cbfe53667ef1f3
Date: Fri, 27 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735329953
