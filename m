Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074B6274B42
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767992034; cv=none; b=RRZjlu05u6lmNTMOQrOizhwZKDeLQW/q38kNTquysMZtAB/ZIgRDoXgisaaHMf7qj5/69PE1KcYPWhdKuMfPUAh7CsIu3LwabqVfglwzlcsgmUfwT0qVWOkctbA/sFKc3WhxC1a0lggA92vGpOcCAWwuGx6SG29CPHDyXayRfeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767992034; c=relaxed/simple;
	bh=r9Pm/SUfV5GwtAB4Y0+AMiVmjmd6Hbasyt6+DrX/oQw=;
	h=To:Subject:From:Message-Id:Date; b=tX9deOLE/awJhK/sX5WBmlfcCkLRlNU6tDS4pgZhVbTXeTaaJtqt/0vQ721R9Kewzu4zuA0pdWgwX1qFDFslwJoFAzspQ2SE6rFbVtdnZ8x96tCRaYI2+DQDNhBXAqCjznb6XTByP5ZF8s62Nhduhl6+SW33kvTMxM2n+uv/8UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoghtu/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoghtu/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4596C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767992033;
	bh=r9Pm/SUfV5GwtAB4Y0+AMiVmjmd6Hbasyt6+DrX/oQw=;
	h=To:Subject:From:Date:From;
	b=qoghtu/rpM98l6V7lZzawBA8CDgIZEHjBtWen/JiO3fSWGc8j/5U1Xtb1fLDNcj3h
	 N7o/oFN1lmWdDRY7OkPnfe56r9DiBjrq06VZCLoBJylw9ZRmhl7LWFLeXRI4H3wNA/
	 yjSNc1FAOU3WdUDCPNMTqCBX5U7229Zu51WuBr1ANOv+2OUGTtpEoDLvIf8pX3BD0B
	 uPyXhiKtUHl9OIBI+bxUvQWtTEf6dxYqNGwsc2ACtyuF6mjQuGovxHHB7jZSvpjC1e
	 8ZBZeCJIDE2WrDNVg4fhR0ohjmHV4HOwFSJE1nzDWZDnvmpUjHo23c/g8pB1o9Cngs
	 x8xzJrZWRS8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3DD26D9B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799203359.1813.16012591242424820193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f56fa5ce4c15c0441d43c91710827f3d61d3300577cc578802ecc790a739d7
Date: Fri, 09 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767992033
