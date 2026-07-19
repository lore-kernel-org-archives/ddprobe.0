Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6087E22B8AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784450314; cv=none; b=X9zHu6/X4Nor1Gnx32P/bdSYA3TiPLz9MnFSvQM2AUXcwOlqff+JILDIXieg7K7OJCCvn6VB1tSFI/CIczJRbchEuw2MZsXUN4BJRHCre5VhAnVnJIrNHepbP+sEasjyjSnN0bjdE9E3f0x1FJp+u72wwVT0CZExkPUrjWFsbss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784450314; c=relaxed/simple;
	bh=RCo5jVQ9lzi0OYhLpywuSnIgk5TqWfBMKVq/yYu1hZ8=;
	h=To:Subject:From:Message-Id:Date; b=J5xt+Isjg0kfF8/CmxQdm0tjfRSNX5kgU3CANxH1Z68BBEDPbIocbU25YQZWzf90dSAAXhNng0b8wadQuJ2Fi9ur+Wq2HF26wP22ogtrojyE2GQbRD0FMaBdtDQz0wnaxOWl+XR/+y/at2ZzAQpiMtg/jjLQAwzVQuXC39+3Hak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFwd4jYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFwd4jYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59B4C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784450313;
	bh=RCo5jVQ9lzi0OYhLpywuSnIgk5TqWfBMKVq/yYu1hZ8=;
	h=To:Subject:From:Date:From;
	b=cFwd4jYcggX+kUr4cNNztnyV/e/3olnpq8K6jzwDsc6x/328IwV8TD1gvS9ZC7oYB
	 QPD6VE4aL7qjNT6D1YkIlBcAU6FJRuUYXVIqDsU34yne8onQ+ebBYG7ej6Zt4XFRsE
	 52OP/4mhCCcQ/SyTZbpYTLtpHMARHiEwD9T+oXiZdHPQ7Fx/cO8PyoaA0bYomyddtC
	 lLlf5GlkoF7lIE/UIT2O02Vj3hsHPonx4GnklVQzBwtuZ+8Dfh4iTeKjjwoasm7eLh
	 h+cXlyhcwud0GXBsedSl5qzmc9ZIGYpVQajAJqFqCjDbitZyzErirjGkb7dt1nwkmU
	 Yd0beYlaagdZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63BC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445031368.22343.11995653165573925611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e8b5fbf675d18361965c1871cfb8d2ff53a75ce6c911f3392763c4cec0f4e8
Date: Sun, 19 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784450313
