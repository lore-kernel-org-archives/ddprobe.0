Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4C4535CC
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710831496; cv=none; b=VYo9Cb2WohtcXmoSBkIhRfSxFMZFHT3gR3Az/8iMqkzvHrrzYZmrWYKYc8jfiXX6k9/D3KyYegxlSWTB3nNGh8hlXzw1LiZaAFyb5uFNZj9kjYwbLTOHDmG1JntwLpHkOFQurTWWplqbqnTEvpIkeYvJGWfsWjMe4huP7dM+fbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710831496; c=relaxed/simple;
	bh=pie0RTceIRQuiLBuTYiCEyxUDDqejgo7rw0jqK2HG/k=;
	h=To:Subject:From:Message-Id:Date; b=Ycfv6/c8F0/Y4RaYElomEkynSn1KL/OBlKxwA0DhhVVSHxyv6HcjCtLt+NvIbo+7wzA+Zj3IlewnAth80TW65wcNsQXuOhyTRwryZuN/z9xGxCBrICfhm8DB6hLrtVxEYynjmiY1dHS1gBJyYtFnefdy2YIDCOaU35v9VXn3oVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjszfPcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjszfPcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D817C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710831496;
	bh=pie0RTceIRQuiLBuTYiCEyxUDDqejgo7rw0jqK2HG/k=;
	h=To:Subject:From:Date:From;
	b=ZjszfPcChQ/LK3ZxZmL+nmyKRr5zkMl/C7gr/uohGDxhG6CPUxVZl08GmtVtYmViT
	 dZD0OXyz60aroAu6HSs2wuHRuzA6LFCyzSg9JRF9T553SsBg6u4+IDJngZbOhai4+u
	 iHxtWF9Ga7IZsHKLq01NYiR2rlLefB1DRM/6nSWGzwvuY3kRJLg6MIk+JttOPa/UJu
	 +jC9kcPCxFeMrHYyCl99h/tCHXNl2BnXR3aOmLnQNSIae7iuJfjNH3T8mViCXTk/Cr
	 Q/zDocbhTXeuMekZUaIwW3FjJIvrzcjmBKjx3m7SJtBoUWDqMomm1ugRUE84zF0/FC
	 ZsmnYxY8EAi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6081CC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171083149638.9970.2507253324651912718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484843fc1ee8ce5ab9a21bba1792ca109511ca23976cd6fb55b7410ea77a1853
Date: Tue, 19 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710831496
