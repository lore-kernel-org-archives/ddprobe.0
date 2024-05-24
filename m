Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F7A37708
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716526403; cv=none; b=AiDzePeTvcnsz3WCpNqzPa7/65f9Yhgaq4F5KYwkpREslXKcPclfNMvNDhVTwu1GtqxcJr8hFSjJkleOm5cBBfN2sbd+9bKcBo0eTof3lJqGPSU3KDUeM7cAYj4DEZuWB+UbqXMBHxkEuktLBighuMO0r7J1RhT/HjqiKM+p3pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716526403; c=relaxed/simple;
	bh=qj7ugWJ/I2iRpMAfvlnOMIfc2OoEkWtofO3mwzKcG/U=;
	h=To:Subject:From:Message-Id:Date; b=Y+Z6bhUn+VUFuSO3XbyGQlNoBD406whnTUvaRW7qELCGXeCoAxjbQV67gT/BfEwSpXqvPU3x2ieuFVL2BZP1tlqFnpSJxe2wsqDmi6C0Ci4m78OL7AFtFwsdEQruSiB0b7lGm8pF81H7sP8oQ7OqVmO2tqG4uMhYcKSRFQ1u1Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtIuL9iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtIuL9iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42BAC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716526402;
	bh=qj7ugWJ/I2iRpMAfvlnOMIfc2OoEkWtofO3mwzKcG/U=;
	h=To:Subject:From:Date:From;
	b=VtIuL9iQeRGK0Cs0Crrb3dUmFo6E4lWxFbzVkaxsY+GbBlO6meKJNaVly0VrMIMKt
	 MyjA2eGo8LCHHX3eWUUBtcRWbySW7kddIIiX8Rs6Ma7JzReGWkwjJKtHD8qz7dDFSo
	 5BLpGo1SIUOGZ918sRc/IjKTgU2FwylbqiLc0Xg+5q6znqfG2Xk2NzVJQPfT2fe8Jw
	 6jD8K3Ux5OkKeyxc/sTUcSh4d0ZwAeHemUPYy5sjkJPAe2uv0HBW0EoyU+1T1TcPpH
	 V1MM/LSJniNOSF7E7TofNKVvvPAfEXZguDxRIRd5UKv4ifEQsjkcwYDawYRoCv73OD
	 QY+7dG+1rcing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF38C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652640280.25433.449209711134274237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5373bbce72bbb95a7729d81c5598f6f7221f83efe7d6b39086ed59a1b4bdadfe
Date: Fri, 24 May 2024 04:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716526402
