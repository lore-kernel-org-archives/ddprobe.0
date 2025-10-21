Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3426346E6D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761065993; cv=none; b=DkFb3NQG/JfeCejvxtvnIFHdDyt9R2qRPz6B/k4WeNVm107yIZ5pDjIurDbof3Gy5WGpRevMw6ddhZHB1y1qMHgYi34ywdxoJ99Mj2Ve/mnBd47bFc8kBYelTDw37vXjtP5kh6UbTQNMDxP2qNTCekZMXuCfz92ZFG8NoqbdCOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761065993; c=relaxed/simple;
	bh=KN8PbrP/ItPmdgBtYCyD4ci7YFrGetkFvI/tQhcihk8=;
	h=To:Subject:From:Message-Id:Date; b=k1puJktJ5nUGMmirfrBwgDEm2G9d/i9UlFeIS/T83aiTFSGlfovhfmxrksaEWYkz1Rnz0lJxDSrWNxAxP/fdP5rF//8UcxvRexjSxsf2R+cLGOW//rht+6qWfcI6oIWnfKAE7FIVqhiopStdxnFAj9itFFuAPvmZ0he8ijz/Ipc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUpt/ANu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUpt/ANu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761065993;
	bh=KN8PbrP/ItPmdgBtYCyD4ci7YFrGetkFvI/tQhcihk8=;
	h=To:Subject:From:Date:From;
	b=iUpt/ANuADMKGHMtlGWXFudNKdg+cpKyIvw0YOTBoSUXiNXRRpKZwJehNV0QqEM7J
	 GR4rmPRRjHwybjwHnS/UspRwLGxQYpQg8EEHqF81ptX0TK7pIVQxzju7FnGv6CN2QP
	 BHjblLnqRbRWp9c/qvZtkOLG36jkmZAMAYBxDrRdKs2cBUgHI7lCP5s0BC9+yV7bgd
	 wgdvylEofOpJgUo199hMzyGTWWSI+OUGq672kPI90Zl4Qk/g8pZKS7le+u09TwbBL0
	 xlIhfvxdA2113pPicgzgvrsJ224LmAYnia5HxD7GOr4RhVIs7wkbtlJb5dODA7JgRY
	 RlIwXK/B0SBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93253CCD1AF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106599359.13720.16211828366448119913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52d2d3d6dc6b11f10628adf11ec44d1f357e0bd793f5379718bef138b5d865c
Date: Tue, 21 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761065993
