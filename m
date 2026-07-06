Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE2C35BDA8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783307314; cv=none; b=ADj+9HYVb57IYMyYV6ymcqoQPanB0b+va3Xz1cwCKRvry3sI/kOyY1CveEUuaY3hLqkmhYz0uI3ND5zyilB5bxTC0PbfvFhM30JE1zvd1JR0RdXXRaV0iuISs1eCC0wi/Mep0LQNS60VvUvQ4o1bqktxK78UKw8owtP9/EmMa+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783307314; c=relaxed/simple;
	bh=JyIgvROYbHP3glu4dKRXWyrN1YL8Ru25GiZNv9kkOG4=;
	h=To:Subject:From:Message-Id:Date; b=Jh17+E4G1wtxS2xsKFTu/ZKxU8XwM69aPBr5zKZSb5IiNf9UMGTczMOPt4YX20ggh0V7dOt2KjT7Jw/JCspevj6qh2WPqI0jKIY8Me3D14yhJGrYluj313GbG8sIn9iN2CHzd8c6pq5LltiSA4C6B7FT8mCJ8FWyZpHfNlxT6Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii+sb6KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii+sb6KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6EBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783307313;
	bh=JyIgvROYbHP3glu4dKRXWyrN1YL8Ru25GiZNv9kkOG4=;
	h=To:Subject:From:Date:From;
	b=ii+sb6KGhjpdGCFte3tCqlsj1UO2orCaqChxeICFSfeBjtcjpXHjXfBMxGsy0ke0r
	 MVg6iVX+KXnc6m3nkCm/+oeIrP8TBBx2f4o47M0WebM2MTkMRik/TT33nQ6sjxHZRQ
	 akI8K4uzDv91LYMx72AvJrE68T6McKXJJkxiThULae3C/+lxrfG+jSmyun9lJvqxSB
	 9ehNJVleIiVY8CMCLfLc1UPDaDNVe/0/sSEaPSaGhAqg8z5nwuLRtTV7mlZ1s11HIx
	 Cy1uwEAygTe5cfaTztXST58/wjztKwEb4yFXKioy0TIVFQ0rOlGCH0YL2QJFhv6+LO
	 VvYl/dIMBxaVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC7C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330731368.10843.13804343274789880957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebaf5df94770ab492d8008956bef395b26bee20e51880f632e8f1d3f6315e2d
Date: Mon, 06 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783307313
