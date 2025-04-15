Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631F163
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744730394; cv=none; b=mUVEYHFg427k9mMBTpOpugWgxrAVzv5qTvdZuU8vcqHd9UtwSASYU+yf2cI98a7N3Oxv4A1DyHuvuMEjg4CTF3rp1j6GLB0JthbI8GCsYimfLRBhRFCmzJgpNzFrYZF6pflXKjeF5Oqc9jjnhZEwkTEbaNDSUgDv9BbNOGrslTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744730394; c=relaxed/simple;
	bh=vQPWamYFXrcMsvFbFuO9AyHO40jBiEuyXdvTiM1+6YE=;
	h=To:Subject:From:Message-Id:Date; b=rXoA2Xz4sSlRkWOUmniL/3K28T3WiGXcE7rbnVyVeA5Hj9ZKrp8SfjUkJrzTNbPooMKfpuufKQxaN118E2Vawq1St9Gj58dzbFGPxnccGsVa9AVW2vqer/KKmdKx5M0H881cS6UtmAoJW8V+EJPaeVezx4zWuXarY09iXj6jZmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3Ccz6Jh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3Ccz6Jh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744730393;
	bh=vQPWamYFXrcMsvFbFuO9AyHO40jBiEuyXdvTiM1+6YE=;
	h=To:Subject:From:Date:From;
	b=j3Ccz6JhIaTOvfPp3Ywn9OurZMDOx+zKHA5Hi2CjjVpy+3TtTJ6VoT382GwmYxmeN
	 zASJ8OVxcOovvP3IEm9HkzOBWp/TOvVLtgzrTBvod/oeENsOdox4ue+7Ff6W6Z5JNa
	 2nO3tl/PyKSZq8nvaOIB6pGCqda8nytKAxEm5NwZ8+OOPSqqm7zdxJUqUR55U3ussT
	 DlEHuptWrY4HNJRNcuuqNqe9x/k9XZiM91uNnMT0CPrbQns54M/+GvAb0GAJ+8FqGx
	 15aJ+rS9KkJjas8YPYVmU4xqA+kltleVhdi9Amuy1xnC1QCj9EU8puvcZQ3OzPZIsW
	 mv56lRTRw4YJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9346CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473039359.31395.8129592502391121714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38dda960bbb82cc5f8d8007e5e65287b9536bb9eb3919c4dc3a47a382193309f
Date: Tue, 15 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744730393
