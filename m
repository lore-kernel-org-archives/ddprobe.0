Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E5BA34
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777758454; cv=none; b=rme+qjWB7sxXOu7Vmt6xfO38YTZofnSlbz5+O9dHmNlTA9jZk9KAtbOLh6V1bJL+7TjF1KAkvnbA2tK5wHwT/oydvNDiHCY473+Jjtq66fVu8A2PoqJKckrI2XT2Vw9t0yLdhxah79S4Fbw0qh4qwaav+br1CYJ2ZlqbPy4P9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777758454; c=relaxed/simple;
	bh=UadLz8NPA68isG/4weh1Ga2kiQavhkApZfJJN4Ql92k=;
	h=To:Subject:From:Message-Id:Date; b=G7/JlZKqdQ/mUVNVmE7RBwmS47CLahfhLUZZjt46UdCv9FXSV21pHYx6ZFSqCoEOWAdvJI0IuA5B9Nn2pK9ZAhC7qv16d5errvdhX+5mjBI1p9BQesO3n0phKULY5TZVs6SRNBNngyLrWC8Oy3maVztHPpMHY9P3qNVBwCxQVc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfb9h5k6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfb9h5k6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1713C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777758453;
	bh=UadLz8NPA68isG/4weh1Ga2kiQavhkApZfJJN4Ql92k=;
	h=To:Subject:From:Date:From;
	b=lfb9h5k6VYuCnmkMFX/+FClCvUqZ69kJb6iNqEFxyzm3+EKgWNUJQy+HPCO/oixuc
	 QxNC4K9GtM3TuT3m3QnXyZ7+tFwQb+MoaDYKtfDDnQXXdvPG9uU5OQSUbgxZEKzivv
	 +zZMzWScjqMuhcfjYTJzQT/zLhshNOXafi1TJkXr1fLvFS7vzQh4wdl7l7Wb0ANEFH
	 0jjsMVaTDRzS6jNKKpLnWSLF6KCHL/K9gjas1fQ4ZDS69VMGWThveMU4X4Ciw8557Z
	 7/q0Tf+blPKTHVATirRTIVEKpZOI+5JjiMDZuvsWNZN9FhUsHy29KL4qpViO/9yXZP
	 MKcTHqJpZ+Yug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC600CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775845368.30089.3120297765549103855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e82c546b69bfa61a3478676a344c0897a3b43c6553c0d73e0d47f94c4897178
Date: Sat, 02 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777758453
