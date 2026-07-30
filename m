Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0F2AEE4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785372034; cv=none; b=CkI2B6VLaQgFLdMsTltHvpq/mjokoPWAKwD+n1zkkTM+9AGyzhcS8eD4ZWbkkBvnwi0YllLuLh728SjDxrGsLmwCv5WvRtPpxXI4KsboIXW8fzvTlwrbX2579SxDY7Da0u/pqBUtAvnc0Lv7wwa3sGQXzhfZOpwsYwL9648DSo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785372034; c=relaxed/simple;
	bh=7tGr+5Kg8KXM6WA7CsFoVGWybbOGgxnqN+lGWORXaYA=;
	h=To:Subject:From:Message-Id:Date; b=bFaxNSPKQEm4/JnceSFPkO5d7VM25HMG/5bWa1CPHysJM1vwxRfPNYcgxCmb6XqvgFgDy33H330hZENbKnsY59Ja1p0Q97uMY4u5YKJWfiRoLt691hwbdaktB9TdiXMpqPJ5LMEFFthDRnQ8DVfFoyU85l3PBVV4hGR+4zlrang=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwwKOa6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwwKOa6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D375EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785372033;
	bh=7tGr+5Kg8KXM6WA7CsFoVGWybbOGgxnqN+lGWORXaYA=;
	h=To:Subject:From:Date:From;
	b=ZwwKOa6M7ocagqIiZvQ4WsxiIFaqFE7u1XU7utnMJWUvT2New0HwPBNGLSFqOz0MQ
	 zRn0QFOtFCqusZucOgba6huh2vfOD23c4gS3yQ6WAaClxpGmBX0nODqIjV8QwQqwkj
	 tK/zCY4ecRaN8OW1ULAFNPsPe725yNQ79Wj6Wxn1ZqZb72vDONTZKKp27ecoVaZDsx
	 wT0loL4GwOnVNvWR+6LDwcNzwhmKmrt/Ux4mkDy3KKMZxpEYlPjnHO1VWiCanaG3Po
	 l97bIFX7HFJ/ML1Ni+T7djUCkQbYL3AFn+7hXPJr+bvQUKtjtaUqCt00aG0jueiz+d
	 9CD+DWa5lzRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB49C53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537203368.32224.12163922503807094263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0940d116df703553b9f2216e0f82a70e14abe9bb7d3e52c7d49a4923c1399d01
Date: Thu, 30 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785372033
