Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2224A1D6AA
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758868194; cv=none; b=YSJkV7ftm1phZowTE03g8ZMXR5VoeOQOWbpCNuL8s8oRRXTIS9a1EhjG4Vsp4TG7eh5x+WcHBgf/lSZuN+erM0EPrgRQF49qHW3dU5SSWQK86hXp6jTkFe9gT/UO6K6ziyNG9x5xu6/mTtKx8kCSZBm577ATjRHqkrEiQR5oU/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758868194; c=relaxed/simple;
	bh=WJma8JuBtd+EPw3/gXH6QUEZF9o80XsJXysQlvHezho=;
	h=To:Subject:From:Message-Id:Date; b=bRvxeGAVc222ZmLgwTlAqFt8ESQH6/0jvPuIEJPHaHYnWppNeL4iB37jWksqKeLeHz61swZsV5VebpkY8/PgqxE2aMATo2Jfep+i4boKlGCo/VdkdUqxtqkml2UzMu8Dt8FjKRjybrV1mVkgEPJHqepwVqWQ5CfSKbMHldXBbfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IghOka1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IghOka1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5970C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758868193;
	bh=WJma8JuBtd+EPw3/gXH6QUEZF9o80XsJXysQlvHezho=;
	h=To:Subject:From:Date:From;
	b=IghOka1ZWA3a76t+uQzy1TdnFT4BWGihI0/upuLTJLcfyOYTr9iQwAXEz486jeTjc
	 WzhVngFCJUmIYLiZA84LxKVBfa6cPbdDyYpdEI9t66T5yJ+wSjn4TumeOnCwEIU9Op
	 nfI0xf1SM14qCBXJi2vFgLUPBPo8CkbIU86IatC9AjbLMdxMGQ8n3irvuVpHlLaezG
	 FQfVAXUkcT3CJwrj2d2+Yw6uEqIzyW/hXaSCyRr5T10U+yvnvuYR5uVMRDj1ba5pgT
	 2ZxCfGZX6tGOfzMKMS9la+OtQ7Cj+hnlOuaw8idQRDCcm+cScKCn8A8uoxvyR+HNKt
	 5La2OlSWqwA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C3CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886819358.8183.1148103625105712865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bc407738de9056e47ea74867b7fe1fb4b9cb539f3bdf258275e442bb8cc254
Date: Fri, 26 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758868193
