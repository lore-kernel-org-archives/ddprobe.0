Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18D3515E6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791649234; cv=none; b=cmndrxHRyXUwDJATAdB76siWu87INYEzE1oSeYLu4nshezY57OkZ1y9aFoHOxa8KaDRlFt/9OzlPZw+ynniuO/bU8AZBGx7ja/Pev+aSKC0CipmDgFhP0r6pElLyxYKjCJmBxjiz+t1BrLedycaruWK6nsE2B4UMGsir61YR5RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791649234; c=relaxed/simple;
	bh=LofNQ4Rqbq7022PZbiOdhiAUJQoKeGU75g66e6BwihI=;
	h=To:Subject:From:Message-Id:Date; b=PXvzSN2CUALh98EUvzHBJ7Yv1mSqjbS4V8FUliGRMvJRFopv4rYrMCcNzPBy3S5ObjXdXsa8Gp/apdkxCe8wmO80ojX1UaL6lQLMS+lZPkMRdt+JLQeASkJT+5x4ft50NyGkI/Mt1CQSa0iJlfmQkoWIKyxBK6NU2fzSal37U2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/FKX/dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/FKX/dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9AFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791649233;
	bh=LofNQ4Rqbq7022PZbiOdhiAUJQoKeGU75g66e6BwihI=;
	h=To:Subject:From:Date:From;
	b=B/FKX/dZD2F/L585Q86ZYxAakCRB5orrVFJaDPeSOBpN/Y108BhY0kwq2eNDln027
	 g4Dx9K1j23ghVTEn5aHKl53bhh50j+afLPKJZhJ6QH5wjoa5w9BW0Ng3J4LbHGegqd
	 KSHbfNDkcEU5VQCcsQu7zrGW95LwYuzmLt6enRI7AzMzwcPPzlF+rvy2d1fgd+FaUt
	 HRnPFlfuX25ZCK1VKN1UZ8nEJrP0iUxVHa8NgLMKHfEdtcXR/08vBwLKCP8dRYEYPS
	 I790DeLz7JBOp2RbqGFpclkJ9qcst8lfWbYGh0VYSOfPQrvxH3x8KZzNWmUu/zEes3
	 4aZrQ4AlX77Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C3CA9EC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164923368.317.12884153001179311258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3d8473fd70946059078aa7a1270c89676f813ee9d96c4570037c378847d828
Date: Sat, 10 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791649233
