Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4CC50095D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768697034; cv=none; b=NDU8QWstzB5Sc20+Y3EgchUG5HEIWeurmg3qjUNgk1OYHC63hmQ5aR1LVO6Gt7LsMLfahRSfEzYwB1s8XAI/DIHggCkMUJmYlJd2ACY5ExL4R+Fj9/JOBsb8FfO+6AfKPehaW0LRs0O3a8Q2qVpYQT/mAAswLbssd5+jNJoHTbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768697034; c=relaxed/simple;
	bh=ifMjeiqdEJwST9TW0xgxLEfUQ1hagEwhpX8629xRTAM=;
	h=To:Subject:From:Message-Id:Date; b=hu7vNXapcNGx3v0afs8MMVq1+83XEnCfMU0z6HPABlE3+hRdaofCkwERhnqjx+f05ONbTuvZY+p2VnbTJSB4OSsq0tAyFt6bsgvmTK1vBZEF7xz3ObjY2jJCiJxlEe6MEtOICc1W6RH/1ojNqSazP9T7XbeeuAXbf+++SAUK3vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jap3Lz+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jap3Lz+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A296AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768697033;
	bh=ifMjeiqdEJwST9TW0xgxLEfUQ1hagEwhpX8629xRTAM=;
	h=To:Subject:From:Date:From;
	b=jap3Lz+lbELgylUiD2HL1Sx+H75P0swSwGZW+eQwmhhwf4V/Bv36vxvkPYxvsvdKu
	 BOVjfVC9w3MU85N2LelK05C8GorJayN68xbze/9kG1QkOcZMajwbv3cDOLs/0SHjm6
	 MyiS6DrRWeRRdBTAGaH3eM6AnSrb6sZJidEx9/Flro1TqK+MdPvCXREnlQPeh+PW3k
	 32C7hvXWi0vTnT7xEFNV1cVu37sCqflSa0RLXk13LFcCmyACnck2kp61Y7gE/53qHI
	 N5aTS+uTc2L8BTTEOrBMUvER/hOPl5wC1ATpG7GO5kwyUBbidKv7cfFNYGlPFJgmrQ
	 8hXQcpI406EIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C3CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869703357.29242.10433685820506846657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5fabc5df0160bd7a7cbdc121bd7fa1556e8c3db8990f9e134a9c0f9c939289
Date: Sun, 18 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768697033
