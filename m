Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D2F1D2F69
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725453354; cv=none; b=Dm/sh7mmQO46WbFKtfLjD7oJTdTc9bwVcnPkO37M/kjp8HZxoyjePusZ3Y5aDOJ73PbZU72slx0WTq7PCjedzgQ7rcGzPaOQ2/11lJJ+WgO6LRCUfZcQXJ2ZG4WsXaNFfexpGjUVHtgfI2gqhH0JVcZ6ArKSqlWSVAeL/unLscg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725453354; c=relaxed/simple;
	bh=hisAK8+gpYnjTkZz/kx3zGyGR8MolYMzB3gFDeHsA3s=;
	h=To:Subject:From:Message-Id:Date; b=f9EB1j4A4RB+LjTDoTg8+DwI0mvYAiwmXXpHelFXxDR6/loSohbQaJY5EB5aAjTMslv6WICBzP87hQ3IJ/G+C24SeJD4vNR7SFqSa+7ZiEKvas+qvhIKnlZxxiciSRZLR+msVi/TlfcCbLTcyACRI2fAByAJfOAILL2caGdHTJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwCI/YrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwCI/YrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BCC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725453353;
	bh=hisAK8+gpYnjTkZz/kx3zGyGR8MolYMzB3gFDeHsA3s=;
	h=To:Subject:From:Date:From;
	b=bwCI/YrH4HWnL3gTuXmoslvxC10fqPJfoOqsYJHXy1hA2A2RAmwETnyIn6xZvauGq
	 BOlHpmZ5+Wv1GOTGSpdZbgUwKl4vVaF61feVRJgqVsz8UIF3nm3VmuwlzktwM64lOu
	 jf8f5SznVg+FBfy9oefafddJ6aEnjonik99t7WpFiCrs5IY1+rUJ7qSFSqLlunjQSD
	 t6aQbJj7SdbFqblNR0aqjWmtz55A6eAWgsZSnVgH44bIjhFP0DAb+a0ezUVQJamtnd
	 0N1vnUlWk1k8eY6nSF5lFPeB0mkiw8YBtdStCJaNRf4vQX8j5HLwuWoa0xdvFWE6CK
	 VMtp6aqsQMjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA8CD37B4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545335358.7363.14353855515745818685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9832b9ef520b8a8be38e1016012756246fe8b7f2754496d30d8c55c6b613d439
Date: Wed, 04 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725453353
