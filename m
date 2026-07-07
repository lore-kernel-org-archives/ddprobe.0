Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5DF2DCF57
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783410514; cv=none; b=i8s/iWoKfemaboE/5wUj2cR60LjRpOUHrEre6DYPUcXTmDxavUE1FP476vbVeAYSDqGEP6EjjHC79laXqGGk4Nf7IvZACzv6r19BtuWq3iR3vPKRQ7+mugfCc5W0F8Sg4fE6JzrazVKUYSnG3tlXPxh4BIHZXjTQiHmBCU2VpbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783410514; c=relaxed/simple;
	bh=y3ZtTnPUuDjicNGFIyCvtFB0OY8wk+/IOzpHBArFPM0=;
	h=To:Subject:From:Message-Id:Date; b=fCUi/IjLdWcxZTbrOKfaB1PqHKlije5qSTo1sBRB8514xBRhAKU/TahVm3NlExqIhsk8GE0o9ndWDeFofcZpYnAo9DZlNqOy07E6GRXpqHnKrh1yTGjMZVMpWUhP4pZfGszfaLYUsy8p9TfyNPypASaoSaTaZN6UGOx/Kwg7ivA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMrEqXrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMrEqXrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CC4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783410513;
	bh=y3ZtTnPUuDjicNGFIyCvtFB0OY8wk+/IOzpHBArFPM0=;
	h=To:Subject:From:Date:From;
	b=MMrEqXrme6XpcxUd0S+dXxAMkIovC4kvmtMQhOdx4ryA1RfKUQzNu0FoAcvrXxCr8
	 h8lbOxWQhALwNcSD9v0gimAnPtgJOIv7IlSQ2YAxT9ZLPi9sikI5zsBeOdl2iiZuSA
	 DujCOQJtuhRdNm3gAsxmcFNY9728F8Yl35vwMfiPb3c73OjgnIl2wEtnVzaXlG31CI
	 ZVVZ/3MBHoFZfndYBTcyQWP7QDQQpBMnOlVb7qbmvXcctv25lINL413RKnXoKiPUTH
	 hbqpPEX2vPH9EPKw3L1AXU0eMZXlMyVCcsfiLlPkpJtbrs6XEKcwOPmzB5Ahg4JbdD
	 p7AIP/9hfPK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E46C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341051372.29395.6481675082732255818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca0151315a4d7c4c68d4cff58a2fe0012221cec183f34206f42684a02c81326
Date: Tue, 07 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783410513
