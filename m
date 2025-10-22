Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA171ADFFB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761175195; cv=none; b=WoUVMoAywIMX0J5pfMCCqf9GD3H/PrOBzrVWTKa85N6kyFaaQPVJBN9yomo71oIoWbLxg7mC1NGSgKNhRJL8+xITXrtfBgwkVAESE4AWFteMHd0PzryF12FCsTj/4sKvqFXe8wPTGkI4oULn7qVA9448GZONtxdFPc2RLZL2JJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761175195; c=relaxed/simple;
	bh=zac0LQe9O09VAu7CX19r+ZQBFFs4lXcO30oBD4WPE/Q=;
	h=To:Subject:From:Message-Id:Date; b=DZO45ZhJjOg8F+/ibWtFkWhwN+ga9dTygKWvTdfNIExGm2YPOj815pPHcxXUok/qsBfGhkeGGvSyc2qj7rpZmLd3x17MRdM/JCbqXXl6ua1lRYdC6uY1UPDvHvdkpWU9NxzDFgfjQ3tWKSTW84Rid5yBOR/Y34GpuJuvHF82UQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrpGVR+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrpGVR+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E25C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761175193;
	bh=zac0LQe9O09VAu7CX19r+ZQBFFs4lXcO30oBD4WPE/Q=;
	h=To:Subject:From:Date:From;
	b=ZrpGVR+jd+fnmso5MO0TT4evvy0iJO6HW0AX7xIItZpRbbGsHg6QO0MxnsNXSSp2n
	 HWhWKNuyjj04lem1TKLljnpsuHKFd6vSIr6absIsFFNqLIs1COhS0TCzp0kE9VCyjV
	 QvS6Hb9niPgPRvgD/Wn3sojSQuwNE/JHDGtDkQCnAKKk/+dYcjs9lVs9WW0n1VDf0w
	 9S6ZLBVUztAj4unyqgZyaP2767s6HocKHiokPGRh0uNcn2nEZMbGXtLjfESngh7LLb
	 CuLsdeqxp1ffU+X22+dElp1Tg+cKnktH8SNUJ9ThBTuiWQMsQtMFYRF7YD0d/pM/Dy
	 HDCoZDbn+8jgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C6CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117519358.25445.4783952949388219112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9969174b388ecf8b01df079312bf1855b76c0f6342ae4ee6ae2921e6c3a6736
Date: Wed, 22 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761175193
