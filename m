Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F558FBF6
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716988463; cv=none; b=keDiL8qQqFcN9xs/chlwwR+E8SE3zWybVUPYif3e0FPHQMFxcyeVTGLfh/jWhANPzOJ7akcb8NRLc7+9gKJ2BocsZ/38O1BbAS1v9Uf1zQS4fKChs+8iMFC4wUfLeB6JtvbPfVCtBSmVbvQuspokLVlTLpjGpOSwUgwZqY4ThKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716988463; c=relaxed/simple;
	bh=BwT82Yw1TaAm8rlTfJ1RdKNcxbdIF6gCu+sxwQOdVWg=;
	h=To:Subject:From:Message-Id:Date; b=FHC0+KHpoqe8dEvk8uetCvs15vjaeY1gzpL/U4LvuNETDkMbkvE2r7v9M9uU1Lc3iT5MHvOE1PbHVscPFLRqWt/RwQ52fFh8IvGBIspckucgTmicaRBvqsqCoZ3dH2LotjMaC2JVRq8d3M/kN9C5Jea9OTs3cwrY3+AOiXv344Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOcxIPGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOcxIPGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64C3C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716988462;
	bh=BwT82Yw1TaAm8rlTfJ1RdKNcxbdIF6gCu+sxwQOdVWg=;
	h=To:Subject:From:Date:From;
	b=JOcxIPGJs/Yf5UKrErKJ4/VKYraCGAOxkSh1GPCSp7ec9HPB7+PYR4o471YGmyeO0
	 OUCH+hyQg6YMjfnhv0rvPpLcR61rwlvud0CjqTtV2gXdZXr5wFRGCv6qebFc04AIkl
	 vx5flFV4DoDx9vWODUFlCjK+HVyXlXx/L6vR7Ep6r/Iqx7fJtwDy5jcmJ6kKCl4hBy
	 2Bo1+I2B9FLil/X1yprKVj33SeB9K3SGAjOq0gkiZN+cFzXPPuxQDIyGokIHvKVWW0
	 IKjuOFEEcx8RhR1ZXgxriHaQV8M1kKv9upvmCBSwXPZe9ufRlcEv9rbgNxzQnMw9wt
	 PzoZaokpGR9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDF2C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698846283.10659.9611019730300496625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c9a7dae4861bdef03bbe62ab1a5f45c1a7e6f05825ddce33305c901cfa2d14
Date: Wed, 29 May 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716988462
