Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245CD1BE259
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725051954; cv=none; b=r3geWkNgvexKnA+MxRMf/GrB1zM0btZgA8vjQly1FwUig1VFrhmBhUkpI3lklbKsdewf1MWRguz9yQHe6ru8LcwjutrKIj6yz81otiC+ufhX+17LKP3s0qZJKe7K4MVq9Smqg+ilaAQDEsXDSt/zS2v/CVk2v+TzGSjbQeMZl+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725051954; c=relaxed/simple;
	bh=jio2ve00o3j9aQHElAmMdggZwYZjh0/s94rCG8X6DKA=;
	h=To:Subject:From:Message-Id:Date; b=N2Lu5vKiMZLAnieGMFFgHgY1yw1jXEEgwe9BekH2m5SynuDJPw3fh2MRqfiNGGcMOzL5oNfYAj7bBPLzRwUzNwbbBJ1HLYWbbkKOZSrj2lDyo/CcolciU52j2f/Xok5rMjohlpoaBKE93MR6jyp6uZU/TWWk0nOsaFOfnG4/hks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVuoaq6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVuoaq6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8696C4CEC8
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725051953;
	bh=jio2ve00o3j9aQHElAmMdggZwYZjh0/s94rCG8X6DKA=;
	h=To:Subject:From:Date:From;
	b=IVuoaq6nIJE1B4+3oZJOYE38tSWZIpJtrosWOMhlUr72IJOLKdjPfPZoEkYp/eedq
	 cA7jTPSznieTojMoqxacabzDao7aCVvQK2s0UpmsF/0XyFy4df97E5Kl4ajLmM7anO
	 T9m/o45jyEUyP8d1NpvoJjikKzHrVQFbUjfydImtb9OG6I5Oc7qx4M5elrnppoR/s4
	 PDfFwvzvAVOc1IMZuMsfB+LafD9zdazFStfLRZCeSfNoQJquATDtL4kIhPvNjR/ng7
	 B+s3HmZEERjK3S6kqp11RTDodQWvJ/XWkKCT59TTk4GOrVSp927UikRhptzucjXhtF
	 PzgJgNnuHeTVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B36CA0EF3
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505195358.6508.378316919493826832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795d38f5c9dca2c373f89b8acee742f3c779c7c1a84200d727e4479305e19d44
Date: Fri, 30 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725051953
