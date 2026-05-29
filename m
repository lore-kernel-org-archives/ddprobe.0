Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D1C428465
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780080754; cv=none; b=IiJOFv2MxvH3J3MwtAghGXMUomgG7KyQ48tEDcdKfE3loLxfV63U0k5eLdtbmN2QGsqiU3VvgsPihXwayiogLhPfCGkFMqcHp7wCNTLB5vyrqbkDTDeYSPKdn4wbyFkR0xX6s82hyAel3qsK2GO92ro3Jz9d0IChdE3nfYJnOyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780080754; c=relaxed/simple;
	bh=mrohB4MlyxoSQcRzzfEIXiAuJe7QaAgDnpIUvD56bM0=;
	h=To:Subject:From:Message-Id:Date; b=My547JDiYTM2SrYAVf2oLrKu7MKnCcwzdw/okqnA4uKxY8ZCym1ur/2/rlyc9niUp2krZCkO7ywcdMKgYDoeiNYUHa91npiMAE/TFxKMFpx3Gwu9Wi/zpDDBaPoALy8rde8fGsoa0uI7T83jNVcVwQbYIR+gnCwi92OU6pYEbTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp8IF8fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp8IF8fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB30DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780080754;
	bh=mrohB4MlyxoSQcRzzfEIXiAuJe7QaAgDnpIUvD56bM0=;
	h=To:Subject:From:Date:From;
	b=Mp8IF8fGnwB8dTaYZW9xu9GVAPk8huXDZo6bhFEnawQV45gsLJ9uN8Ab/tzTMSufC
	 LHex9MDdgn+/6mfyo4VJ4LE06Fv36//pDqAhv6X0FHAdvo9Nv3MtKm/zE85piXCzSR
	 RT3+5EoacAdCd6xU1oUqaDFBJkxx1x2rz9slYSh4VNgkvQukfGUW271z7TZFZMmFgw
	 wO52evM7uMS5TBOq//jwI+e2zh4Hx9ZmEGWSv0khrazxgfXd73kqQd2+b1UnIHAiGD
	 hACbcdj8jlLu8jIBP9LX0LUqphvik2Wtl1+uYNpObCtUmBBp/V6M1FAysEjSDLD+oS
	 D48Ir0IQCB5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA2FCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008075375.21138.9228275460995406175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab78abe07387f6f4c5787451f4bdbdd56620369485be9c97f73c1bc671970d7
Date: Fri, 29 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780080753
