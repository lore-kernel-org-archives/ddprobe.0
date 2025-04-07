Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32120219A68
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744052395; cv=none; b=YnQ9vswGBp9e5mWN3cilBwPPXofQmae81CXP9J2H2h6FWdjHMXSgkd9C9EJKKPCJIbssh9uhi9vAl7lKYl4z68OYqW68GCqX2kjgZHGLtED6/9dHR4PSM7Y7Wfe3gt09k9FauFPIVXVkub8RdljukAf3lS5VYxsE0oQ5dKT9OdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744052395; c=relaxed/simple;
	bh=gIRUQa/gt6sZvWfKq5SEVYp1JdWKytfMRX3VA7mOaZA=;
	h=To:Subject:From:Message-Id:Date; b=cf+sR8eUiDGGZZaoA+HdFdnu5znVGa9LWXb2vg8FShIikC0CnAiupa27iWKOb5DjjKC4XDuM8WF87O0Miw3jLh3tShvDjDT8U+5QX4dq4lIPjZf/fKdF0JJmB8oS+w+cNIsI6oxIBI+Jyk0jxzI+DrkUwMk+kso1435eIG/Rpdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQs7+7bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQs7+7bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBA4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744052393;
	bh=gIRUQa/gt6sZvWfKq5SEVYp1JdWKytfMRX3VA7mOaZA=;
	h=To:Subject:From:Date:From;
	b=NQs7+7bvwbO5qQkHzS+R+9bbdWUsUzaw39BX8VS15dIQB2a5FDB0vE0mPTYHwiiMh
	 LsfaRlVsE3FEzEeQw+S4BIdw/UGunez5M+TRKBUI8uLQvVnO0QlVqh0Q5HLCMbhZhO
	 ujf4Ss6vYIZHbdWD0FY60UylFXZXoJSgG1dDqfON4smeBr2FoztUokZYj16OiPiux5
	 /eyzFqx9n+8IdRG5pPHFRgrPo+NVe3Ogkoi97mRSB5dzAOWPQNudqLLywTMj/fYMF0
	 Ll6jo+/8ZelPL3fnYZXLmGUAp9BD/LY6g4OzFd7k5y0zyamgaRTACE83UgSC2/SRPF
	 WUyjA4nFs/FJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCCBC36018
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405239363.31805.7713466886011890968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1b29f69ec659e28e23009c84e93538cef510c99c1c42969b6b7163e0022d2d
Date: Mon, 07 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744052393
