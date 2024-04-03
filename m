Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD68C14830F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712151496; cv=none; b=iERv6gEEsileyUZ5P0zzwD0YHTLME5dpIOwImN0rJ7bLnZuxprq2dRFYiPYXp9jcv3C4KALdKpfyGZCsOpjpWl3NQ1+R95BhceW5XUXAOJHKiygcJjToDsX1GQjtaq/a8y7au9QRFYhhNr59dVR3VyegCcnk/1IUkft/2Y7YMA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712151496; c=relaxed/simple;
	bh=j0e6k1nlzC+2VA4LJrk8lD2v4x/ThviQzaoQPPWBAbI=;
	h=To:Subject:From:Message-Id:Date; b=jDYySdJrB38bs2vzZCUfNWQGWsCGty6RPNYzVNgd0HAROpEhm+WFhVi9z4C4BsxcqcgnDoYSAdF4mo+/42pni/jwK25afD61nIVmaEWSElnCsajZAf+COP9JXgFX7tWTUpcBOcyBy8d9Ax+++VxJ6IiL0L/aBySClFarcN1qjzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kho6t+Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kho6t+Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D130C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712151496;
	bh=j0e6k1nlzC+2VA4LJrk8lD2v4x/ThviQzaoQPPWBAbI=;
	h=To:Subject:From:Date:From;
	b=kho6t+Q0uegt5pfBHJClv7Gl/Iv8o94cAxifwNr9bkTfw8CHJWHnPHpdpYUf7o+7B
	 nESm0QL3Kzv7KexrX2yXq2Q7xYwKQOVIWbimEkdf3IAZW5XbVCI+NaGHeaZMcZgYQk
	 /N6Nl9PGb0FQ4PhpZqw25mqlQjB4MwvTNrHrw4+gUrilaA093Brbrql8WQL6yEMn+R
	 ztRIJ+8W0OiUY7d7cUcf/tzaEEykFvwL2zokRC3Zy4SXGxY+MbUAe9mHK6frltzpZM
	 3haKDaml4cXbgxELrdRHXvlzaLmXKWMpB6zLW8PEKz5GgeI5kLwrLsDMC7iaTu/CCQ
	 xZoScdPfxqdsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9ECCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171215149639.9671.15894638605261353536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b748a61a2306641a5f59ef1893df8418c79fafea89561bd17dda94dec7c5621
Date: Wed, 03 Apr 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712151496
