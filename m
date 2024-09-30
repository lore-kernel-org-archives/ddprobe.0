Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF2518DF66
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727696154; cv=none; b=Be3YIAApwc9T4+fHU6RW4g2OwJUuPJWjMhbnjnqE8912TPQN5i1jJ0+XNx8Sl1iaT/Ozxp3Yc61t91GSiKIDYQkLLUNm05aMfOb401t4diOJCi7bRvMUXfxBnkBfbB1Q79mhSOMaQHriz2Gt0PHjeuvjLUt8R2AaQyQKFd/fIdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727696154; c=relaxed/simple;
	bh=8k5zWohheRGlJbH/iKJuwEr+WWVnYu6l4tfE5YpqE6Q=;
	h=To:Subject:From:Message-Id:Date; b=h96001RFe7Sxs0k2UWqE8I/j63hl17ytJku69y7FAIPWmXkWbUPiX7pAD5WlWHQeqz5OPfS0av7WElT5tWizO/K8Ga8tSqDU7gwAuvrAeD9qSrxkyV4s3S0IX9mSChcfKmf2vT8RqbrAPxEAtCH0GFPF9E1P9nW0++2nwkc3e+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfTSC6Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfTSC6Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A999FC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727696153;
	bh=8k5zWohheRGlJbH/iKJuwEr+WWVnYu6l4tfE5YpqE6Q=;
	h=To:Subject:From:Date:From;
	b=lfTSC6YtJDv8EVggQ/2Z6PxBvosmVBzkamYYMk3ItJpGRIwulOEg5uvWcuKZZGIWe
	 NqQrkEVdkDjt9yiyVzo1oIvYIJbWWBLPP99JYP3FmS7BCapsnyMs8Z1WXMk68i8WHZ
	 Sux4ITRMQ8YL0AotLGPmxKdgJGVEexo9l6km4Q10KSytskjyfmpJBP+LfJDkhIscHr
	 9y0ukJV5IN35sT4RzPL7tf7a3MxDgaz9czWyCrBtMuixpw13aW/n6KtwkxwsSJM4hB
	 UIH9ttuI82axewcOyYud44TuXzQkg8G0ANJbttx4ed/yNWJrFAIBu/CQKHgaedL5ye
	 Lr0j0ngy3QAGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6ECF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769615359.23265.3783937742869543003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd5ff98819403a83d671152d182fe81e3041f0026fa023356ad49c8cdba003e
Date: Mon, 30 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727696153
