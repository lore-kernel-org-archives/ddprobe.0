Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26616217339
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729802754; cv=none; b=aY0SrtsmKAfZXZ9BXQMbX1QYvfgCBzHvKXVdQTA54NYtLyM/JxXzUbcRTrTDl4SF2MICQXWYqIO9SNJzNsnKq4FHdVkc94GPbkIWhHFlmqCq5pEAysILBJcDMKwrDgYuFF/eppcZI59eJazdnp9BZJBqkmNLwbMEEEHObeTcVpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729802754; c=relaxed/simple;
	bh=YNoNVD+N6Fcqyq1HOwnYuVz8CAQ3OPrap86Sx2vsJUI=;
	h=To:Subject:From:Message-Id:Date; b=BWaFB3qfjHlA7VXQVwYdZWV/NiFszC66aYs2ofiePRlILtHEQ/HyXQYoXJwGGknYh8qKvV7bCxsaZix7awgLBOr7frj3YLPrOjEKI7HumUTm62mhFKUqXhgti/gXsBWTtLqvIE2UbJRgfhB1e5rD+Clme76v87nMjUcWsGQY85o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vASPZJxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vASPZJxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB75C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729802753;
	bh=YNoNVD+N6Fcqyq1HOwnYuVz8CAQ3OPrap86Sx2vsJUI=;
	h=To:Subject:From:Date:From;
	b=vASPZJxlnPXCGlb0b2Rqq/vDhVDOZeeZV+5sLkCdT2oFZGQelaVu+M/a7fHdAgBBp
	 LgreOUDrJHYz23Q8W1ECj5EwDJ0t8l9LG8TFt2ZGb6ZZ9XRiKhF6xeL9RgD+eX1ODE
	 K+MF3CmfoOYVx5TPJXNODy7adS9+b5U54oK/2Sf36ROARgY5YFOUomSAGqga8PPcsy
	 h8bK+sZSySrNEg9jjv9lp5jXL1GBULdWPOx/FLcMrFdPrvP1r/ViYr3DruPZNXHSFd
	 Dm4bP+3xof692iWivl3+tRPJ4JIfRcgYhLdrtVSRbA4Yij2CIM6SCTxpiqcsRllD7Y
	 DkdZ6vHkqmTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DCDD10374
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980275367.11968.3610854158657470773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e1d7d28d4fa3a41781e245439787242774083d887cdc618700244dc108e001
Date: Thu, 24 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729802753
