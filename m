Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194AB1FF1C4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757113194; cv=none; b=fFYChCJgw9o0hKnKjC+14inzri6tQBtxlnXzHfjuoMFDtPr7bMAXKVMI+aJHwPrq/6JiSbNy7qmHrtSxSzoyggwLtoV1D8y+aceOkiTvOtA4Gqx851JQSK6x7QRz9g2o4P6yfKEcCIIKElKYh6jKNlo3hxTVGfeEyDVcQBfE8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757113194; c=relaxed/simple;
	bh=VWlSpqLcMsNDI7QElejbB49roDZH9vdQU4Wa7Wk86xI=;
	h=To:Subject:From:Message-Id:Date; b=BGol7hsJnZw4Uqmk9kcMCr/aSME2+30bi+rm68jUqncVrK1Op0WpBBUKZ+oL65yZzm9iRd1HNMOMWNjQBL4J602jC8INpeVC3n4eHgL4Oc4TvdrmhMpGZEUb7PztgNeq7zfijtCV4t0+JE/3TprbWfXXt6JBfDAY+txjAyjXSfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMHOLeYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMHOLeYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7256C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757113193;
	bh=VWlSpqLcMsNDI7QElejbB49roDZH9vdQU4Wa7Wk86xI=;
	h=To:Subject:From:Date:From;
	b=QMHOLeYG9UxFtIj6KVa+uWdpmTDsXQJudsOw1kjD+YguwrTOdHuzqbMzfUBupKa5/
	 RLjkJo3z0/vvSRZV2MVM1VzUmT5lFINvse/F96132dSK8Jir2XCFzT/Dim9OClpXQU
	 Xk+ekQRuyTPz5M3lzL9Q/ULTNuGzasTD3FWgaf6hLPcpMJvksImbbEIyAfA/6VZRoi
	 le41MBUNJKvBPNNOPFiFobiCkFH5bL0IUYv0glRPj1FOM4udeIL0DFGhtpOzQuQ0fl
	 y2dNJZSSgQYDHs0fCxmQY0kaX9p2xMF9aa+azMeHQB0XVoSVbEjcgZnnnKZk1K/FLi
	 YbpqRdrxLM0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9CCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711319357.14749.2954264270456683380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8b656c17c7fc408e359712732b79efee3dfa91f8ec7ec545cf818ce4b05a1d
Date: Fri, 05 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757113193
