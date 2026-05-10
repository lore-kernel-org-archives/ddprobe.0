Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6D1D6DA9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778427034; cv=none; b=pbPXvBw5Q+XAkRSOtP2KsxxN+Vq5ihvz14G7FP7lL+yHTNKOdA6zoXGSVijLhcwIet52tH9XzyFmkZ73dWo3InPLjSyG71YLFNRPsA3boW9Eq9JWsV+NjrmR3fij9pV5tZJCIRSf5gcC7taSw5rKp3xn05teqiuhd+XQ5V90xUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778427034; c=relaxed/simple;
	bh=EcfIMnaM2CC1hunAOzzqOxQZK5JxDBHgp4SRiJyx+mk=;
	h=To:Subject:From:Message-Id:Date; b=lbm9tMQwSh5jKbjxsKhzS+f5xhn5oes0D6dcyNvLCQrPSHjZNafRpwSzqhjAewgP7cMXDmUgnEBOOkJbEEui5ZB8YqIJX+Y1nUtlm9FUomjzF/SjqjP1agYY0srhQu6N5UaRPyV7y1XAGHkCY+oqGsn+Hnecc28Ro3sV/6rDRNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNvrb8l1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNvrb8l1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778427033;
	bh=EcfIMnaM2CC1hunAOzzqOxQZK5JxDBHgp4SRiJyx+mk=;
	h=To:Subject:From:Date:From;
	b=CNvrb8l1z2dxSZajiXaEwA7QIj087SMWjrU+lHj4sclCogC+rAsvZIKFHPWZgIN2x
	 /bt3KwJ0dEd6J1B2BzmixW+6+48jCewD97ktztkufSS/bpxY7KEsopLlXNy5QumhwC
	 19UuwSDxJdy2QbOUQK8NyfauGHOCvBhBvQWZnPrW+YnjvooIax8ZVVJnQzZ0dk2ePm
	 w6WYnj27tdJYXESY+Oyaq619aFJoFwkESU94mH7yvaGcFq/U2Nn7hsJXEnubF1JJ0T
	 D+xNmZ1IL78plbwqkdjohNc6DMSoZUl5Vo4o1Fw0IX7KnLBVop7Jnmj1JSxL7vYrhd
	 IV/r9G8+8mxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92FCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842703369.5729.9502051771045673167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de984179d5631d562bc284f5f0834f4ded1961083a723c80af4f496aae937d8d
Date: Sun, 10 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778427033
