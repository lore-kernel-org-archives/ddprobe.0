Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CD2C234F
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756930794; cv=none; b=mu6E3BZ+MAcxH5LfewJr6LhLJuzZHPBDymLmwmbLf1uRFdI4QBSKhQMIiO1c9SWZze70hyWWHIX2zVpEArxLSKtuBAl6kJHYAF+OV0gWHcbBXkDd4hqoLm67a6CN6H1jCVXmTMGuHQFAXWPs7/W5lj8LJSpYxtPuBJJ+Oqik/Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756930794; c=relaxed/simple;
	bh=1WJKtlzqdnMa3SdVkQSyMV+B1zgvjZvfpy8GUlpCgS0=;
	h=To:Subject:From:Message-Id:Date; b=ctmoAJUcEh3dEnWVA2vSphcxV82ZoU8Wpsofcykzfl9EbC77rbgRswpzASi34uKhmFrQXNajdbVpLYk2XpaHlI8y2D5VF98ku9kojEhif+efLsAnuF0uWkawAYcenRmXPAhCvD9dSq51oSjb2cetSEzEy3UjjwUUhL/vrMz/+yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6WMCfV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6WMCfV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5459C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756930793;
	bh=1WJKtlzqdnMa3SdVkQSyMV+B1zgvjZvfpy8GUlpCgS0=;
	h=To:Subject:From:Date:From;
	b=M6WMCfV8XUVC2STwMxqF4dSPHDAB6MC2BnyL5zYcfoleMNbv83xWdx6/H8Lv7m4o3
	 MnZJJadkjSNfyO+GejihuxiJUjhTa6a3jDIg4vyEkVGpMb26b2xNDIJNQlIUsxU437
	 RZBs25d4YaDyr0llx7g6Ox7sQMX4aKIXOy+Gg1PEbrykgSpyJy8EfSOBoHmm+2KZ3s
	 1eXHUbePfkzdvuwzrRzUTbC7UrxWnV6mRnhCRwxcAnzzw3mrlMofBszrrPlT8LaCjM
	 /LkMS5jjCYom0cvEUWpWCZ3Tj3h6NXSIGgaUfqyMxSA8AkvQ7UWMVoi211c6s1Um2e
	 uUJUMdJBnPCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE1CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693079357.27906.10796763425097295737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b840c77f52f341c3c8d2d7b5c2039397467e403d2eaa2aebe367c381e5334b2c
Date: Wed, 03 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756930793
