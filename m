Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4D31B131
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768372435; cv=none; b=qwHQhGipCnK6mzH57qdYjM1OyNzoSD56Qd3sZkOv+6Krvu/2DRjPQ1z3SElv3GFyXSWDYOWo7rvLwvQMhbuMAiv7gtI1Zn9uuJICOYewcb8JUPkTgsRNuO/HEpMn26CKAqH0e60IsT3y8nQLp39pIkcs812kO1Xo/reUIxM9GMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768372435; c=relaxed/simple;
	bh=3o3D+/m9uHGyo1M6gLLUPVJqWeusOGn1It8ON3cLfKw=;
	h=To:Subject:From:Message-Id:Date; b=jeUkp5GQ9xJS9sseXPJEIhX1Moe1ctY23jtvMIE5jIRejAM/SsJ9ICcBWNvb6u3gRx3mAIKU06b0pFf6ap+ImoqaEKyFvrSlkjmcMrsWJ9rVvKHVwBsUNwUL9gqHmOK9ajMa80ecKTYS9I3R79Hecnp2rqAAyD86zxeWu/Zqpcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p89qfyXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p89qfyXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A198AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768372433;
	bh=3o3D+/m9uHGyo1M6gLLUPVJqWeusOGn1It8ON3cLfKw=;
	h=To:Subject:From:Date:From;
	b=p89qfyXG7zSFZkSlKJjgGXpG29YdsWV26S6KbnR+5ny9rl1PiqMPhLl8NSpIK8mdE
	 zQtBTiZiEo+4Bx+1q2SRQ3Ou8UN2+0JJABsl8cN/1VLzHjb4xHkG01jDxJPHIPCJvv
	 /pNf7fc4mGlScd9TUlOJnTYTpSmuZ2Rv1mOK9lyRZO0gWJ9Ic4mx6OusRnR7m7JGUU
	 OwC7k5BpCd2JO4reX/uqB1JIQ1th/DbR3r+Mf40DaA6cCGFvdKHKIj3og4sro4Enxi
	 fc0mSGAdbk2T7O0n7bZkhDrHjrBZYTjRUrIKu+n2NJsQBA7MY6O4yzkwWo5zOM+0l6
	 Gy3jOrL3iULtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1DD31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837243357.27218.4805097656156602900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d6e64a55e5af4cbc0aa42ecf7f4c65ab0a4ef9458680e9315a49627716c9d2
Date: Wed, 14 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768372433
