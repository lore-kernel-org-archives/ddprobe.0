Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ECB18DF8D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746716395; cv=none; b=Iay1QyZ/XriqdPMrxP51ZmLpDd5Pn1V/zGe0dVv90yLBgSE3LCG0VTds2j3qtlcFJxIpGrVMYznm4pgzxrEM/QhaPoxDkGMzEIFW24fCGgFZ/HPKqGUy0H4zOtzFPfJ/iyKgYHvVs2PopizZvjphK8dr+1KHlVJLZUAJNJ0Jx88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746716395; c=relaxed/simple;
	bh=vqCXY9r/SPtEqNgc5qG+Vhc0g5hpKxcXuLqirF6jO5s=;
	h=To:Subject:From:Message-Id:Date; b=SuRWJ9JB7qDcQvuqB8qdAA1Ug6lPhQk45HhDoB7Zi/s3CpVTE2+d54lWJNaMs1PFgDUo7AKyK2GMBJoY+0XLy0sXpu7tYYHloW5OQrgTCMMsXW++S650Uy++MnVZ1oBCrdRhe6Ecox/0F4QBJwVUmEDiu8bxoutRj3trEgHRqCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIpZrOfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIpZrOfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9F6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746716393;
	bh=vqCXY9r/SPtEqNgc5qG+Vhc0g5hpKxcXuLqirF6jO5s=;
	h=To:Subject:From:Date:From;
	b=gIpZrOfJQY0mOjYkNJfDL9ntksAC+bNU6cZJ4yYZkRSn1xkbUah7WF+vacKcf6L9j
	 FjnUknch/cnITitA6YgVUwTzEh+F/HCfxen/hGeyPR1DfkyQrOmzF32T2ipJz0v8H3
	 L9TC5MElBE9QpoUIEsdETjduDcsNKwzNYB05SwrCMc0NVnmd7iHARQ8VlQ3FgQdvuP
	 iJAnyV1wGDw/w45DXUTrrhfMB6O53Gp+uV8o+RHgVF1qzzBC+W7L+MgTqUeLi+RyJm
	 JY6cg5wTC3N2KHZEUYfyV9e5NSFcBvhjGG5N7NnhmrhW9a77MW9LIQ/jnNI4gRyKeP
	 ZIyzHWhz5Zx1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DECEC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671639357.20516.8628050382860833221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc2d884a40e4aec8e9afbf3817413d3bb27cf8b9deac195e2894cb446959de1
Date: Thu, 08 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746716393
