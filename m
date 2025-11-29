Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B2B2AD03
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764408174; cv=none; b=ZwCChXBhVvdSjYiX0L8W5mjRMqLV31nOv9ZFhYUjjSqfXRO6yc1v3tWmZUlTJ01t6yj38/BPMYcGdAHhuRrA5faCdgRGIIo7l8iBSIFmbaCPrftDi9sTiFRtOrnsEunvdgko81EnM9tenAw0mU8wBzeZtASXQDl/ANqDT2Uyt/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764408174; c=relaxed/simple;
	bh=eVq9DF24mvhFrUFOfmjjzxgpG19EazT6rqbkz4NMWqg=;
	h=To:Subject:From:Message-Id:Date; b=YjLPyF7e+BOsWCBoZGCvCo8vg4gmog2j7qkXH3cC/TQX0jqCqU06DWeCx0zHykwWvns6maycL174GxferCMu+9+4DkEYCoKW+/rE1pXDM3frKqtuEUMTHvUt16xPd9bvKNMKM9iokOgncfp9D6uge3B7IOeO46DDabC80ZDLlEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwORgGb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwORgGb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764408173;
	bh=eVq9DF24mvhFrUFOfmjjzxgpG19EazT6rqbkz4NMWqg=;
	h=To:Subject:From:Date:From;
	b=dwORgGb/WAnYRnoOh+NWCsz/vB8pMNhfV7AgQa+CaWUogW1/UD7nH6PKZtdL/FSYj
	 cgugYJa5TXkVTHod+3E/6qRIVZl2gc+YEwtNoHb6/O9GqIxd1W9oLFjNI7POtEDfGv
	 1wq1oz6p9PhXiPmzpcxNyYwN0Y+m8kIPnc/g7lTIV4at4CjD4cJSFPnWETtw3EM+7S
	 clcDOxmKk/32MKX3ENg+Pqk8uGJh11BaZ9682K+KIYmNecnuAacBq+RAFGx2obl2pi
	 DYmixKLOyar+WbQnC0oajclaTzJbRpa7V/tl902lsL17kk2uxwfu+IVZJRzVG5ZyBd
	 CymHgYC+imgqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DFDCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440817360.20653.12454658677037735952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2fde7ecc67a82478215d21ea2d57adf80b60a952c51f6cc0d4cbccb36374b6
Date: Sat, 29 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764408173
