Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F1361655
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792094; cv=none; b=AaYwtSGSqs5/6q2HBGL8TRdqLTpOCpSXgVJE4xzLVwsgdsCeeGeJfCA6dvhp0BOuduyV/bWtwI4AlVlDtV46uWNyUltZo2bhmY2X8XY79+5fTA3gsXXFKBMB66iu49AQB6DoUUjOqgDjZ7lbPZ2IYJm9hF/8LyqXAGhxEuDb8N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792094; c=relaxed/simple;
	bh=ha/At7DlB6mRhalqS57/AGlEVp2TM8IEr0OP4TgG194=;
	h=To:Subject:From:Message-Id:Date; b=P3JTNzXabRlKN+qFVQoAVC2l5E3u0ILn4DrslGCOsO428MHHAZoCJ2iKVByY82DXTD0r488wqbVAeNJcwcmTZ3k6ENkCdy/XkrPoPFFnmwxn03wxpRIj2M0DJF2N3Rbh6rWohkWmWu7TS9HNGuQTM7QQWZSZa1TjtkqklnpG8L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZZlqWsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZZlqWsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E28C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772792093;
	bh=ha/At7DlB6mRhalqS57/AGlEVp2TM8IEr0OP4TgG194=;
	h=To:Subject:From:Date:From;
	b=DZZlqWsbEMMJhF3xbyCEVEMud9ZDZj7r61FmEwXnH1Iw9e4/KeLW6eJKBqlbbNmm7
	 Dz3aP07NA+imFGLhwp1PET1enrGnA9ZHh/YRNVekRlwmNU2A8UoytK2VR+jtRPrwq3
	 eIO1tmuvFKgxEaYxR8PxLEi/eybtwzHp4YIlxCcgu652Wvyo4C2Kem3DY4xvhrehNI
	 1alJSNKWhKw5QG7SD0JNaSiG4xrGB990oVolWHv/5LTGbWAw8Tpvb1LCYKxQxUo8sS
	 RRvTVXTgFIzyNh7uxs/rft0o3aG7cZFQ5hHIZijBCBzD9UxP0QXPnxBnljknHw7sn0
	 aRUjx/lc/PRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C26FF01821
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279209362.1608.16726703783961598182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f008c31b1cd65f9c3cb59cda596d3c0b84ca62c91bc27bc7d75832b081dfeab
Date: Fri, 06 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772792093
