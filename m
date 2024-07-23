Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E3F13D538
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721768754; cv=none; b=t41yUxsr3uJg7OrznywWC1qZNR0S8+0VFG36c7snCnTouZnNTjiFv/a0ki5JfkE3b8jLQ/0CZxF8Djk5LHAanCyVUGX/0H4RGoT/Yk5W4pulgvH8ZRWVBCpL+OqlzAK9lnc9xA8gOH+MEqbs5AjWA0wN4qNyY7Z6pYDkSwjbVKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721768754; c=relaxed/simple;
	bh=jk4A69Pi7WBzABnUglG16uks7LgS0zvkcgXw0t7co3w=;
	h=To:Subject:From:Message-Id:Date; b=XkAGSYUsQLGmv8+rxRq9ZMTiV7r4P1Ov9XbKU3iGhW21us2LTa0td0LbKYPOV7EEX9NjIzkHFw7cCVfn8Y6GBtwx3yAdFNFL/D4EwHClOm4Uz3+YngCSQ9sHGEGSHLnupijv5ahyUVOaZVXdtSoKnWzmEk0BO7gEdVl5QX9kiEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFuHEThN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFuHEThN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1A0C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721768753;
	bh=jk4A69Pi7WBzABnUglG16uks7LgS0zvkcgXw0t7co3w=;
	h=To:Subject:From:Date:From;
	b=KFuHEThNSAqMdSEhHKrDiFakuYwaouEQC5K5ZYblmqvw5qls8DtQph0yDZk3ovX/S
	 MRezbIJwlK3d3squ7UbXrqh5EJaNlJ/9H8MZnuETcJ4wQKJHMZu874PD2RLxoqbusi
	 Pv1pLr5Ol4X1Up30Imnow1f7DD/AaUQwAORTdNHgCGC61F4GB5zdp7kH9JhUX8x5Ll
	 SiVtlpSXUAqSu8U+W0yaXz9FP0UiWcxT5FzGHDosl94Sfqq8N8yNjdWYiV5tpelmGS
	 NCVZDt6Oaidyce7OprL5x8LtShdYvzFTWDhNL6IZegtp387eh9y7xxoUOke5Eqk9zg
	 LKMzqPI+9b2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67F7C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176875366.28819.10305074119908976912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23de94f7649e2f4fb763511c5c0400c3ace7cf0d1c0fa8a0414f43ce6f4da328
Date: Tue, 23 Jul 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721768753
