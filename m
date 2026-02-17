Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A89D212FB9
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771338294; cv=none; b=dvEi0AnxstHOJiojqnqZcRn7g6DHiUk38/bbqYvapXJ/3S0VBUDU+c+kAYaMB+g2yCKdtt9UI6FfiQ6iKdnSHqMifznrb34uW5wIf3aQOrBWpla6HjxuYG6EIPUjW2sbPZFTmudOSy+yF+WuXMbs7kmXtzbdCPcd+W5m4wCBv0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771338294; c=relaxed/simple;
	bh=BYtyzsMzIhDebWLrW3dgEBlTthmgYvTd3q+8nmB8h0w=;
	h=To:Subject:From:Message-Id:Date; b=HIYRBPKIjK0G5K5IYG5rU2hR7n9VNUClGp6XJTN9zTLCwDVfkA1t2OAwh+6bzxK0dRrDIuUcTyVbD+XNoW8iAvhm0vZQlPpfT3Ajv8tivztwgb3P/B27YU+UEaAT5BeAe1M2GxSjI48pMaimNicoIplks4Jw4zTyxyU0IYRdAJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKAiLlZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKAiLlZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF059C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771338293;
	bh=BYtyzsMzIhDebWLrW3dgEBlTthmgYvTd3q+8nmB8h0w=;
	h=To:Subject:From:Date:From;
	b=MKAiLlZ6rb8LT/wSXRpFIIaMHWW9ZtVb8LeTPepzR/PaNLRulhTKQf/yk2M2Hsnjp
	 pZPo+E1S6FflZsCzxIWvGByLBc6dV3z0YTco2ie/4UmOKud+zLBggKnF6GfGgsdGp9
	 bcYpha70LtXzmFs5Eeny2jHlu4db5jihNZqIvglDPqqz7fFWHtqTNVrtqEL1OywOTF
	 KrxyDAx++jtuUtN4vB4gvbG1xCQsb45HO49Olua3Olr2Ac2ThnSIwoJEYBgIkjbJOo
	 X4FvLWdF+DrxOfVF+ygZiSnZiZ7EoUtYA4VrqJsDbJNPwqQlrUZy7vZyjVhyQVOea0
	 7XJimxFGM2cvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EB3E909AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133829372.4111.4236180720990335474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca66367264773700a73c0ac15d1aeab673db56835d24527d0d26f9ba9f7afec
Date: Tue, 17 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771338293
