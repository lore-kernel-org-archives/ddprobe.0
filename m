Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0526CE39
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783286314; cv=none; b=mPZtmTh0CgfnTowehN47+lUXahJBWdCUeHooIEbV4xtRA1mOSwKZXLKBVZqf+ANg7f7nrPsrUZkBx5Q2hBsXnuSYbYK9IthxuMgoQOqRwX4PqWIHJyDHcUnJMLKhHId9hWJpBIdNWbuKA8URn0vMIYg1aVsSevTkKsn5+p4WVYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783286314; c=relaxed/simple;
	bh=mKI79qD2H/SPDoaxkjnE8+JNlqfzhNIOvkY+8wOLjXg=;
	h=To:Subject:From:Message-Id:Date; b=CCT6Lg/TuODCdhnS/kCkZ7VJW+gHzWWtP5jEjUS8QrUZcyrRYNDfJFLe7cBrAXcxEBvVHZueGoy50gBaPRbmRA7egAfMwqRz+LYKZY5948XM8qujftM9Zjm54WmXi6vwvtqEoNUsTUfuKRYjGQSG41FDjcLKYo1JX59uBPL2aYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPUJhXE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPUJhXE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACF3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783286313;
	bh=mKI79qD2H/SPDoaxkjnE8+JNlqfzhNIOvkY+8wOLjXg=;
	h=To:Subject:From:Date:From;
	b=UPUJhXE9DE2FiEsXhBy1WE+3olHhSTZACXYJiGrJ9BGYjMH+lPhYNqfX9HyrRdNDT
	 Q5yag1Vqtc/PkOgSac0dlv9iZXn7TdFeUEXO7lBVbyADOBUdZicugjZmtCLa6eU44P
	 UM9BHJwkHAAq/N/SJ8V7JVugW8MNzw5MEObpGVfRquV6/kppYsS0xeHUreTi+Nok2e
	 ZSvHbLF8fD3Pv1EiZKa+E48DkCSLLXO8/SgBXVWgiJVIRQcQEI1csQyJqPeRL+0kY/
	 jKZYRItCQpGEJg2hYwCHNq9/j0+64hNP0s5DF261xCQMZWPXMJzTIR6CbxJAqDemvu
	 mOGFGH0AUjoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE03DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328631369.31349.8977692438871764381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6046d4887344da1920781cc7c09d9bcb75aeef1cfe3adf87d587d2d5438d88
Date: Sun, 05 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783286313
