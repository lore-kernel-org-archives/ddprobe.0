Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7541A0B0E
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789434034; cv=none; b=DAZKtEExCVcbIEs0dty3dLSeBsNESFEp3PaCIUnpJ+OJEOA3aIb1CQOW+Z7P9dfLjd3WaNEJ4pGflQUlzW4vYfw4ow3xwPk4s/slHDoVhj+DF51MT8Yn6Ef8eDtJvLZ3E0aWb/y4ZoNTRgUnlErXRpbK/+QOFKz9LF8SMLuXpAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789434034; c=relaxed/simple;
	bh=2DGKuVsnMrgh3IzRRnniEvl8bdHEvUd+3R3D+uNriic=;
	h=To:Subject:From:Message-Id:Date; b=STQl8WiClr4YIVV8pNxt66LSCjaVGJ3OQvyFxGoVAzM4u6aCqPAjNWd52ANgsNXvY4eMFHik47N38EUq7gkv/L2tZ9UtUqnE/axFZFYIRs9Bvuk7EijNURTtOAugISyr5lvvwwPkxW6Ggw8QDYIg/0RmiktUhgvdYueASzEdbeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YB8bSAKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YB8bSAKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CF2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789434033;
	bh=2DGKuVsnMrgh3IzRRnniEvl8bdHEvUd+3R3D+uNriic=;
	h=To:Subject:From:Date:From;
	b=YB8bSAKIkG202UkqlTx/XqgyoD4b04e8Nxc84YzFvkwKYSPpF51xsV7JSBDY7Xfbv
	 fRPIZlMoXXWCloTJ1c+PXx0e9l9dGkZx68/c3LjRB+Og1wHbjRWmjmAaYar26eFVQD
	 wfqQpeIzFfQZDyIMxN2AQRU6ltS2INzJXA/TGQlbX+myv+KrjG9vNqzD2jjauzWbOl
	 GLrtwQ/s8eqp0gfwotgcDVgn1Y6Ir6ybVu1k9BfZkQd5OW9gY1tyVjw2JPvfCy4x4P
	 41QQCkacT5g/+XfS8LUtZej7F+exIgOv2seS9GteCUnkh1N++N7BUV//ADdrNtUYHc
	 tSMg8wpO5rfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFF5C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943403368.13851.18082870460608635188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d038e8f8d22f6ca46333361fc3c57b452f4d79751c6c4c343309ad112456650a
Date: Tue, 15 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789434033
