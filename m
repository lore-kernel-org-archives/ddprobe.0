Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BADB14A97
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706398097; cv=none; b=oEcra725kgzKW1Rkba+W33VpNsqFhKDn/degK5gKebOtXUSGwhWEZrOlaxsfdPJm2xu0qxJ9fRe6Szd9An6bOgIqu2xVqw+I/L8MWq2Bf4qsmlr5Fob7dKZJD1eJux4w8Zq5lcyZSUxb2LqBBD7NeMFyoi3YyAYEFkDneBWM5/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706398097; c=relaxed/simple;
	bh=VzpVwgFcLUzberMMpfO7o29+peEdzXUskUddxXX+j+w=;
	h=To:Subject:From:Message-Id:Date; b=pJao2eudSVeAs2UV2LYO2iFrb/oktI1IXnY2XM0m+1Um9REnBi3C6vHgo26aJB6LDA/LuH/kEXw5F/9MqBSt4tceVYWi01etYHMuzTMJpDgLMCMDjSRAYvfWzXvcpTHJ0vx7Y/322tzZgeAZpFltXoOhwQG/2xXC4N1q38w8Kk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYrAiCUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYrAiCUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABF8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706398096;
	bh=VzpVwgFcLUzberMMpfO7o29+peEdzXUskUddxXX+j+w=;
	h=To:Subject:From:Date:From;
	b=RYrAiCUd2e5ofX9fdQBxdD9G51cbWvg5c12rGnOW9CVYwbjXCQBsTCFhqB5GvK6zw
	 gRIItLa2dHLR6ka86OIDH/8l+Bht2OvClWyI6tJEaHs0hNUBig4jXqrfv0UQRoxCC2
	 uCpW9VFOruz0Q67CD/9pJgIJW2LzfgxqPx6KhRTDmvI4H4KsrG3fvdk/O9vkBsIEOv
	 3ROSLO3f+oQDlLDRynUvWlhooLVz0Ms1GuP8oVT7WMfsEYY3//2E7scUYeD63u4j75
	 IbElO4iIyu86ldHz6nHufXL9iHVn7Czni0CoEUpxW7EoqLkU3hajtDXWioBpxySknx
	 fRo/EgNwt+tRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D246C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639809636.4564.7824972931251930021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed45d5a9ac16f78fd9f22cb121c4abaf080ecc3048b5f2c54aea4b3b6c5ce9e
Date: Sat, 27 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706398096
