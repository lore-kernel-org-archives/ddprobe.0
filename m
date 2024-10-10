Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1C2BD0E
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728524754; cv=none; b=LStgCXoAfylQQvqg+UXxN/ZmIsXN8BNhMwua1sWjv0jQiuXvRh72EXw94abeOjQ9slt+rNTkgfaFv2DIEKrAjooS02ENYfLmkOk0u8MfBfKcMIdy5nMXuR+Llt4m7uQ3CLrW3Atn0xsjv8hDPQv8eqKwFrgT8RndC3J1Vby0rSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728524754; c=relaxed/simple;
	bh=0HEfeWyX+QfVQadaICTjqx7ShHZAgQEAJag0Nd19w4g=;
	h=To:Subject:From:Message-Id:Date; b=uYsDC7hpRkEj9lieR3jGlAmj+1+o8TQIKNUCykCF7wCZX1aUOQFVH9RO0hoRzXJe+cWv2wQ7e4odb1b6Bl6eWoR4Bmp9UHKl1z7hixPTlOfPsV1EYe7YIYoLUn+ZUR8b45qyblMn2xXXpCYod0kptyNQ6SIwwyLnbDHM1RrSIVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+cJhYL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+cJhYL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F70C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728524753;
	bh=0HEfeWyX+QfVQadaICTjqx7ShHZAgQEAJag0Nd19w4g=;
	h=To:Subject:From:Date:From;
	b=L+cJhYL5EySVMPmo+gvjWbkNC/Rz6ETVyWixftbMy9Uxx4MNOe8tdYwrcc4PNSFdF
	 F2ij+v/+OWXw/DVnvcPKTcd/J7DlUf69h3iLqn5mtJRwIMh4oSNV1WFuq9HksxZsWq
	 pythHzGiwc8ewXf+0K2zOgsXSEzruC5ceLssEkdXtzhx588qI5pg24ijfv3wwJ72oE
	 Ru0oROO7xUJ84AjGOEiN3evdk5w6ByjwhoO3dYKtokkg+GYezkjd3jkZcEHWaYBSOP
	 xpEpyrO8sNDjhXnUQP5Jqi8/pSZp/JcUGb1l9HwzOgFpfJQ64EmJ/aoC4/CaeM1Ife
	 YicOiEqcvn/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E16CEDDB1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852475360.14090.9698558651486173390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b097943b0a7fc08ed514abe6812c99a55156c10dec98daef21a3146d38c51a
Date: Thu, 10 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728524753
