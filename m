Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4951F17C211
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748552994; cv=none; b=MZsDdHN5dYQt39eTNjT8yQPb40g8fcPQ4dn0nvi6kJEE0/pkpNg71NiXxkKv9jrwUSItus5jLaviM0QkFmSP6K9leW7JFUISmInkJBX355r0GnAvyGLVn3tnKD1xgM9Mejw1GBXwob2vbwk53X89Q731tAr6di2nr8+/kVaC+KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748552994; c=relaxed/simple;
	bh=yh8io5wBEgPwRX8QD1pc2jl4i8FnRzHtyr3V2iiqO/A=;
	h=To:Subject:From:Message-Id:Date; b=FVopCqLTzJl97lsKyAgVgb1yYxnXyeITxWpFFUWiqegnr4dGF6tdRdUUGXNX3irLnKdj5tfaz9e+yPGgEjgcqlYzf4KNgzIAGNQBF6K8UP0waKNYFdhkSjASsdhklHmT1CszF+Cp/YIy2UZIk6+nlb2FRkVGk+ohmL9W4VXY2KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s731mlVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s731mlVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6634C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748552993;
	bh=yh8io5wBEgPwRX8QD1pc2jl4i8FnRzHtyr3V2iiqO/A=;
	h=To:Subject:From:Date:From;
	b=s731mlVV7qswmpteym1/fXOwhebA2y7hG8WXylw+tHPWuDLofV6qXeptWyUO3HDmL
	 L2nEKt7ofS5aXUXu2yP8Wd1ZfnQ/D/TAN+3ne8RBOfOiLYAJWvBcjVoRjXYlrPBaBJ
	 RL9rA29oCqRUaamwBAmho/zPjzNApv2v3ZFMJh8qDCPvvoHBtcWFLqeTv4FkcGck4r
	 91fZdV7PcuiuFqgvCVfg4mEblLF3ux8j4SBp3LX++JO3WOj3KyTAD6T44VaBD3pvNX
	 UFqH/i4M7ssrmPTgvfCY5v+MEL50GMLJB7N6h9YY3VeNYJsoOKfUiSBIxEb5P1a7yl
	 zfwHCdFOA1csg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95727C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855299357.3810.14846347904091164133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a335665922ac59c6b0e5d5d4ca198be320646d228105ec30bfbf8c032b497b79
Date: Thu, 29 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748552993
