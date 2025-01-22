Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D418E25
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737551754; cv=none; b=otOWdntYjJQkwwCUkFodw4QhJkIlbhR6cP6lkr5aBUnFqNyarXSdP6vilOuurzPn56nN2vj8bZ9lthCaTgFOFxHxR0bG6G9mGLwCfEF3PdRIF1NBmx6kPzPxcW4uzGMNopSNKZ1d3pCBVg887zbE83Zrjaf8369lQP2bb4MYiYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737551754; c=relaxed/simple;
	bh=8XXdmupsN4iskV0w9ObALWNcRTJsjNPlFKguI70Jls4=;
	h=To:Subject:From:Message-Id:Date; b=daKmyK8q1kZQ7H56gwPKWewlVxVIg/d6YkJEANLa0xd8f+noYJNhsKhSptVtQ9FT8CPEhioO4bOVRCpsqdj7YJnF/pFljvvCjL+9XpXNYKLvm/tilOknc3zBMDyfzUrvTs/RzteuimNJl4Z0p9V7c58HwNnDwC1iVP+iEBjq9wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/7Z6uHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/7Z6uHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5103C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737551753;
	bh=8XXdmupsN4iskV0w9ObALWNcRTJsjNPlFKguI70Jls4=;
	h=To:Subject:From:Date:From;
	b=s/7Z6uHHyzK/5YOMiFnNxiVEdmaMpOavJ8KOk2q3HBakQtW1AqicOdiv4nNyInBFE
	 soMxEuQTbPO1tWKjhxN8qaxZsGHtACC/6WASTQEQzcWxb6DUF1C0neUFIdZmQZUMSp
	 Cq+6JAUkcg/MJzgWQoZslN9qXwd+ArKrx8XROsY8cg2s+A8nJp9xq3CqEbJ6AP7ZRn
	 /yaKONVRSpHi3pmMG1WiGlRaFCSmMudHc2icUHzBNI2JvG5RwOrgbxucknJxs8YivZ
	 MCIudwYnmgi9t1dP9A6OFXiPIyQHYIUe+gsHl1IvgdFnefKT2SFMHjU28gqjZ/LVGW
	 gAI+5eZfyec8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F0C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755175357.25776.15692075024008114313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc66c69064ea15acaf021bd62c2e309ca5d6962285d6d9e006840fabfb99255
Date: Wed, 22 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737551753
