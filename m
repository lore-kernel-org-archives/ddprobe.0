Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7051B4F09
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775135734; cv=none; b=oBQKT37K1FR4AHebTjpCRFFfKzmuxFRv6iJlUPtMS5Qm9XSG/E4OomDc/Nox+KLFxGY1ccin0VEBI2JzRBun+YtryPaRYehuMNQRlfohZiivIqZlg9RE3Flos99Q3xsYjH/jiHmJ2KxCLWsc/B4V1Royn7kTPSBgtARmh+/Er5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775135734; c=relaxed/simple;
	bh=uZ1M8WaI2ZDsCLdUGmXmz+w2SVV13lxzw8FZHnCiyOA=;
	h=To:Subject:From:Message-Id:Date; b=kUe6uYnsBPq8VPVUA0iLhbpLSlePxkwQMWOaDVquiu6waQUP2yLfXZliCAwfB8lCwY9gaI+L00IkZmZG1XThsucA74TwdoxI6NuHJHcP6i4cgqWSSPfyE2ybr+1SqUrrE5d+AaIEI6gvtQkds30O8AAlf5VsnRUFiP4Xd4H9iSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqJYcX1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqJYcX1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C585CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775135733;
	bh=uZ1M8WaI2ZDsCLdUGmXmz+w2SVV13lxzw8FZHnCiyOA=;
	h=To:Subject:From:Date:From;
	b=sqJYcX1r1KiWswxlALNKY1Y9Iffj4PU2Za/OVpoXIkkrTeerHbhrdYLZTnBkVMspl
	 3rR4FBNrdPoZDipoGhcJSsDhlApi4eZC9ebRlGU9QhzvjpafZ3+1YJQnh67aGaRuen
	 HYP0Vfq9jwD4ShcLJ8DpGZXwxWVj3eGKZ3THzoiohLeM8TBxS4jHZY/SYsK+z+sriX
	 VJyMiBzJi6xZJaywNh9zsXPky8+EptRX+Kb5HyiwsWUS/pghcg2jZQAADs3VJtt4kx
	 tGjL44ltT4DfZoN3JruM9zFpbc1O3Hn8qZpzKflqNtYf3mywDbidshbwtwE8LLs72k
	 pjYcmGuGQCdPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B211AD39420
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513573369.18984.1074474833580922586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b1307047568e2c0757f700679b39aa892a0a8392a6cf9bac3760f487d68f3b
Date: Thu, 02 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775135733
