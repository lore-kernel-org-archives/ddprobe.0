Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B12E19C556
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754066395; cv=none; b=GAeN01scCliZM8fhXagU/KfXH+67kJ+Keqqm+cV4wWzvUR1LFY+5BP9RQSdKtqACxnvn53Pjt+HsQPnUrRYW/RsrZkKySbcEUk8v78wY7U0DcITPbjZIFn/U1Z+dI49rFgZs5tpfXbrmVTjuU2dpWWw+b+NaLTKiIl6YxMfUM+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754066395; c=relaxed/simple;
	bh=X9/aaHWpmpbc3uT56iafKvCwG1Ee6YQbpgcQabcTzBk=;
	h=To:Subject:From:Message-Id:Date; b=cmKgbvDxfoeLjFQiYgCwUtETdX1Nf5Epek6UGHd17QFXHEj3lUvllHll5U9iCeJHRsaNpaqY0psr9E+VkNy3w99bUYsaxHekRbS86mwJaamnc9KASCEw94at/yWwg/XqVZPwYd0dJOq7m5doYZ9bEgzIwr4UKHH0UXZiB3pEYa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzV5Jw9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzV5Jw9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FB5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754066393;
	bh=X9/aaHWpmpbc3uT56iafKvCwG1Ee6YQbpgcQabcTzBk=;
	h=To:Subject:From:Date:From;
	b=LzV5Jw9a9U2/M9OrObS+dbrnc7qGHQN/TJ7bJmzFZ0iqmZo7U0gLXcvTscLvXaBOI
	 eqAG+njVjfhXDT0siJSqHE9fZ1/pGtbIrGso/3ZFj78m4HmaD86nWUwpyiGmiPjbVB
	 HIpcWeOEyzfRIovo45jvG/pN3q/FVZ/RAhfALYewSW1/Aiysoot2IZPDw6aMYxyb+3
	 LCDIHz4v/OuTfdAJQ5cJt1awoySiLQDeDAkzP21k0EC0tpOx9ohoVrJPxPmC4ABX/i
	 0F0SpGCvJ3OBstkhJxea5ufsqZGlmTLvo5CKycMpXUwbNEuV5QRKV4OcoP7KpniwwS
	 UDdkYpkvsjEjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9066AC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406639358.23965.5299873537044174150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2593c435214ddf6b3665830f6c272568d3fccf06644b74db074533d56953f357
Date: Fri, 01 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754066393
