Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FEC52CCF6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792073434; cv=none; b=iCeMeiig0nm5jz6GMPzOJM3Q4iICwcEmzP6zQNt34b0FXhfcBviFMXP5uHNXg2KCKKEjzar8rEoJWfRhE696VxcRy+fWHvDBo+kyzijNoNFA7dXhvO37bgPvTd6Psf99yXbN2UpwGFAg5jn4aX4vCLfmPEcC1inku/z/qlHit8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792073434; c=relaxed/simple;
	bh=zTGSgZPPXEE5950xSOqHCt7VZD+upN6m6LjHoZXJltg=;
	h=To:Subject:From:Message-Id:Date; b=LuyK3PAg4WScQW+6QzsoJlkLFYZe+qHce/QFNaJWjm0KazgANcu6dpMp56MsTMn35yu9FzPFFy/vsNKKVBblGBB19VNvdiUAt1uJb0ziO8pjlVRrCWY+2r940peCevJPIl6TaTUmiECBqNlKPuzrqO6fOy1MgMcELwpvRFDQnCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASoM2DYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASoM2DYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF661C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792073433;
	bh=zTGSgZPPXEE5950xSOqHCt7VZD+upN6m6LjHoZXJltg=;
	h=To:Subject:From:Date:From;
	b=ASoM2DYpuzfqeN3p3I8WYO7XO6ej5m6Ux8N6HdqAiqQ1lDcvzY3IedzI5CL08QKG3
	 Cf8fiZiDZdA7RDePOXSHS51wcIUN9Ywpgs8pgi9EGu1zrGvYH0kmSSzw5Bwc6faK3C
	 xkFW5+tjPAEgfjRcL5c4r16FjxljtVRK4//VB1q/fma7qd9fVszNNjYrlbmUBhbi9B
	 qrkQTmiP+9kG8gNLRUm29SMwk+hA+3iyssuuibR5KTDfM7ZM8r+2Ii9hnHCIxBDsNF
	 lU6ZI+cByjxLviLodHorSnnEHxnhhOpS9J6Npq2tIIu0itr6kRoT7W/rAN3/hUDA6F
	 oiRb3uTcHlQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0ACC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207343368.19273.10461434913878991027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43bfb21b04ed851704b2b8474112e79bfd409fedab89a9840f6228bc4730366
Date: Thu, 15 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792073433
