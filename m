Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2872417D1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781986594; cv=none; b=ezwswihc2b+lkI9b1XqBD4JjgjK0LlXkAJjY+yUQVCBI5Gf8U56rB+aPOgit0d1GU0Fl3dqrRq5GvK2RUwFwx4quvvqi+SQHx5rtmU01A3sm0bOGbo1gmX34bWCCsO9Xjl9LzntrA94U5zKdbiolMjBkES/Yk9yXtQAJPSIIMtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781986594; c=relaxed/simple;
	bh=1unH9ksE7ukkrp4ojGjQIJU3n6O1ja4mRQKijBK2MLI=;
	h=To:Subject:From:Message-Id:Date; b=TTbNccM2XpWl+oFpPPyNA/u3h4B1ZfZFAZFTZopFUvghitAnB08q2nfRwteum9tPd6nAJ25RTkS1XSuevDl1uOp6aiWN8NCycJIfziZqV69r3c1qZFiefpHj2/dkwTi1rGjbsJR/Wcu6wk1DRn6FQ8eqbtwfm/q60eN1rE05fKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCDoFtiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCDoFtiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D451CC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781986593;
	bh=1unH9ksE7ukkrp4ojGjQIJU3n6O1ja4mRQKijBK2MLI=;
	h=To:Subject:From:Date:From;
	b=GCDoFtiEcz03wt/s+rravU1GtygIo7fFTIv/urh9xa2SFCkPP08fcX8onJTGYntXo
	 7Y/S1cjwWx4epLZLW3/FM0N2UpavbsNOcdW4GMsg8XuYNn0nCvH9CPOiu4KaHMVWcF
	 pKskf4mn5z89CH8c88saFU6aCtRX/vyY7YgJgXfvmg6ckavFFaOPszwJ6GO70cbzRq
	 Zij8VTIPr1ESrzDGU0qZ4A8kOJ4EEwX20be2l9RCSJok8BaohC3hnXOYr72Kh7Udyq
	 rPfZ5fjxBqAtiB/dVyXuKadLd5KnwdQxuZkeBqZ8ZZpKGV7eSJYkipEkoPXb6XG5h3
	 bGUjZq+/iKQsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65C8CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198659372.4007.6458636613855707090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff590f1bbabdb4e21ee46ff62499afd81776d542a7441271fa23d9a36b831e72
Date: Sat, 20 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781986593
