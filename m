Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849A0265606
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763296254; cv=none; b=obmM5UbaE9JJNrvwaMQtTxIeguVurKkKshYClBaosdRpqVmSdH5NBTw9IVDWbP5CjfG6CU3+uivvB5tQE5VQ7YiXLRm/WrrJVsb0y1x68bxdldVNjw/WltABqktQqh/5jBEHrZ4bAUa5h5jeZ2yLn2Xb+b40CeDbDLnO4AVUC9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763296254; c=relaxed/simple;
	bh=tMaJs+A3dxtwG1YLACNZ5mC7eFnxIZ7BNt15DN8cVT0=;
	h=To:Subject:From:Message-Id:Date; b=floCDUDvWzeNpkY2x16fYBrZ4lNDcTw+TAnT42pIPpNR2bvBoRwPXJjsJej7zZndXMqBJsu2fQTgh1MNEHyOECjSBqd72/eNBYc3f4ZxpuGlDQ3IGkaENjWMYTihhFfo8SvugHLVjmdhp9dn6T2y7CHGKkW1QLeMPPhj7h/eltY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crmrIsn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crmrIsn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09CF4C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763296254;
	bh=tMaJs+A3dxtwG1YLACNZ5mC7eFnxIZ7BNt15DN8cVT0=;
	h=To:Subject:From:Date:From;
	b=crmrIsn92dpxY9KjcSWCwHOSioPNPwExAvKC+t0yJj3Jzc4KXVZq34DpqxZUzKAnw
	 UStVfmA6TRDrK8uFtyj8nz8ff5Y6q2m5n2aP0UI5alDs7tJ3phHv7zFHunZk4YtQlW
	 QPMNlFCYNwwPvkvx2Ougmc45X0PrxV5+nJGn9UGDeMK2a9GUTuhsYJWo+GLEzZJEtI
	 0Fxu6SRXLutn/eYyWl1QlfYYyX8irKQ7f1NwzLYMhCwzTjNYeQYyUgoW7wzwYLaYIt
	 4vMMdXLem6PL5+eeF/92A1NTXKfAdrJHcuAQYrGZWvXMl6iC0Cam5Q/rCX2C+ZIrCy
	 XzXWkC4zdh5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE4CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329625369.16976.6370213846179595811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5c7fe8243949363b76f750c0fed53e18f58b15bca6450cc79ee06e70eb8259
Date: Sun, 16 Nov 2025 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763296253
