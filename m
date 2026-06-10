Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E0B2FFDE1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781071534; cv=none; b=PMpe9XCeOWIlTPHTiLfONMS6xYd3BUERPKfNhkv52jI4H5XwWK/TY29EPIug0B6zWM4a4v9qruzhnXkcG8BWALf2QgHH8ikQoNn5kWc9T6eiL4HmipE1aPXCMQJ4FqIHFj1xJE99kNBIjmZbFk3dPaqFR/oJ42DJTawI60X1IOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781071534; c=relaxed/simple;
	bh=puiS1ik+E5cjKVbFQGQMrmOkZFKui177Z96womd7RlI=;
	h=To:Subject:From:Message-Id:Date; b=prPnc6ZUV0KjODAOkMdQMJn4CTfunszUOqPed27lP2z4YCua7fVopdHHpgDa3xBm004e7d5EpNNIn0Py/ghoIyQm0yp+hFESBNCPJ0YY9n5EMfIYZ4SEprRZlgD5ewSRAqM4gYcpcm3Cknwmfc9uQbWh5wnMWbv1LEH4/8bShSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUoRUdfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUoRUdfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40AFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781071533;
	bh=puiS1ik+E5cjKVbFQGQMrmOkZFKui177Z96womd7RlI=;
	h=To:Subject:From:Date:From;
	b=FUoRUdfYyzG0dU+m0RA/fl14PO7dvZzd6jgC3xBpbsEZs9ZtTtYdmbRmZdT7fIqbd
	 pz4QPOipQyB1U6WsDO/RPRglEyk2KqoXnEXyfQd4xpwscZpzHlhHlVWivkCGpnbvrs
	 tKKShJf4y2pkKP24KjsYgsYkzV/E+GStnPpBHIfq9234hai+1KYVhxnuRbe02/nS6t
	 Z9W4sfEfXo/xb888GsrnT3hkh0Uxm8+PV1c7RSqYuGePvi02fnRzQM9Eq7+4JOdhyS
	 apTzV9c7W9z1o5PzdyJ5A0mv38VZlVq1WXjYa0WjOxmNk9wp3WKia2+70GdjpSLJOx
	 tqDrll+FkvB1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEA2CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107153369.4126.5136667871890978328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199bf33216211655e51442265dfbc05b9b8283656ec129587d754f297eb93cd8
Date: Wed, 10 Jun 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781071533
