Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C562C9A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727410554; cv=none; b=gQDIBhFSTDe04o8j37kv5xfkkt+9ifTlnEq+qCweeGq1pBkYb+HLaqOF2d1XOcKNtug+2BHmdjOuA7lxa1VjxKohUSy9RWCoIo5X9SwmM0f8RieUC1N+pbTR1LCgcJ07lrzZdfU10BmoGaL/wAyRE1pBjpCMACsjg0ETsh2cQ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727410554; c=relaxed/simple;
	bh=lbziXRCeDJ5ColNu4ywPbwGm5P3SQa8QT6kBhDWcKAg=;
	h=To:Subject:From:Message-Id:Date; b=ctoxFemgq55dFOisXPqePDo/vJZUnDDVcmMm0KMvDLAZn0XKOjsuky31Ap7KxUjDTEDnMoVGl+0xuPTskjwoplvC96CFYsik793O4KM+Vc4rY8bVEMbfgDSNdsjRllIcey+zeg1dnjEsDN3Lh4m0Fie2B+77Wmryv02L6WlxIO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8fAuBdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8fAuBdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C694AC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727410553;
	bh=lbziXRCeDJ5ColNu4ywPbwGm5P3SQa8QT6kBhDWcKAg=;
	h=To:Subject:From:Date:From;
	b=J8fAuBdXdVya/StDkNrwlZuodb+IXg6McyIqhkAGkJVhVC0iYCtUxPTxCs6IN5YHj
	 2VNYqc5MZoA/1Lkba/BlGbxCZWziAyineNKNg803EdGSMg+HELcEMYBdOQpyuMfyoI
	 t/GMlZTJMTZOoSC7WHytIfYPE2PRkT8fFub4ZnuV5TgdX4ajYimX0ZIu27qdQWph4t
	 yVRaju3tym/1rGVKzg+fb1IyUUQVA2YQ+ALRNkmdEDfZiwlJHaErvEbjrmd2QhtF8m
	 F3wrOgonbaXVKSj7gqbDJWghQ2GnGSYPQlStf3Ad8cbQ1xrCYGye078IVAqJuVgY8o
	 vqOzLxp9OQgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1585CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741055367.27221.7181953651060214796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4475caec89f284e51662c8ead3ad43d821beaa42cfd7e0bfefcd733adea0101
Date: Fri, 27 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727410553
