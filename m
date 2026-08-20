Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC0036195C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787236834; cv=none; b=UFlj31Pg9xVLYV+3wf6HSSEgLu8Ziw3a1tBne24Af3zPdh517oHSQlR1AeLeclKLPedqiRTJZCPpwb9Dnxt3Z9/5IIIiUHc6g5jL8301SGASW/Hb7cvA7ku3CI/pqm/0FiKU29cNY8dOk2d3xLagqD1Qsga743sqBc1MTz+dpU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787236834; c=relaxed/simple;
	bh=zMCg3pV0bSkVvdLzW8lMMbP35CwruOAY2M8Ons+NmFE=;
	h=To:Subject:From:Message-Id:Date; b=cUxWQOl2y3kuoOUiR+3iG5C0SZnhudia9QGk8a5SoMJKoA8auA1JpGRTgBGxKJFRYn5yewly5thITc/e9SKOJL4ZjxX3lYHsHelyDQEUsjE6TR8+54IlO5+1VI6zfVhqWTQijObXJIN+fsqc5qtDeRPxIRUqIGl/JJ5y1ZMezrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gA7zFils; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gA7zFils"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6B3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787236833;
	bh=zMCg3pV0bSkVvdLzW8lMMbP35CwruOAY2M8Ons+NmFE=;
	h=To:Subject:From:Date:From;
	b=gA7zFilsh4PWGUxWBDlgYfWbAmIFUQJqfw2xVWVpz6OE+7TMJ4BMH1Sg3InQCrFtU
	 K4Yr6zqLK7Oym4aT096+6UW7oTtlk//xMkMEKFY6p9uzdQunsYfyvu+H/fzr4evL8V
	 6rd89X09MfODE/+uOHjlPjv0mseAMaWEe1bK1U+tKNXzdjdFsFQa30eExj///dOosq
	 anApiMTld3FtPH9f3JAOmiujnB7+gLqkujoJjP4/Tw3nojOBPprwxHQJtoYiChhEW6
	 q4bIws6bdK2SQsHq2GJxec/j4AZ98wd8Dh0dJlgJFI7W89Cg0eddRj2sNsO7XypA+z
	 yNfraa0UizGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90ADC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723683374.10240.1267391801056129778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db87f5ef3b853797ae84c2feb98323d2b6a5380f15483ee3cfa9485b6e1673d
Date: Thu, 20 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787236833
