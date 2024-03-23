Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9D0DF53
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711195097; cv=none; b=oYVM2g14EcXBWz8NYKUC7RkeDT7SPn61J4Z4FPrz7fMMwbyJvNCAENpEEwTTBxYJnLLOpYOkdIQLa3ObRLMXpwtO4hFG7YdFHkghjg6dR+dOjCcrBq/MpsggInpfzJfrpv7QoGbOiFMAJFhKIRaA0ZUmf3ofzBIm5ZrcCDCHhQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711195097; c=relaxed/simple;
	bh=OysggYub4pF9YVyY4zIVr48levNpCB5bfhI9SyfgYPE=;
	h=To:Subject:From:Message-Id:Date; b=a2MyOj7yj7Q+15S2TdJAb/QLFc4ZXm7z+grziwTHKSCxOxXQspaLFLc/tlinu6yPvnDOvYWn0fk+3elrA1fwpdEKeqDWuk2n27MZ2lu/xdivbvrLUgHMQoZhl/bJGAAoszF6CPqcMKqbFNEc9I6xNJZyr7BNJfxGXtvMQkbhADo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+i/zygX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+i/zygX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79502C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711195096;
	bh=OysggYub4pF9YVyY4zIVr48levNpCB5bfhI9SyfgYPE=;
	h=To:Subject:From:Date:From;
	b=C+i/zygXm4qMQYkeBUIeC3elFFKAUiq7PGWedtI2RWznjNCnh9XZEmw5zZwtacync
	 jKuqQwN/dS1TvcxNOSfn6Z5sVGmnHFQhj2MZbSwKl4SsIJGjI8bAt+v+rPj3hP+FVM
	 AYEVRXVtvYuJg2n0NdCpOkzytRiJJ63jOp1bq+Pf2OiI/r+Z6LkzCUtByrJpjDO9gE
	 Xj0CBaKwALsdAYjOhZ5D4L/MH/RaoOoTlo2hzcTdh/OXQ46iD2WK2DeO79R2U+t+XZ
	 Xqn3Lci/M2LnwTx+/rgH64xxp2/ZRpgDap23fVNd3OifZoxE427zwqveCr91SoQ2D3
	 8mkrlOsz4kWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E08C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171119509638.29777.8953363308425986959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dabab5d6311b05a796922abb8ea636a12fc8dd1f2e370af21703b6ba6f1c50
Date: Sat, 23 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711195096
