Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CF03ABDA5
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787065234; cv=none; b=kmwI7QXpFHxCayQ1pLRJ8DmCWU32neOZqWzP3ZhXwt9kHqHwOhIWsXUuKIUhZOODMwGXH+KOU8WC7GHTMBa32AaDtz+hujjRRqnUMa3tXHeKNmYdreNRVpieWGV5lNz/OlY6OOwGQU+/eyc9brTQVHq42p7QgHsZPuM67NrS7rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787065234; c=relaxed/simple;
	bh=bsW1S048jkeeJVrDBXxQzURxxZSAWuK4J6PBD+2b/PI=;
	h=To:Subject:From:Message-Id:Date; b=cqAx1UMuBbhRG8coP3EUZiUeAJiEwH3H/p8SHMWvaWe6nHxjQ+U7h31HQdJOn9ylXABHJKqkthuCfDzVJUCbS7aZ3XFEDNAtSzFrWNZ+CAS82odeDv9F1amrhlPw2f0ITMoLyR6UQEbMxnqXzsBt4WKPvkAkHJuk7aqkbSoRN/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzoqdEIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzoqdEIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1B9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787065233;
	bh=bsW1S048jkeeJVrDBXxQzURxxZSAWuK4J6PBD+2b/PI=;
	h=To:Subject:From:Date:From;
	b=lzoqdEIStCUyHKflFIamuP5ihG/VLqV4epuVfik4eNWnMYpPemI+6vSHcFGPDa5lr
	 qG1CMEb4arXCm0K/GP2kJA2+bs6wJoF90vF7ROuy/PT7ZydVbx8yBqWopaPi8HA+Jk
	 H6W2rogB8bEJrn/7amgEzcac2AjtbXL5uRP+65VsnNhiR4MeFLAmV3MBciIol+5ZOb
	 w1gurWk/siWw+vdnoto0PchrtibQiZzJjlIpyuVJy8HfTRswkZsgkMVF2VYk/s1XYg
	 ovH7ppVbwOnpQUwUkaaqFSo6Ahh+lJFLR3MddqX2dg+8vPvnsmOCJMGjFhECaOr7Y8
	 HpgrU72SIDSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB503C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706523369.1499.13376069779351723934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dbec0e7f2146f947dd1eb703b5447fd6c7fcb6c24ab69c70915f3ef906380d
Date: Tue, 18 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787065233
