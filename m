Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228752E8B9B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783987114; cv=none; b=kCCmANwoJIeJzAJ6pNF+dJJIsB0BiOxFJm61hRwjskt40f8lP6DsMSb8n4a86Xj1z/IwdQbeTmzswhZy/0RpGugPkFU9WvblWasep9iOlIb4XxBoxvSQpFtBiqXwxhKS3diVT9xBPel6SZBNTjLXKSjRitH0yNhLA6vyo0fDC40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783987114; c=relaxed/simple;
	bh=Q/qWBUfIuZH7CrMg3Dpai1o3Auv4dZUXRp32ENQBf4Y=;
	h=To:Subject:From:Message-Id:Date; b=BkgpzWpYn7KHT3nmm+1rp29tjDBWc7r+6JC8NOw6Pyt0F8xbwiAsnaVZ119QEJAiOAkJr8RoPEt1SQAkFpkIcd3OM77vVOez811OXYkTblgTFo2YFzpjCQHPwzaXbhCzMKdVQ5S9HZStoe4nXLlvk0Ua5Tnwk4lwdOiOPZE7xVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYGOMztv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYGOMztv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC51BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783987113;
	bh=Q/qWBUfIuZH7CrMg3Dpai1o3Auv4dZUXRp32ENQBf4Y=;
	h=To:Subject:From:Date:From;
	b=IYGOMztvhbgUDwoFeYgc6AqAtkzu44cHJXIOkJ2LMXTqXuiZ9ZZGardqlVOojUFEG
	 VleYdtAl2zdlaIidFhf+LI1Ww1V6f0vtUH8pBpTUuNmSBam6jb+lUZhYyUhGCO0gzV
	 9R0xojrC8UZQ8i6MrGAt0YrSpmizdNMPdkKg/bGv+z/Xzo84I0QZ3paF6WPSel5kZj
	 kDbi2pemePyBk4hS9EvzHRgAPjaCrTJzivPYDBKFezCo+hyRkpPPQrmDT5AGB/D2EM
	 Dd0cjrvixnWX/liQm6xp2QeiYohVnrCwucAIJ6rDSN11KTUMD+Fh2B8yMzJY9JnxM7
	 WaRzIB7W8t1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8783C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398711368.3180.13749383615670788455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cca0feb6492e54f4fdefd83d94ef0877668cb4737527863765bec55d7d4c781
Date: Mon, 13 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783987113
