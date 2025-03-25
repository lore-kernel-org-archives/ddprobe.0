Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5651625BAB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742915994; cv=none; b=WH48jTF1MpMrLZr7kq5D0WLJYm8dt8PmHtCVX0+vnHvIyWrkDmibZKnA1+dlxalrV0PZJXFGpgRPQinvrofX0d29Zx8vqqpSGqSirygo4F8Y/K5KkpGvesdb7mugUTEvCJ8CUJ2kyksvlQ9/MMG62uFrsixDB8+9Q4w3zS3Jm1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742915994; c=relaxed/simple;
	bh=3D7kYT+ZwpB4GQFmRvgZsbec2XII0N45+KdRnbN4T30=;
	h=To:Subject:From:Message-Id:Date; b=Jzhhx9yC+U0GK2y1mxcPFuNRYiz6gDBDKwqA2qxgnSUWmyzcdmLgyZEN61xr3ApqIMH2xsIjoLLiiwP2I7eEzONZl3quo6hTRPULG8z35GoaE4pZy8ARJnefLmFz+TAbmryshIw2RbhC71AcmhNANitK6VF+cjcY60zF3vtEqTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJXhXhKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJXhXhKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58EEC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742915993;
	bh=3D7kYT+ZwpB4GQFmRvgZsbec2XII0N45+KdRnbN4T30=;
	h=To:Subject:From:Date:From;
	b=RJXhXhKGmsd9iBmAxUubJIVfWp64FMlWT68KZu7KNzV/ZMScx90vqPudelH3m8RhP
	 7lHlVZpyeeB4ZMLFwUZRQv40hpPkecso6TefefBuie7tTOQuO8bd8WWJvUfB54wZvI
	 9j41z2qo78nd0fSDIi/F7r8EgUI0RyCU4h8PuMoVoSYasKgB/NgA8OnHxKxYsRFhp6
	 m+R2NS9uKV3tAodU+QTqCKCheKF4MIUvIxmiN6qTnSN2qGRLMHRuATDzQBU6mOECva
	 RQyKNwPAzA+3wlS+U7NI4xrTKnpi6+nDRv3TDproRGImgNyyVllAfu4yLbsCeGEpS9
	 m91J8UJcvaoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B218FC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291599371.29253.12534923019467922719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7ae83090686a9e0976c662a624f2bf8372ecbb00a64302aa643b258151e203
Date: Tue, 25 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742915993
