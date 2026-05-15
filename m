Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE40D2949E0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778862033; cv=none; b=cDoK9E87ADTNhqxOiCankYjy/VlAe7COrF33G9cH+ibmvp/1iMA5k6EPbhr+6/UUZV5TdUDyyUBWSgrEb67jr7kiPOwuGPKcom3wBYq7kcDq8i1mgHMswL+SMXuN9wng7Qbpy55qROZ66fsPVIcSSZLv+14m1PzmQI/92a81Il0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778862033; c=relaxed/simple;
	bh=xuWEgkghWKWkaXnKN9OEY2tppJg62EZsZ7L0305b0DA=;
	h=To:Subject:From:Message-Id:Date; b=OWHnMHTmt03Uh7xG3/eTt5iRI6uEjVXsEefA58bVh1DwIY0TEvtwh7KNTwTsxjcGbp7YOz3ykjLK1ffcupGxx6r8U97CadMkK5mDrF0vX5d11T3Ripy/dYYSWmKBcQYf1dltunNeMzTig8qrunA4ulPufn5tBboq/J2HiP/Z+U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMxMGRlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMxMGRlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABCCC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778862033;
	bh=xuWEgkghWKWkaXnKN9OEY2tppJg62EZsZ7L0305b0DA=;
	h=To:Subject:From:Date:From;
	b=GMxMGRlBIr9VNNcgHgyKKZ53TwCFPmSEn3sniVgMJqS10tOPfk3vNKcE/sFO47cdo
	 +s8ZiuLoa25AmXacSONzbxpcZOiHDh2yctMPmmzdBBto4RpXnqjxvll69nDb7irzp4
	 1Gzx4qnB8gjzICGhH7VBRxNLTwehmPCPyf2PRN9j/Oi2s7shAavw62qh3Twk48YUXj
	 HTvZKYGxrMSLeLcxGkzjuPaQHFR+Xl+Z2WXNeyTPyGnoXXH1B+DnUxCgxDEC/V0M2L
	 TiA32e7hEPL9+ignK2MR5V0vEJEYkEqPPo5KGofp7aOv/g2GjKdo2aHM9qe0jDlZg7
	 7T218eX3dI1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F6CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886203369.17682.7597282259715255424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc14e1764f108b336e51d61c5b8bd9f1e4e9651ff3631a3d45ab24d5da5c22c7
Date: Fri, 15 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778862033
