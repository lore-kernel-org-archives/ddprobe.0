Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF117314D07
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235494; cv=none; b=suh8aBUmMvOOtqhsebcz+ksVeRj4RuUFzCx2uYk57nz3XL4PpF354vzAL13BIN8SHQCBGKc0QzrRyT+Ye96p6UjdFdgBH5HrtaAYXZs6Xq/048+Fi9aKKo1GBuo7o9FkJ296MCnIXTrMxU+4qm30Q9Wzd/f78MB6RlPi4jZjoSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235494; c=relaxed/simple;
	bh=506L7Om0JTjVyRp9+HnNZOSU1pHeBY04VSUy2MBecIw=;
	h=To:Subject:From:Message-Id:Date; b=dT3Mym4SnhMEN3kfeHLCgmADQmngmAAGiH7DpDbMEh6s6UbPoiGY15xN8g5BJyaYwaccQm3VkZJDE8RBPykk4tSMTQjnlw0ObIOqCDv9zcTxgMooXCNJpEkw/UZ5lhWqYjg4pG9vx6eiUNQLvhLumx30ETngMCEq0wgQ6odb+pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMcj1G/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMcj1G/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773235493;
	bh=506L7Om0JTjVyRp9+HnNZOSU1pHeBY04VSUy2MBecIw=;
	h=To:Subject:From:Date:From;
	b=lMcj1G/hSpmIWkaEKW1czWBJaxUEtvR7geUgmYozcm11WYoXx1r9UmaQRKwkIVK0P
	 HSNfdS4/AGJb4MxYdivVaBrN5MLxnrDEkkJc9zZT8E+Hc+P1nrPj6AeqiVjlYgN6NJ
	 uJO13EVZsJMW0w77c36H13rzwLHHzi0xX7xdjES0R3pOBKfvg7HX+grwd8TrCB3Eg9
	 zbyRdwvFDUarGYIKPT6FQNOFHMQ9yorfAkXhuPsCEEgabAIIuSlt6SfBhE0ZDo6Cwf
	 A2/pr3jKgFdkmay71BxM8Ho2y+3cGrl3Z99UlVbvX2RdN4dAtQwvjKua34te5WhOlM
	 SuYXrSRsqjwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D351125807
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323549358.26731.5977402197005295486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e528b3fe6f082698507ee3dd6b3c3d9fee47dcca6d0f3e9aedfbbd90dd2edf5f
Date: Wed, 11 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773235493
