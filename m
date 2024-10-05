Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D668200A0
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728104154; cv=none; b=rU4o4YBYZSk024oMdQv10vKnBZbJm6Efpk1baarqJ3PETDFJc0cZWQzXoMKaBQYgo1XmJaYMakB+BPNbOIBtXpWZCvwEgl/TCQhbFxY8m9CHHCexagAY4cp4WjIHCxm4AR1UzU/L/RudCb6uIgZUldYYjedLKrggNnFJdmhO5sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728104154; c=relaxed/simple;
	bh=UkvQNx5sOiORQGly30Q4sYgSun9Q83Tb4lJNfNUDlk8=;
	h=To:Subject:From:Message-Id:Date; b=jd6mrxINEbJxKyITp8sZtpbiQLA0sKUP6ntGa888A5P04Bl2yIMuyCyn9QfkcAasPMh3BPdTiuia/1yqs8nTe+F5//1fJfFOtBGmnMKHPia97y9tqW83e8GQG5mBB+imSqTJQKaw1/O9JyvPfl9hcSEAht2+gL8nM8sIonTIrFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVeBN+Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVeBN+Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E87C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728104153;
	bh=UkvQNx5sOiORQGly30Q4sYgSun9Q83Tb4lJNfNUDlk8=;
	h=To:Subject:From:Date:From;
	b=cVeBN+SuSlzoqIVPZ4LuvZxhCJfzawvPHrUkuniW6cHd1k1cKGz9EoexDQlz2gM1P
	 LlzHALnYksN5Pol8L9JKNUfDzwe9DhvM4s7pDiqOGhLYcwQxNuqodIURiepV0bYQ58
	 Uar+qdPZdh1yKcwC0YXI9GR3WbHVA92syvuSEPRBeetTZBbxxSnwPZzlEs1LnmxDCZ
	 Bqd7ZQBWLdU4lpTY6VxH9XvY7WEBEFx4RmT7g6azCi5ddkMFSvg1nfVyLbEEEZSOij
	 emHuRTj+wCXg66pcS8KukUeQ0ov92aIznXI8PHhNxSVxzKXXCacxJw4+JHJk1rQMY9
	 BhHtWwAe/FV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD4CCF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810415360.25108.12976380669430595153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0792582e211f12341352aaed1a310d1c19900a909616faf20e0082478ed366f5
Date: Sat, 05 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728104153
