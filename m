Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5B013B797
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725087954; cv=none; b=NjnFRD/5G0qgq5x6/YeJxkwdo1nmaV8lYjQPme/amp3gRrbG4rpf2XLYEbyQ941wjLci/lgGMx8YLvC5OIpjpYnQNvSLPv3hoJEOClFAe4zSj1skBOrBYjHOJMfxChDhpYmyQaU9OrHfdyK6c3Y1y3AU3AiwmiMlDq9dpYKWP4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725087954; c=relaxed/simple;
	bh=X/QhivFtEGXNxNxz8UkFtRNDMf2yjyHRAjDUk4r+pEs=;
	h=To:Subject:From:Message-Id:Date; b=MflwNXy7LwVKtodrDeCWdmAPVYJzNb147gHcGuZNp7lYyQN08jHshfwRWPRIV+/husj9+eGp4+gPqXKiSzKP6zpqvlUYdO7BQQ3F5rNko5+WZMKF3epmJrx2bj2GhKorN3MRekQ3cM6r/rvdIcSzttYJCYAHfrq6i01E41Pw6uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI62PrZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI62PrZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B364EC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725087953;
	bh=X/QhivFtEGXNxNxz8UkFtRNDMf2yjyHRAjDUk4r+pEs=;
	h=To:Subject:From:Date:From;
	b=BI62PrZ1sfewQjjauENU03Z4AxUi24geD5Cl1B6P3OgYmOZrL4M7ELvZyYRtNMuuS
	 poplvxWWXPeEjHLBd5TIRxsClzQyoWPGVZ9bTSFp26SHWwGK594vrFvEBsgN5LGTmY
	 SdvjxuZXGBJb0O9Sl2PePHyzMfcXEgyycgOafHFaOfwr3jzpnuR9mHFDye5xCfG5Fa
	 F/CvmvS4K49H2LWaOBygH58UatdzjNpo9c7veL0DdDU2AKP4bd/cQ7+hrIbs3EAA+D
	 ot/bS9XnLSA2VoOBvKFaffPvfamZlpFIdEpGp2jxH1RU4QXTUal8SjNDeFIlv7TU5I
	 zqR7XHt+As3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12DAC5474C
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172508795362.23200.16666434842308696207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929203467bf0b1f7f626d0ad52001b5c1c08475bb1914fe51cf6eed4b84fa4a0
Date: Sat, 31 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725087953
