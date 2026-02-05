Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D1F21A92F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770270834; cv=none; b=UEKrksVWKV0jOSfS4r/KhxUFdJQbflqAz/26J1VngO92v9ItHXXuwPlqLu4hS/n8nPJLZQVfcmrSGAC7raUJlzAEENk3uOPhn6iEzRMD3lL93nqK5ivCRbwdT3k1yzx/Q/Q53spKR1Ak1g0cR66p3yxNV03DY0dOPRyBKsjb0YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770270834; c=relaxed/simple;
	bh=GMRBe38O8asqVXWic/iiYA3eAWIIM2mlqrNQpyV11OU=;
	h=To:Subject:From:Message-Id:Date; b=iifUbJrX8RDCKhrDR6vMwAZZh88q5rBAV9ugwBB0jQJXsdWOjwANqtm23+KdnWi6mxIKfAI0FeCOm/ItzM+YvT6qKhpBwhhOxoIV/8k9UZ//G3pRM0/DGmHDH7RcLrH5tXUSFNBqCSCRrAkgBpZblhplq/46QddtUQka2HO7Wv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8qeDSQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8qeDSQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC377C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770270833;
	bh=GMRBe38O8asqVXWic/iiYA3eAWIIM2mlqrNQpyV11OU=;
	h=To:Subject:From:Date:From;
	b=H8qeDSQKwA9IQLHp34+ypC6ZwZb2R5nLarCD4l9m99aOBKvq/ZkkizNiUBKVTn723
	 ynHav6Fu6EBdq1e/eX8eeQDRkMyAmZOjJCiylXTOlBT4lafzvNTOFBPHiraOTSgR42
	 KbcXTRshjJcsNFS6KmKQ2xN4t5ZGdtEzpcuGdgGmCC77qPfX7ZrTu7sN/LV+Gl6SMk
	 yIi0IomzEDGNj0tYclvRTn+O4GlvOsv70PPTAoC+kZasvWy/1lnhGdQdriBbJyMgKV
	 Y2TlyYcAAHS7XuWD5PHX+U3P4G1IFs3thcGql2ltr5bJ6WewZQWqhaC+v7PNR5CY4a
	 +XIbXSfGMoXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99389E83F05
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027083361.16691.11284042778413558887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e68f3bee5c11198174397549a2b419a6bf254d5c9a6a5d9900df4d74c6d908
Date: Thu, 05 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770270833
