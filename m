Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1313F72602
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759059594; cv=none; b=LrucEGEQq9NpPsQ0nOb9CUZpLOkXFEG+JbkbAtcR6GeFNE8qquM9EoLNgaskCdHC8qGYhyfgteavUKCVPbCibVf3+4UZwkxJVkOlKM+zwLZDGK830+GRrltXFzP77I/11utUSF/su7w5jjJv42OehiFK47qP0uDfnNlVnXqXjbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759059594; c=relaxed/simple;
	bh=oROCBhz8PkhGSDnywkYX5BjmvvUlmG838fE06sfXoiw=;
	h=To:Subject:From:Message-Id:Date; b=q5o5d5yay3NMnMcxUO7PW3kAtdBt5HDKYOngHUH9jPbredZlDLCy4ExAQCb9meV7aD6R0AOJmnNxSQy+mD1lmziIYkhniGYaVYWNUJgG+FjL1TVTmg/Jt+2mMRt2wx/PFLtzKS2SkSmQqTjAzvJMQUTSe08e4t5yD5TElW+gRws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9tPlFPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9tPlFPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759059593;
	bh=oROCBhz8PkhGSDnywkYX5BjmvvUlmG838fE06sfXoiw=;
	h=To:Subject:From:Date:From;
	b=B9tPlFPaTo1QIayGw3yU+Rj/8H9QfrAi/GAftxV7gL7lJZ6xxy2M7arQ3uC8ar99R
	 tEmzy6wza2oHf7DLhxKX/358kcechg1VvA8eJFOLbQwAhc2s6E1Bve7HzQurjeAuz9
	 jIUKYFXI2fQZPmhxkUl8Oa0mn+E5/UAXRZHo805IWegLT2oYP5agDZuxqEZBE2hSSs
	 0TlLvrKfuTr+9sNfDTW4MCcz28Cpf22jhEz+5m2f6onaCM596o1UP8d0LprFmVTz1g
	 TyjQLK7bs4hXNHW9KGfYI/qkpJ6AdwCso2N+uuriTKow5oq2Ix0zibmN/Bu8QoMESc
	 qVlDSiZwSAQMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93457CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905959358.3256.3814786579954348232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0423cf7053008651882b925ea2b3d42533ec0f47e643177f41559885731ffc
Date: Sun, 28 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759059593
