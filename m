Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B49D9463
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761262794; cv=none; b=FtSkiENCAVVh6Tqi0kKiU5ZPeo3k8PpWJt8jGCKl+F1WC2aG2hn2k6sLQYBZDsb6RTJ62qPIGlG/0aKsYjv+W0fncVmBOJjpNQv7mRd8GJPireLThWkfX2MfW2h/8PX4TyDmM40ubqxK2DYhsQeVrKcpJ37PkSH7v8scpVOfIT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761262794; c=relaxed/simple;
	bh=PDuXg5e8KOTkPUNrN+iH7oimpSGsCSYI2wfZVzyJDpM=;
	h=To:Subject:From:Message-Id:Date; b=NqcK6Gl2MpfxojbVJgdtHKMLQfO1/AsoQSopWVzzAQ0a6NhFuXx/JSQPL+YIgmyOgelbY46Go735iPJ8Gtbb9gHpEWNBikMlgaSwunGAH1DNwvNFQG0FQSJojkiYWd98A47h404+ke/i2AB7S02wGhujd5JzNsW4lB9/OrKCYfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpZkPe6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpZkPe6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5037C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761262793;
	bh=PDuXg5e8KOTkPUNrN+iH7oimpSGsCSYI2wfZVzyJDpM=;
	h=To:Subject:From:Date:From;
	b=RpZkPe6stL8C7j4vWRfZhg/Kygtj+6cwZlc1V90r1jaKJCjOd7hvUND2NldL4suvi
	 YLawEHuoHfhzjg5Faer/OVcGdPVzbWUquLKRenvzN1BF1KwpqW7oex89APXBcdXV7m
	 dQ31pxLxm7Bxfkg2ABJLUkWU+RWHZGjszdqZPjJU/81akMV62m+QcGf121tE8aqUJ4
	 ZTqFSZTEvpmbwqt6YnXJlEEM88AgWdt6r/S7IMt6ehrzhtUtJxDa1G+Ru1ea0y+dko
	 jdJplfh7i68uPp3vGZU+HRjJxHmcLOtOYktkgcxLYGffD7ipy83HW0hj35VJjZEOm2
	 EHN0vqdErk0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D0CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126279358.26086.10270583852680829919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e01d620156fb550068854e34ceb32e4d0e955276852c736bece69d7cfced32
Date: Thu, 23 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761262793
