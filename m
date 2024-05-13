Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5758B82C60
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715632943; cv=none; b=Y6AJ6NyzK9YLk6KNyLhcdFFhWcyZkKrSnTtCrpuIFo/YsVebMkdtKjBH9V+BvZRKgyl0odnNtBeOFBsBRlvlHBRkAHm8rjk7ZUHlZl6a5ispBtnbEdH9BS8eoBthJonUDDU6yzaBqsAj8RVYLEWW1z9GpthSxXdz2s512CPuqAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715632943; c=relaxed/simple;
	bh=1WBdP9GjQQmuRQXBCvbgg62cCsF9i6a5qkJbHzWaKHA=;
	h=To:Subject:From:Message-Id:Date; b=UthfFBQAvs3ojunFbPAfY789UfKc96+JE+N7blRlzx/pbSYdA6ZaQ1yP7ieWTV00UBW4XQ0MTMBYyovhziWVDqGEKtWZiBVOxrP4ufC3rYRJfJx6Vm1LnGXwujL3EoF5lOD0ez7wLXDRYRhtf9//1sA5Cs9lOKZKBKfvWPm5sbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E18UT550; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E18UT550"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F4DC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715632942;
	bh=1WBdP9GjQQmuRQXBCvbgg62cCsF9i6a5qkJbHzWaKHA=;
	h=To:Subject:From:Date:From;
	b=E18UT550tozri2+wD322SqcbWuURAt/hmyA9k/BaMNtCLHeoQxU3c+z+8rodWl2yi
	 2Y6ew9fuUlffUvIVZ8IqZjHTuzV7jwoszoShyWHKovm91IgnMpOtMhAIf5VRip9UEL
	 Yr5uofsiGg+fl/e51wp4QZ5uydK0GydbmadKE2Oc9yddB1r9/MetwBqreplymLaNRY
	 d+nsvoETFkCjsdbmRQfXQvQxYcLDXC6aDFIygM5YvWQMht7O3YvpKr6nXo+cnvUdGL
	 kVEAl0HeGXlwqvPD512XKhJGOnJ7Lb09vfrYhbo1naFqmuVPZlI2um0Y4l75yXSS4K
	 YH3QYborpqvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8172C25B75
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563294280.6241.1309500123525049678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377b3ea5ff5f432aec8c4fd382d4d1caacaa5491f42a7f90cbfcbf82930f8bb4
Date: Mon, 13 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715632942
