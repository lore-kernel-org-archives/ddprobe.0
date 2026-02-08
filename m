Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDFD20DE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770542634; cv=none; b=TDd2UwZLTig/HzQ1E7ZNHKaANz2IdKr6FCah/peZYEa7TWlPZN2FlpZY3ZORKjKgc9nnDRwJw47E0puev/CxrLtUUaZak6/Wy8fXn/xEoAIyQ59/WArVrhYDumVpPCjvQi2SLvbdUxmeuQwMxnqamVLTE52CXUp0l4U/+d3zgW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770542634; c=relaxed/simple;
	bh=+IqE7woTatxx3kR5yTPHZEajreow9D90VWRNAhRrc9c=;
	h=To:Subject:From:Message-Id:Date; b=A6LDEmfZshF2Olti1JreXcdO4oCbtmuxu46dRFgb3mWbez1GwPuYmNMFglESIK+peYm1chlbprRF7gwSZuNdZnSR1gQLM9drZ5RZk6cAiDk1ZJ6Crczrj+ID77vMXiPRYeSRb/lRtBqtJBaGVP5forhod+vttVUeXYCuxZoNF8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMGjR5aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMGjR5aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770542633;
	bh=+IqE7woTatxx3kR5yTPHZEajreow9D90VWRNAhRrc9c=;
	h=To:Subject:From:Date:From;
	b=YMGjR5aJqQm4dukKXWdm+nyXxOnLX51n8udrXCG8kimcpzwgvbS/u6+0/tf/Fz7ik
	 MBK+Vf2Cjs2dOz4awbXtPJ7G6+g3fjkY6lBlidq2RlUniVzHFxqNeCSKL7ayo1g8E3
	 4kloiS6Qe+5aZIRho+daXEiV5jn/849EhPTwJp7AxfDWawP7wMBxU3+qgTICI/+NuE
	 LKSccP+XPgU8WHnLXP6mzGCOtNRPUtUR47JehsOWFTIlPl1wCo4pJsn0XfLCvZykkd
	 9OfSJNSAchhLAMravS6s9AI4UzHGhacI4S0XnT97O2G1UzGUNmoLqLIw1vTnpEtPei
	 qoYutAGIYgfIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98236EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054263358.19923.3346154657285964600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c210c5117d4bb8b419b3891bf088bfbfd4e6cfa0573b35bba37cd5a1acb7f37f
Date: Sun, 08 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770542633
