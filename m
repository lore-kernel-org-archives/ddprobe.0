Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369F91A8F92
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734078954; cv=none; b=SEzvUmCUA9JqrNadupYPw8gC6Gwud038cCFrrraW/fxUQxbAhOE17jq5yAO719kjSKGqS0VYoid8hiWyzm+OcBrmAJsBsgKzRwRS5BFpOK/RqQYPqNLCSay9hvENwKLBYX7cZcj4RTtOegqJICgCnuRJbhOUa1kbZr8cEyvFuWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734078954; c=relaxed/simple;
	bh=jXMcZmcQU3Vk/mcOi/MIadSGg4ADfa/auMR3HIQThGg=;
	h=To:Subject:From:Message-Id:Date; b=f9FJMTKYCgDxsE4fVCpDTTdttBBqIkLJrog87WjxgbHtXc58jpS30op+wWHEN+0oZVF7KrUVJw1VkJdovqCfecqJxyceyrMDIqYNhAoN0dFRl2dytIRbE7nrpMFJGeMe6M0RfyPKCKIm2U2wzhk8ZJm974FCYqvycBqcgyimazs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc+UB4Qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc+UB4Qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F1C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734078953;
	bh=jXMcZmcQU3Vk/mcOi/MIadSGg4ADfa/auMR3HIQThGg=;
	h=To:Subject:From:Date:From;
	b=Lc+UB4QcW3zx8uZJ2h0/hww8yhCt+qUo5ffY5JsN7bzKAKMRRLeS/W89VSVd6j2Ma
	 y1aXiyOhv2TIT/26NCU9+Gb4OaIvMNrNwesnmlV0TGs93VVU4FW0980wiN77SIFnzn
	 PiDA0iMJwgAo648PeIuvz5rUKh6VVMWCOmVYvhv3FYevPs3lMm0oepQg7fEYNLU4jr
	 ssNSJVxJHz0fYadXszzT3I4Fw2PWYMDGYU6KUl3RuXSx8NxbBbldx+/kjVYRUB3VMe
	 O49/RsfV0X0ckPf/UErDWWvDrarh2Wbq6f8oqfh3hDH/ZFQkY8PDUcDKvxM4gjiqYW
	 vlTUbHJb9YYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95819E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407895360.28397.17847980022190930043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae14ac5127506ff37daa2487627109c2f9030b674c2b65c6f11bac7246b63f4e
Date: Fri, 13 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734078953
