Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161FC31B825
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147174; cv=none; b=DGoYzli2a9LrXOMENnuVG6AnKTGcX3QI5e2huu/7T5vzvPiUI4qLuS9J8fQrarcjCsEjf+WowjiDHxThmWl6oge3vB4VXeZ9S1j79Jqugp6wanaPhBD/zjRGfw9XMZOUtmFOXWPxr9y0tcSz/cln4UfNHfk+vx/KyI/6o+EkpBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147174; c=relaxed/simple;
	bh=1SPd+rBg9gaNRmnYnA4a79ZJPbDe5zjbrR3ACWxjaTg=;
	h=To:Subject:From:Message-Id:Date; b=lirh4DWpz//C1F5c8+fwvjVSbaru04/+SxemJv/eFqXGw84UM8rE+vOpxgUHBhCvgDyrND8ByQFiROFe7O1PAQflXv6A5iSnZiKXBZlYVFRqwKfI2jDTspxPgrp+RpcB/WuFd0CoT+SMZyEJGJH+VrPd4jLrfC3ec0qHRTwXjYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbkJcuEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbkJcuEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764147173;
	bh=1SPd+rBg9gaNRmnYnA4a79ZJPbDe5zjbrR3ACWxjaTg=;
	h=To:Subject:From:Date:From;
	b=cbkJcuEsrDsPdbNQBBCiP9BDr7CMdYQ3ibgvaUrVmfK3RHliv1IaC7R3JAe+pNaps
	 APojwYaa6c0gHOKmk0mVc6ErugVGihsRtn0NLLXWhzW1t4E/svM4eQ/S1ad6DB0Lfr
	 /60WCtfPCkMSbUNWZMWrhBYqXptcMyXMbFzwkRtBphSbRu+oRbh4ukhNlKHcOSoL33
	 lYWKDvfVwT2DVwPqQImJp3DaOcDlWcRy6qn6bk+BBzv11q5AZ/emOV7SDhTiLHEKvs
	 9eUuvQXQ/ohxUt0Y7kLsF3c8AbiNSYn8oJ6HCJyZgqll240pUB8dUNrQHnMkjo7MaE
	 JZfL5dLlQCyBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A60D1038C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414717359.7911.9015560421807267158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c5bfe4c8204445d7a5257aedf6573c6d2d031b56055e7a4c25fbd622521052
Date: Wed, 26 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764147173
