Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB5427F173
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746533393; cv=none; b=k3ziKwJl8OSIW0lOk3Pl8ZCqENcf0IaIThb6otwR/uRLZdD8yki9Zk9tzuuW7sg11whrUMv/hqs8U7s7tXqVzaNQhfKA+g2hOp286GYNiSL5dKYjqoBMhOIH2WJrT3Voo2Zo2rlINQZxBU+ox3nVFov6nuYdEwtDE8E/pAHTWwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746533393; c=relaxed/simple;
	bh=0RrqxlaPZXuBOSl2brUDCEfABIqPLpqdrNyjUXniLy4=;
	h=To:Subject:From:Message-Id:Date; b=USV46DpU8vL12WWYJfaNuZoFQMQOcFOBFFzhmwt3c55Y0YwFEYAH+3yRxx3sLWpGXqbVhhenisH46Iql0f9hhMYDf9YwLBR29DfaWX4xoZwyYf1u1MuleqWxQLZfbeS29axS9ZyhQNL2hn6gnbufIhQqoB9+cA9y5jzzCDuNcoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5lvcjeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5lvcjeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC39C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746533393;
	bh=0RrqxlaPZXuBOSl2brUDCEfABIqPLpqdrNyjUXniLy4=;
	h=To:Subject:From:Date:From;
	b=s5lvcjeBOc6JChVf6Q/Ool1c+t2TK0RVxPXO7RBcv1Gx8AO0YspxBQHcEytKAT/8v
	 wpWYZkdSf8ItZS2iZzGY/8gQ8sRX33u79M3b4aOmpb7ncfmqnDgpZjfTzqIh20Bbxi
	 ytnS6Pmemh1w4yN9xoVXJhQ7gV8EaDanI1yWQ7WxqYTsIfCgrNHyoGCVqGFGA/w4Sk
	 I1FjTbNxKoHd2+cCVkvmZuZBgHUUM1Jf8tivthdLOD8yozoYBzNXofOrG5yEjjXdsS
	 PIx+tpjBCJo3SA0SeX+rJHzSlsWNCN33X2Bp7e/Sg0UDlD8fpuKWUpbFYu9uj/pM0g
	 HKe2rvORSO6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653339357.30372.16123345789288334642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cb19cfbb3ff037eebb0da02aee9f04d286a7c85ea32d2d33f49b6b73be61e5
Date: Tue, 06 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746533393
