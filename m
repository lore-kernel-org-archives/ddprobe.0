Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC1239561
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961594; cv=none; b=dJH4QIOu+6Pj/GYNmb25egKf7eCozyHmQyVsY1Z9G3Eh0BckabDGjFRSaEzjZS8aRr/PFhd5PwS6lF36Q7/y+XfnnXL3SvQVA1He+fbmzJNXhQjLAyiuC1uBKa/pxV+Q1yTJ26POoIIBxpeXcsGok5X6xt8GG5VJcQood/zkyYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961594; c=relaxed/simple;
	bh=kt3A9vGJ0l/lcB9WErbjwDvnNAuabqgZCphWFT9ey10=;
	h=To:Subject:From:Message-Id:Date; b=uWc6iLJ/yZbAI/LF5v1VZs0nPJwDqtGcd6hkcmE32CgKr/SaXUcOWKIFYrjDwyEdMGHuGRACaFULXBqhQHYapBFAJkRUXVp39/+J/6NUTXozlO+uj4HeL85CbPqMKyfKJLDQZUUSx+h9yRF3gj1YgwXRyV//JRoAWWInU7rUiJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUmeHaKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUmeHaKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4C3C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748961593;
	bh=kt3A9vGJ0l/lcB9WErbjwDvnNAuabqgZCphWFT9ey10=;
	h=To:Subject:From:Date:From;
	b=UUmeHaKEejm+0SnBg9V/G+jk0hApPlN9/kp8ze8p9DdxVg0W46C/GkjEGkcxcRIBd
	 zlVK+IBzCHUf8wXHa55Vt1ynHqtJ35eo07i70w9DMbZDdxzP1GLj00zRu5WLdjMujl
	 npltiR9iBNKReNN/kN1YwDBZ3HOQoGABY+a6NdgAJqaJqS5vI1m9FZdZwJpgjZLMww
	 UkapTRzROC6GF7t6FTo6G0NgEZ/DjXTBmnWu5XiKT1igZPwUPypx2nQOwbOi6pvgEI
	 FlAT3dy2TEB4UD1osyEy+DKPoqotIzKC3M9Qcg5cNWWTYhRxO0u58Cu9V1W39Mc+du
	 Vvs8BihzEuGnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC5C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896159357.19163.627501148688055379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740de8a52d7abe648a19419de1eb6b0e14adc0f677489865f4eb4e4b60fd8205
Date: Tue, 03 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748961593
