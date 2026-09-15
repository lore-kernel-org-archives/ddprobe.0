Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0D496D2B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789495234; cv=none; b=YybN4pDncR4Ra+lhRWb8cYWhHk9JPtejwqVYuNDEj9x0hgNbpdAjKzXy4ovlof3WMLYb6cuQ6UJ/q0wCqA8Gkcmel+oi90ATxIi/oAKwQwQxNnafa4H15msU3w9lXbPBWY0jAwvHIqBJHgFhKVuRANfgN3iH8XATdVn4t8HMSXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789495234; c=relaxed/simple;
	bh=Iyx8widSUTOhgup+VjTQWLlZzqOjtSVQ+Bsb1l8nXvU=;
	h=To:Subject:From:Message-Id:Date; b=JQTPAvMSBV6qXREgEslbrCtXqTSKru3b5TGltzvgpWviTY1+FkUDHCISggoGOQ9LT0YMAhvzBx5/uK6uu3HqaXuUclEdBf+pEikE6Pbs7O13LRM5YgRW/KwVgWglIrpsYEnkmJc5YPQ6EGgFNTxLdfXHkznUgnOytlXEb5CdrkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF/Wb2UG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF/Wb2UG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCE3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789495233;
	bh=Iyx8widSUTOhgup+VjTQWLlZzqOjtSVQ+Bsb1l8nXvU=;
	h=To:Subject:From:Date:From;
	b=HF/Wb2UGvz7NgXtlOkcXBwrKiklT1KMY1iTSehpgKcL+rZE8NwXIB4iM+wUap3fRW
	 mXs+b4tkC0KLjgiCWdXdVBEjOxxsumACgUq4HEaLCHgJ0wnSKrHNsjO96T84l9xUpb
	 NsKYyqTFNmkH+D8s4Wg+JhpSXA//7AUUxJNIVWomCT1l1elHPgA7/t1hPTrnHOpOTP
	 URVvckmzmWrBkKekRgGHiNifzRVQgNjB6rr0+9hmSZXDFt8HjOq88aH0MLApct+1Gz
	 VxyB/NvkYryg5lCSJ5/bpeBaFETWgLRjO709OM9rKB7tUjrzIgSzrIhkHJHh8oxOaG
	 3pHu7KCvveP1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996CC982C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949523368.11134.7889019027010432925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f949db113a9e9f0414e43d60f4f1a8906bc15f5f2214fe09714c08a723d0f538
Date: Tue, 15 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789495233
