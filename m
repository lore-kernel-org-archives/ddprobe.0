Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2971B221F2F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766106834; cv=none; b=jZENq39UBmH5f6iwpRx8XgXi15kKXesQI1P1D2uSJuz9/HoEQlInsiCwlbiZx6e0FofrdSojMJYE8gVgzjdv46o7qHbsRhAZFJst72ZAxbklDYkHc0VI1xE2TTyOwsHWcxn0t4IBlrT5yQ4dRu5HuU86XMai63DUMRzr2MAQt+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766106834; c=relaxed/simple;
	bh=z12z72al9BTwo2QpnYFTHdcF6xEwqErE5+HmdUosZ5Y=;
	h=To:Subject:From:Message-Id:Date; b=s6RnGQk1aGPmAO6wQ6rgjiWvOUJJ8/GkjBnHMiSyM5sqOVh/NbhfgyrQOw14deYRnG0pwh0hVq0m5NUgO9Raen4jkqR5sJ/BvLU/VHUhwN2m/xu0/cM2Dm4n9VjEMXBjhlxjvrizSvVySm9etRP8M73zXRSOmsl2pQYzpR3Zoe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSfsdgkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSfsdgkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB784C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766106833;
	bh=z12z72al9BTwo2QpnYFTHdcF6xEwqErE5+HmdUosZ5Y=;
	h=To:Subject:From:Date:From;
	b=jSfsdgkVQb69D/ZW8ZCpsWZxWCmf1kAKpQH7EpB0GIzqpCJfUPi5YyAs0YDW+KHou
	 P5Jt3FrI11DEzqmtBHclX7fHQw5yfsnbiqrgZaxE8wgNcvPn9beWvSDBWzxXDVT5PQ
	 GkDaF4ABGwdbf2s1IHjeTMEdYHr2adLJHvzFkky9OciBFR4pTpIMxe2wq5QYZFsFtb
	 TqLuwMmS0chQxVtg7Njz9OR6oxuvn8mpkbhjTaXk00cCzFA0TXxFp5lIyZiM7uz1n5
	 znDTVpkuQCs3QVBIb+cJHzyW5BuegoP8gVU3TK8UXYorFEDE6Uf82riPHycwKjsciy
	 xCjHhZ3UXr2fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97048D711D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610683358.30662.3827994880830420725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d889ebcd620f9ca8b54802d57598aac1dc9e0aa6473fbef02ece460892500d
Date: Fri, 19 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766106833
