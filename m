Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0736730505F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760474994; cv=none; b=PAuNq7s49uK4dYeRiihkCXgE93cRjgaODJBMgBlpl5boFoZtACRHNCt+cI2s8WuayU3tkKKyfh1UvdK/12e9If1wlLnc8E8rvka35vCmI9aFXpiGjVu9s0H/qGfujHKVHHbcZ92KG6rN0Ka8krOmVNa+lKni8XhkxsF4wkTpRFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760474994; c=relaxed/simple;
	bh=d6AhoXz41BLM1vgcR4VsEzsvFt3yAcHb/BFhogBJ+Cg=;
	h=To:Subject:From:Message-Id:Date; b=oYEuHVxgP2da9pzeaELUgMzfqiTvzDemtZLW8eMNfs1Q1YC4+HwfPiqz2HXQD47mHnr0LRWXVZOOsmTCiUBukiz+7Tb1+itaByD8gvmXBZjerfiReN0ajY7tol9bHpMJKdzf8u3Ua/UYWaCbmtrqMhIGjRoF/5WDphEA8i2ip/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yl4mIk6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yl4mIk6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5243C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760474993;
	bh=d6AhoXz41BLM1vgcR4VsEzsvFt3yAcHb/BFhogBJ+Cg=;
	h=To:Subject:From:Date:From;
	b=Yl4mIk6lwZxEj5qIi19wBvOglvwqQfThswoHH7hZpCJkHMX9QKBRYDPbOm6WDwpEt
	 trkA/nHQPUOvUfqWe3i+778QBuYKDhgr3H62u/5bSZhYNBxzJL4bsjNhlBu8RBYyao
	 /+3C+ETD9Xa3ZWegqdangnRAYFr9APbz1Oen+aey9f28a/TYkqzO8P8KrNqkM50hfQ
	 IBCw6yodQkskoz6C/eEMVDEEKz83de2YWPbkLqQozKquX2CsSqH2cO0sOdkm1yInwH
	 dROqO/idhhHR7xBVrTec3OSZtorN001rbqVm9ImLhYxMb+ZCgg7O2E/YKmToBwoBNU
	 TyKtAlOG6ghiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967A6CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047499360.14447.15954993295690112006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739e41dfac21f173dcffe67e1675fbd3b5f60dbf8b8ed7d8ec0df6d166bca14d
Date: Tue, 14 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760474993
