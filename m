Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D9733EAEC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778449834; cv=none; b=p4qR8CcazWcOQYZ/fahoPgiypob4/6QRVmTgZeYDm3+GiPtrXgdqRC5aDOPqLW12NFvQilg1O31wiruBVf/sHxKUn6J+6U4VsoxUOudW/sppYm6DFPRfvP4opwpTtZWEiQV5iZGq6ex+QRO/tUbE62M9//TROko/M9un3RbDRFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778449834; c=relaxed/simple;
	bh=4YvzIsAZezRydTMcD3aRc2ZeyJW5LY74G5CS8JOEuvo=;
	h=To:Subject:From:Message-Id:Date; b=kJJ2/u5K0MO+MG5SzJLCF+FNW4u4yBcc1L9ghqETsqKNXF51B7bOUS0IB8Pr57MJXaD8BWGVEJwlSmJOH1S72N2hHJ5G8MZQpo6YexNqy8E9zXQf58xivc2XBdxRLttX+KhalisCm6amZc/lrqFfB9ksG8LX270ZvdifFMzjo/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4yJrMav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4yJrMav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DA8C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778449834;
	bh=4YvzIsAZezRydTMcD3aRc2ZeyJW5LY74G5CS8JOEuvo=;
	h=To:Subject:From:Date:From;
	b=A4yJrMavOgJxh/FWaBGx61pZng1uaIvsK6tfJUMy+qyrHwJaRH5u7cRYHPmFUpbut
	 Zo/YG7y/2q+wAwagitVRTwOr2m6imdUSkHsQDXYH7QiTLfcU+BHucIisoftnVraqfD
	 /WyVbQ98zU72SyPJQUaR91ccRBQneytgT8A554+/vlmf0ejq2jAboAPCRfG54Splpp
	 K+GjAN0AzjeKL8wonV0cWBdqDixUruCzVhpyyuRsftEAwjBfQZI/EpC6dwc753h65e
	 MaVQHMyWDtFM4VPepVfdTYHQOqYDx2qQSVffzgM1cjeW8AmLThSn+osqQHaSv80PVO
	 UTt2O09z3BXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBDCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844983368.21412.11714110946361887487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319bfb6e944e570a5f4509c6586da2baeb73bcf673030acc43e737fc98de301a
Date: Sun, 10 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778449833
