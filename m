Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6C2BCF45
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750202395; cv=none; b=b4NHR7GdtXIpz4b4wsbm549XwYBHNH0yCxaK7Uj/f/sWsiORCJFgudeHxP/Z47VOQQ7zFHmg9Q/gJWufOUAJbUdRfcabJIyUu2SglLUVDiy9+kRnyPJY97YzfSBpy2d12lKkqu2pthwQm1sjAVWiahCsVlCpoGccWS18aForAs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750202395; c=relaxed/simple;
	bh=TmIsLDhC3UW05ySsohKpujp+Sti9W2gRN/wnjBwL71E=;
	h=To:Subject:From:Message-Id:Date; b=FSEFTlqzirFmTOkyhvMN5cwGjT6mpjt0bN3NEUnVXV4d8rHNkz9Im56On7d8aa6ZXFdvDf2Z3mXL6bz4U3zIPZljkAE6MYQKbYntuGgeOUNAP7yYvjgnSJlDz+DIpQCa0UrzDBz9DOw84k76tKz6afHyQTaDySmhdrbNqGHg1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8fs9PyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8fs9PyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E09BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750202393;
	bh=TmIsLDhC3UW05ySsohKpujp+Sti9W2gRN/wnjBwL71E=;
	h=To:Subject:From:Date:From;
	b=k8fs9PyTj+Os5becm5GFjGTq6cxcTqAtFIFNcDa7/CqHlTKURzrp1At+Wu78qKZzI
	 tCzMDQi69IC9jrfL8Lw+33TtFUuJkHna0XhIaeSaJwW16v2URI3tM7HBaEGwwenQ20
	 xg9jZgc7qNvdV36HAlxxGU4dDlRQeDlP8k+/88ywX0zjUfRKk/yFM+u4fS2UAHtCV1
	 Dj2vt1VuMvUoXHAyPsMdzDDYSev2jnAISDw49cww2ft78YexQzT2tqKSTfzkORmjXM
	 iAOAdRuCyoVD16EzW5pcN2Z77bhjFDsnh/hWql9cbrtAKVlBEJZqKyKl8vDOygvLDI
	 SPPyO0PM7cXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F066C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020239357.23870.17491109261873334497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e833e4ebcfbfb3044b0d9a10255fe60dc69cf68828fafe8702c71456a79603b
Date: Tue, 17 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750202393
