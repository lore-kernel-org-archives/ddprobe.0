Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F54A21
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767400434; cv=none; b=q6w+AcYs4rUZtkMTP/hjy04/MH6+7juNIIJhYH67U2eGuZaXnaa1lz1H0auMpUmy9VELSLlxAciSCfEcGsk+nQdbyybd4TQIF2p3UPetX+Bf1Y7MN3preFSVcHwPAM0sRyp2arv/OM/1qwus1lRjAk/jGt3btcz5XRsTZu6s6T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767400434; c=relaxed/simple;
	bh=6Cnh+m8HrRwOlGXrk54Ihg1abZjCKV7IfH6dL5ggjFY=;
	h=To:Subject:From:Message-Id:Date; b=d22wWBhF5cCj+oavtDYfCXq3aVci0mxIXiZKAYr3eAO3IpjUMi5cs2IYKfvMSkpN0OcMJvRYCJzbFMlYl+sBo434WrepnSJ9XCXE/we40iYoccpwKR3LHmG41BFFSKwNWYZWhYu6nrOJiHGm8ALVtZL8la0d69H6EvUbJc8MHy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5olyYIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5olyYIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767400433;
	bh=6Cnh+m8HrRwOlGXrk54Ihg1abZjCKV7IfH6dL5ggjFY=;
	h=To:Subject:From:Date:From;
	b=G5olyYIbtvxWHUHHsOYbVhkTEF3ryFtXjIxAXMqmYCdDoBCVyOoCpkki0hAjBAYeD
	 v0AZYz8My2cZT3caG4vUJJzpiXQl/u+ixJ0uwBMYH6azgX5lCMxWCNirR+CVA6nSk1
	 Y1DmbBWS7H5KcNMjkSTvckn2CjMR8i5+3Es5JzNouGfdHBTQ1FXYGIrDj+VYCoyqIW
	 awe65MzLYQSiOTJgLgbVF2VIfSDsEU/hRRuhiX9xGzl+eUWHBOBmWnVGPCL/X+8dcp
	 IEXIJHWq5/IxZwTGjRjZ4teWoCTq7OgCjlElaY+/i7DnYzYatA789SGDgGEXsToZSM
	 Ahk9Qh4bWlZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EAFC6166
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740043357.28765.3697657764247749768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a999b775dd9adabaf65018ed5448f5512059d3305cff1d77f1b9f6baa140d744
Date: Sat, 03 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767400433
