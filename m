Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E602C200D4
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712148497; cv=none; b=XOkVfFgbC3RVswe+42QZkMx0O6HB+Ny43QBURNtprIKBZi71nY/Igr0IAkIijYGPGoRmRyuJDLgIw+PM6hxg+7+k0fgxdplk9Bym+pasYt8Yf/N02QFl0MyhvajxrWtFmUcYgGhOg3Jb8RnmNziweecHtl6lC1yNVyktQBHwKIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712148497; c=relaxed/simple;
	bh=cpiAVBbPETJgOJFg9WUFsK5qTyy24VGKHv/+lLA2kUI=;
	h=To:Subject:From:Message-Id:Date; b=IpbaAQzShy45qOeSbcNmWHDyOjhxN8MmX3griPPxfFQsfJbtePe4JZhdRKCY5rofxfwqJoNDTdIhjKjtalFLeNH8Ap6JMli58DprD7KojXj74P6kNQUpm9t3QUwgBD0k85+61UiF7tBjcje36EkLEU5wJQc0/EBkbYp1UzbpvcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1+SjONo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1+SjONo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA50C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712148496;
	bh=cpiAVBbPETJgOJFg9WUFsK5qTyy24VGKHv/+lLA2kUI=;
	h=To:Subject:From:Date:From;
	b=i1+SjONoq+stpHuLXamSWJDecRyTg1+QwEgu17FSgjjwt49IP0dCY2KspMuSglvLk
	 ws4sqidurS82nFNc6VvHpPjdTjRaUdj9hYLH5fLckBsIKZjB3w2C61gLWzHNz9LeRn
	 18emAN/dUkDnnx/yqadyLpRYZ7sJN+qYbrDSKIHNn9w394CJDY1tAT5ErtE7z6iHXn
	 5k0ZHZpHuCXuqZJkLwjdWqcdinRTHO/H/HOZJgBvPsHuv96ZDvQXtyhaQ6tcQg/BZS
	 TO+7XUreNpG8zcIKA+MLTg6Ua4zK9dc3mcUjzfA7dvF/JJn03w41+TAqwEYkxAVKem
	 pnd4FgAM//LdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EF4CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171214849641.22122.9456621073480851582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da128f5b1307dcefe4139b8881904a40b95fcde0ef51eccf838e450696009c4
Date: Wed, 03 Apr 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712148496
