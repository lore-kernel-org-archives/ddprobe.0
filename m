Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120D82652AF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761598194; cv=none; b=YidT1uFr137b+9wFKvYLzVbHgTfpqHl90k1nSztsAKCBQJWgUsdfdQSU3bi7oIH9guP+as6yGN12t0kZChAAJ/3bVXfLInBzwotNYFSJRUNxPJBzxuOhkjGI2rfRHf5m+56ZEgtoO2FmajTiuJKxDDtIPsKrKz031amnh+TwTQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761598194; c=relaxed/simple;
	bh=2msGJQFBbtIdIHt9i8OBfE6CpFRnUruTEyLYgnGc0i4=;
	h=To:Subject:From:Message-Id:Date; b=fvB4vK7BkEGzrvidYGfq3UjHShUPF6or+5cOYGzQru9EF5by0E6ouLx6b1uWuWIYMLWqodTJcGoTKg1jrVHT5AB+CBXS/vqASq+lMuYgDkt1WbtvIQRt5M5/CjxnWK6MIFgSH46M1D9pL6teEgiu2KRRpuQSMn1bESdJSoiXb2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfq9xCBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfq9xCBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C8C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761598193;
	bh=2msGJQFBbtIdIHt9i8OBfE6CpFRnUruTEyLYgnGc0i4=;
	h=To:Subject:From:Date:From;
	b=bfq9xCBIgO1HloVZzF/Vc3G6suprqsIe3vGo3lk1XJuEz6Qaeu5hXkddicqsmsum7
	 uWWHo9kQLzhIDezP6/vQH91SDG2oHGrgqqgN1k4To/0wB9UWrtE1/sNx9gpGG1bw+7
	 9LyJjBWPlJN8WAxRNBh7z7QpxyxuhxJltblio5EImn8YXirMm1vorizQsBvnPcHeiw
	 lHgRXmM0y/Dqf1czNEtTwxfxn53x4stKmkyEqaycaa4ZlxF8EEkXt9rWKUG6Vdncwf
	 8v/y2osjSd6revHTgWy74kPb1M0qNj84EYqJNlwzQwK4sSTNKwdJkCzaIndK1ruT6/
	 JeLP2AWKrGjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137FCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159819358.13097.12913349142726288426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83633d10172544f78f88dec8cadfb1dbdc2f939246ea4031e444d209dcfc559
Date: Mon, 27 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761598193
