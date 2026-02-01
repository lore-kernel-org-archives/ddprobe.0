Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8B93EBF39
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769927034; cv=none; b=RKItQrRcCMHBXZIWemSJX5lnM2+r6VHJLwfohYyV+b7P5pwblegOVksuIuIbp1He2/T9xSwChNqWy1eHLVb+GOiSuXjxSc1SAkMhezu40vxn8YsVXAdZJtiPgA0JH53IT7IVhCVQLHGSCzpTiChXQpc+K7voZGRq3W6DtBEZKsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769927034; c=relaxed/simple;
	bh=KAjEXdh87ZXuOA+hwXLgdub0NmIlVklIfkoOvv8kqq0=;
	h=To:Subject:From:Message-Id:Date; b=M9Plza/55c8KgpafYNIu1cy/p9AcJMQeTJl725pVaLkOOxdW8MpECUo/Kj+T7Pk//KHvP7ZXgI1wTrVZ6CcTq6G54fJ7Q6IJyS8vFgYN8OMs/8aHxQkPt/XLg2L97hVda6KX3gqNUbYEIsLOKLYzEw5RkKPA8p+uK+ulIu264Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZjnKJbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZjnKJbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A948CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769927033;
	bh=KAjEXdh87ZXuOA+hwXLgdub0NmIlVklIfkoOvv8kqq0=;
	h=To:Subject:From:Date:From;
	b=YZjnKJbPwf6qTLt0R6jyz6HxveXgZWQewtBISBAErq5njsSlt3r3Q3xxJTGH5w58C
	 Ap+5SlEvUVIpqomCbbgYHINYS/nwhzk+9NvpaKrjnSo18hDqWIpbc0BM3KmfL4KYTD
	 86sfMRuCTs+dVY0ZxU2LfncjxrzkmChaxljALgPsJY7OfUZcN+qLksor6gaCkSMofM
	 SvpiWuxYP11rCY645s5jzidQp23xPjLSEczil5A5Iq0koa6ECK5O0Fy142HWkygnML
	 II1JQDIl+cb5ZtGUrFUI4uTJqiTAd9L0WyWt4OJV0GFJypYcA91vyTfSDd/D6Hf2A5
	 SX60V9FMNRBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BAE7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992703358.22431.313000821024004953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d43e1d9ccc4e021c965c507e451ebc56c201f384041911a71281ac91d13532e
Date: Sun, 01 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769927033
