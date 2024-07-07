Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E718C31
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720355783; cv=none; b=RFr8rwWpZ8koNtZY9Lq68L90l6J+zzCi0J5+jedgLDr4x+H6EEsBFIViiFa/QCLUyialvklP7oqJeRkKIHQIIoqx68t0UmtDrYhX9G/D4QKHCTBSKGpwTupCEi28K/PuWzjEflRsjIMPtiyWGvp77odoEMWbVjusoGVnFHVthfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720355783; c=relaxed/simple;
	bh=pXKqqHkBEvbWrn4D/bQ8g8PjQIJVpmnmd6pHOLo7AIg=;
	h=To:Subject:From:Message-Id:Date; b=kTD1C54B2Pwu31ZfY7m/R5+xcarv/e5AkwQDhXnviY6ZEB8NbaBgC8KiGRdBcPMt/HYcnEOSFqRPvza3TIb9n6dTDq3zN26GoKiunxf93laj4PwC3VdTCSOxi7e4SuZbLWxJaL6T0oAmWgUvolOLYrQcW44YclTjJ5LXN4DaIAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POIM/ou3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POIM/ou3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC7C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720355782;
	bh=pXKqqHkBEvbWrn4D/bQ8g8PjQIJVpmnmd6pHOLo7AIg=;
	h=To:Subject:From:Date:From;
	b=POIM/ou34603QAEnqcsazOFA98MvQklpZi3NOpOu2r4xNi4sKPJ4uB7PABbwtmEpp
	 +w853nERq3xaUcREWkMSAfDoYa7XZl7BAeVkG1MOsYmIVrDeaBusFWXx5VLLIYaHFT
	 zMl65rjlT1QG1ZdMYfWBIt346tTB8XL5QWa5l86HZaVPNesYb+Vf2RBh+rJSqeCKJl
	 TKOhw3l+ubrm+4JP2f7x1Et7bWZjcN0YdLhHDnwXJzFbliQHXHqObwQ3AInF/tabyQ
	 o2uxQT/Re3pDpDi0z6R1OHDXQBUUWtLneVGR6MChRVVYD3+ksrDJbZJsSqTIkFWSr0
	 oIhilCP4AkZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE455C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035578277.22728.17430000897215288284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28c0a97948135d91861811dc6f00e657f51b0c3c19e4bd50b6c20a5c1d3335b
Date: Sun, 07 Jul 2024 12:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720355782
