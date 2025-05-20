Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368BF27FB2D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747742994; cv=none; b=JOn+j8c/hPIeYVIv9nksJcaWcGJCvRZBsMip+9XI35KEXBSg0fZ/yGvZdVcR2FoCNpaECJ23MCAAkvzV+lN50pH4F+c9uKQOZlwd8Np8LSJqcMgbTfYxUx1fNK8rVKMScEAo1TVewma2hFmuEfINo+gWl7HtI29S4iJpkqKhELI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747742994; c=relaxed/simple;
	bh=LSk1k+FPQbfYD7CXr08C54cxH7jZjhjYUYUkeand53M=;
	h=To:Subject:From:Message-Id:Date; b=HEy8W6KrfKxN36rtvSO++qjnzzB3oZRsh0Lz6zuRQ7wKE25lAnQOBYDi2V3XWJ40gFlJvYe7QrF/znzgo3v8SiN8VdWUdYI1s/ceb2MuCArqtLOKpjt3wz/PdkYRdaL0DNy73GsuT4KyB8s53JVDCERVtvNDky4/altffkgyaGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmJxbLXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmJxbLXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A02C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747742993;
	bh=LSk1k+FPQbfYD7CXr08C54cxH7jZjhjYUYUkeand53M=;
	h=To:Subject:From:Date:From;
	b=bmJxbLXBWa3+X4xsM8ZXC1hr4QY7Sw0iW1LlSUXu6X9PW9xEkQMQp23BOe1j1DkD4
	 rO1TbIH4daHHq7iaGxdstRZmcBNIGUxpIjfxkjImxDqSuPLaNkJAYdSsxjqxchRxeR
	 t52ce+a2S3+djQLsQJr9JNF3fHLzE9IxQwA14WMD4OYEWXWIUWw5udhL3gautM3rCh
	 up5x1WufemNwQ5uaIFkVO3mbtzQLxaE9JM5aCzUSs3nXOtbBGcWWSmz/ANmsDWGXij
	 ZrpR4md9OpRbj7lZQ2bLs9LYHtev13nYM9+PyTgsWDNVWEIrDMeLfZ370iQdVrf31w
	 GGR/GLmk16LZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA2C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774299365.24805.17328356593502472877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4552ebd076a6bf6e874061b817a20d1db759f9a80c2cf77524ada57803b85666
Date: Tue, 20 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747742993
