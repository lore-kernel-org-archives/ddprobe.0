Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2302D8DC4
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762585194; cv=none; b=F2hnlqD77kq0JG2pxJeMKxs+OR8Ns0pPtTa4VcAC/MKqTcgbg0pGoi27HdLWuAWDslY7JPOnzLx2tGo+bSejZq00mzfqfvMjaWmBhS4v9gr4C55Q67Y+zah8kBgezbFj63GJfDSYTVjK2OiPR6AcoqMcgauEwl2OOoFmxmA8MRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762585194; c=relaxed/simple;
	bh=yGg6O+Dn/1w3Ny6KF3aQZ436z6UPQ5Jsb4xjP/0nAZw=;
	h=To:Subject:From:Message-Id:Date; b=WNrKBIPQZ/54FPf5aoQTuHhlRGRq/AsTHoPKuxy46ezPI8QtocrKQcp4mF9Eq5MtZigHOzSlpfQP072gYI/oXdgZx6o1+9AXQFTvH87FLpZHquDWfxM/ocEfDGEm1yPdux1I3DPqNMfK6oYte9urpP2FTGclC77HKCQqfSIfNvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fESZlexR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fESZlexR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49C0C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762585193;
	bh=yGg6O+Dn/1w3Ny6KF3aQZ436z6UPQ5Jsb4xjP/0nAZw=;
	h=To:Subject:From:Date:From;
	b=fESZlexRmz9/sLIax4WB/11+v5EcmQUzdnZZr3/ESUVtOpLkIVRAz1BDeTVPcxU9v
	 A6dWUPNbFT5RW3qL7dYC3cT5Xsf8tmKfKnt1qJRp5KbYYFPTq+qPSPTUAZ26t4Kzco
	 mIS7SECZKYoi+my0teik51HkJSSn3Q1GmwtvjWNw8cXVNNXm4FP6HnyQNhTn9IgJ9c
	 1IANKr4vcoZfRc7hfXwDfMg1ta0c1+oQTGzR3jNKjo2MOUfTwzYoHFMwkamdODwOll
	 HS1qZfhrz/O7REIfAWgduudC19fJl+33p1PfIZbRg1rFsgccmOcAjQdeED7Io5AoSw
	 r7NVO+E4GPcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95956CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258519357.22382.10053674240347223972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dc0cc5df376c16e85637027ca5d556325e5c4e7bf28d599530409d19bde9cc
Date: Sat, 08 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762585193
