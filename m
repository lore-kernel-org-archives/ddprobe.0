Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4851C1A9FAB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784342914; cv=none; b=JPChszKUSfqpJorw2ywonyUv8rRIKYdHxNZvZl5PNu3+l7znPzA5S76dOTt2azvqG9TNvoYvUBijgP4HfF9Lpg6oy7IMdnrHWHdCZ/X5n458cXERPbIieGitrcr/PdP9DL2pUUvta9majkj/86PebWtHfje/RKgFDaO241bIStU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784342914; c=relaxed/simple;
	bh=hoXG+5KCfXV8JrI73MZHmaS/xApxmooDoSKfcYYbM8c=;
	h=To:Subject:From:Message-Id:Date; b=Dqdf/gVYDIbyDnjHIudcyygM7rSjTcLlSSWYRwyI74iDDoYg/dEaTyaUKc3Xm+yjuKVtooajfiPn7CwH9KKFTLDeHbH4C8stF6SWG/OZTljCayn4Q11PGO8K0MPYVsfQgmLmCQfaWSNwLUeRnvE5CB0RASMN3gAP98GBHloNz/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC7Fd9s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC7Fd9s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEF9C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784342913;
	bh=hoXG+5KCfXV8JrI73MZHmaS/xApxmooDoSKfcYYbM8c=;
	h=To:Subject:From:Date:From;
	b=BC7Fd9s1qt8zUSgJprjcsXAoxZ9x1cFmViTagG5ZJYUSTD7MWQD27IuCXtNTaOYSF
	 1/8efiF99sZktZuFkp1UJysMWUFWwWAA54fJUF+5H6DEmxgVWzKqwnYS0giwm/Bka0
	 VKXOyGJj52saqEwwu/CBg8n9TnlrGMkHpXF8lRRFV7dHY/4kGtp27d5shot2f7P3v3
	 arkO8/sKiB/lYWIIHfYq0o8AUVUj1M/t+cUswPtji0RrMKG7hQIQda30R4/V6f4IcE
	 5XNfN+r4RwNF5yjhYtBmCZmUdfD/u01ymS8gVP0lvsz+GthjrUPSRod/9aS8p0aFEA
	 IIb4Xu58VUD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95CBC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434291368.14656.131449691443313065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c612db2abb111a1a1c37b52f10091454d3a0aecc1e79a9713f052672d9c5920
Date: Sat, 18 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784342913
