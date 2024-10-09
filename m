Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7951E25EE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728490554; cv=none; b=Qowi0EwEwZjQOVLcDu25Mp1Y4opRntd5lIn/Z9jH08D495QfYQZx9oQVbsuM1+nxYXWPbSipwWQmDTZQdaUATzRka/BM16Rl7ZllrMHU4VUUbCyldcNe3wVuroqZCxS39MlSNKfScsH2HZ1K5dERd6VVBwY/2tcKZmUNirltOqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728490554; c=relaxed/simple;
	bh=uDWJU3vaOAYJ3cV/zMa+skEhQBP5Ny9ww7qriVuPmys=;
	h=To:Subject:From:Message-Id:Date; b=sA3h6nrT0G5abQR0rSwTboiz4VLWkHH0YPa7dtx1v4OlYshD4dDu26IgEUMJtrPUUw0ncu91RbsrPEqjny4+d7fuwdBiWSreQNVkO7mKihKoQfKYJPa+u1QIdN1LriniF6x8aPEjrRP7ceD51nVIWH9ZSJbVtc3SqeXdAtqeUx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEE6Vm3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEE6Vm3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B23C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728490553;
	bh=uDWJU3vaOAYJ3cV/zMa+skEhQBP5Ny9ww7qriVuPmys=;
	h=To:Subject:From:Date:From;
	b=gEE6Vm3/o6zaAAR3Kc3RKreWWIL1USWdKMymW4y643D9j7oFVQPFi+s2ZxFDi81dA
	 E1piVU7dbZ+Kj9U+HW8y69qFIScAbbwjJeC4INFaCqeiPBGcrX9q4lvoShgOebtlpq
	 1a2YSO+Lwv/dF9JguDFuf9CYXD181J3W6GdAm4YjrglcPh37lyaG2KMTbp9xjw6eiF
	 t2ROiWrfwEaW4NjSAG9syNTUfxYhxvZXnHnmaEdHNWvlv/lg6tMREIoC+wWrKprCzW
	 Juu7KPAs+3XnR2ahDxEGftMm7y9uydU0UNj8cRaSC7Eh+ds905xQWetCq8iTb3MLNp
	 ewM/5OWbPQJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1013CEE32A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849055364.27941.17640128269650732464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea4a680de2691f52df8d91145fec2a19f0cace17b271a97a29f2bc327032309
Date: Wed, 09 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728490553
