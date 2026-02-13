Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0CA1E0DE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770998694; cv=none; b=GIojRFsWEC3WSZeDkXRSLK03CrKNUPA+fQPpRff/FsF8nq+v3fgPbZ78UBxgKnwgy8ZSHcjAlv8fqqzkVa+yhcoufAM9fxnq6Ju7WB5+3ihEG7gXRdUFwFwHb9JgKvDHylJrGB9vZw3Da3+4xler5qo/C8tkPO5JRrhyDiWnRwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770998694; c=relaxed/simple;
	bh=IV+nOWCG0dDqN4qAg+RWvDvhT2rFo1R8UxRyRYsuzro=;
	h=To:Subject:From:Message-Id:Date; b=VMX9xwt1uvag80pSHOUMuirR+3d8tRUcjcyoj4wGUAxge5pp9oR+fGzUqXz/juGnzB+j+KwAagPBKcfayAFSkwjxD4fK+whefVVCjfhc37+e+SAqesRL+KoZjW+IZV9CzAAB9pREpTB0eO877pTB+moLVeXSCJWw0t468GMm8oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaspGKeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaspGKeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE8C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770998693;
	bh=IV+nOWCG0dDqN4qAg+RWvDvhT2rFo1R8UxRyRYsuzro=;
	h=To:Subject:From:Date:From;
	b=NaspGKeXwYSdT9bYrxSJdqfeMqF2hb+iPSeOW6y1PNOh7qJkV7bYtRT96qAxVl20F
	 59v7T6+yd3pHG/JbMHgRqaQV8qsCaA1SLrzCSyUW3tL4R/PEFTWpFnWNfDHwW3Gji+
	 RXjntqEcmCfKiRlf/yK7+Op5PnKs3+s3GBF3uUu47mySQW5hGhJpAVTGB0kIKLarDP
	 MT+hpfQIyDIjUz8gEH1o76+A4bbkXqWNPmVoCZQu0yQ2C+vS0pkkzedWZ7bo3Jkijs
	 mnqUukPX7LlSwqYOjCq1xQGxpRCX3kYG9N/y9oAnKzTbnJ8TnBtN0d+Q3kUJQ5a4kw
	 pW8YulUEI9mIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE1EDF17C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099869360.20277.5342458185756058897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2070d1c4712b6c91969c397666757df099cfc2b988c6c50a627a9f54ef2f684c
Date: Fri, 13 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770998693
