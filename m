Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9D52AF00
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737902154; cv=none; b=mcwBpnz09D4PDA3v1P0nP7LLiA84qQvSfzi8/KvAU2wXXLjKLrfNvPOXcUuCurTgQNGsyULCb7BiDi7LP8SicKuLMk+P8Nt/TeehT0yK8WB5f0CaOu8gQ8UQC8gvOO2VK3w7LCfXLJmUbl4o2FRs3/Za3O4PxeNJ4QUtxjsp3+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737902154; c=relaxed/simple;
	bh=Ti2wECZDcNEEOz8boH3xhMUqWpB/xUOepoTCreuGbh8=;
	h=To:Subject:From:Message-Id:Date; b=H8MYC5i0Y8+DwX0GW4t7CDa/13OMHVsM0BNWFhu34Hb/vcC13NM1JokAQfSTY+MTUZ8+WxjXAdtfRZPFoq+2wfdkPRvzLSRAmrHHQI2HfFzyIDl1saKbRPv3zNPRYc0L/44YEsO/9MkzpytJvkCMFFBrKMcJQd34brlrwz4KuOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Naw7IuSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Naw7IuSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475FC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737902153;
	bh=Ti2wECZDcNEEOz8boH3xhMUqWpB/xUOepoTCreuGbh8=;
	h=To:Subject:From:Date:From;
	b=Naw7IuSSphtj8busm/8/LWHmVEqEFuWEyep3kQhHkigCokBqFTgfi+4KPzS06dRuV
	 D19u/Uz1ds2JJqzABQ491oT6/lP1i0EToLP/GXCjOqSc5SZVCku+q8yV/kgy+I0eVl
	 0jSTo2D4yIhvgKAVbefo7zRJ9obFG4D7hWRNIVydPUhWXVPgjn0ZbLVirloYMlWU02
	 H8gI5ytoHSflnsvyLiJfqDMr5IWhQU8xLxhqvFsNob4Vgrus0fag5AlitFVw2xd00T
	 NjDMPOUaBb+JihC6126uuuCuMh8kqbjqCSdS5GZ97X6tWcKk7tjO6dKE3z544WoppM
	 mQpE8tGi7cbEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D81C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790215357.5136.2037089437106648011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78a729f6386296e2a3df79ca8a5bfbf779a60c2cb8ec1efdaec5a2f365ee9de
Date: Sun, 26 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737902153
