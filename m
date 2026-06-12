Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D10F22424C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781223394; cv=none; b=gDONO3of6iB7vwLCsyeOgoq3DpRdhd0EEeT27x5iMXkehN2saUnsjwltaYjS3TfgYiXa/qggEOtVgojGCWvyBxtPBvZlTSDcsEWiz+2QLwF9t9IP7GuWPfKbgCpURfk4Xqi+/+LAJBsoCZ7wk6Bf9eFIFIlqufb0BxiMMlCKibc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781223394; c=relaxed/simple;
	bh=8HJTZoeKGKXfOO6c7HROLKQsPQFTHuApJ8rK/K3reU0=;
	h=To:Subject:From:Message-Id:Date; b=LBcZNW6o0FHy6yZhFl1npabE1z+dUC/MSPYZ3c76DmrYO19TuvSxoGxxBR71cmEOZ0lu5drr9gfUtBDcXjhaxMBc/kOfhObwmcJ2cdTNH9jE15D/olwbv2apQ+zR+98v8FvJD60sA6xjR7Tjfd2ujV38pDk1nuCAOn/6kSx6RCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYq6eGDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYq6eGDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781223393;
	bh=8HJTZoeKGKXfOO6c7HROLKQsPQFTHuApJ8rK/K3reU0=;
	h=To:Subject:From:Date:From;
	b=lYq6eGDjamQnoYt7pvu77KKabuMiZtC8gx3Vt2HQFNCfgkW+FAPm0ACctvPmv2pGx
	 joeYu4Ez5TBmK1y5txOGE86whJ1nvJG7ENJoWFtSrwXG9OAX5d32vLuXHGgMZ+PRrL
	 MIVYqlWeRtCkhyJm3KeWZU+ky8+5uZY3I4eFdkEF5H6tZm2q5Oz8wO9ExPNTNDn7Wh
	 e9fg1M+B1bhRT88ZSEqZJU6PGvg9EvACztEMZCVBJdUihabrNl8S2qdVlpIXn6OyFp
	 KcileFP7AzVqI1wSc0UKF4x0KC6ndhsj2Vux1/ndlrTfbCteQb8cKhIPLGZT3TxhKr
	 8gJJc1/U2nuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E84CD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122339369.16816.12830067159120346007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78994ba8d382274e624657b74bb0122d566c25308845a673b2c0a8eea5aa50fa
Date: Fri, 12 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781223393
