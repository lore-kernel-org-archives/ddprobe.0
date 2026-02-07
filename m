Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120551482E8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770489234; cv=none; b=h+aSlKYK38LFeEyD8ri6Uo1AuzSonId4Jepo7+fQspkYA+dt+Jgi945IR716pAnQSOhUW4UkXVdHv/JHeD5tJKELzmCbXH5s6U1fBwVNk0lUSb9ljdQFg3cyxqrWDJRCEnD8V0XFTIgpsa2/ZWzQU7ewygcKWI912bGGI9BqGxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770489234; c=relaxed/simple;
	bh=v0OBAYFFcB8jBjsG8IoC8lQp8KTP6JNUzs+eDRy4UuY=;
	h=To:Subject:From:Message-Id:Date; b=Qs74Cn4JUsUf24ifxdd6XVmySQBoZasRV19BVz2Fi1+so3nXwjXdGn1fh2XIVfExGtLdtnNBrBF6NEtC8DPqiWn9ysyhi3BR299cMU/syRHtg9WMvb8Ru9SG9X+AbuKYnICjJJklKcACIFSphvZSHtKRBnHFcpVrt9CgcOmDwp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJl7+L4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJl7+L4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA42C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770489233;
	bh=v0OBAYFFcB8jBjsG8IoC8lQp8KTP6JNUzs+eDRy4UuY=;
	h=To:Subject:From:Date:From;
	b=SJl7+L4oo0IyqtfazmLaygm9ASrGFWqt9CC+RxPw+b2q790K3tB2gMrTTsr2xENTs
	 Z731OCYhAE2ceONf5siivLPnJNTHDYp8nDf+zxaXXyzcaknll+rLgYrdcTR/xq5o5J
	 6FEPXD1Isfb6em7FPsX2rJqRTDsAGnkuMFek7vhClTPsPiue/7HH+mEHHYJ8nVT9bq
	 XZXUvDtl2cZpQ/T6x87bIL10vCkF/L92S4sr0C+TFm8eiyvvAMsYYIzkFLJD4UExQc
	 joplbDEjsdhxKw1+5CmWBB1EJTy2mK45JYrKPwSNKG+XfM9n/EZonMEmPO+lpZwSjM
	 8dS03Mj2fd1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B66EE0AEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048923360.27872.6805326095378491983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8f1598503dc1c4e9407a1965917eae5bc6d6c70a8a5e6684636dd5aab756ac
Date: Sat, 07 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770489233
