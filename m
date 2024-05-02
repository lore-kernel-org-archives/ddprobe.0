Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B0857C85
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714686743; cv=none; b=cziKa5LS2YRcxEr2LiPz3awttPVQSa59kmbYlKXw3YgrGcnFAYjLy/Fjl4LtYPif+U+qYPOz+8geoCmWYhHg/hrTC/lv/rOINpdBi9VnJoIY0oxDKqi1x1nEVFmvphlBa0K9R60lj5RbVTvXtAGPZzsx6vrbtmJ2GdRwMDfeTgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714686743; c=relaxed/simple;
	bh=6finZ+uHxcNUVH9n+EpctKUueq4d4qmOR560kfVohk0=;
	h=To:Subject:From:Message-Id:Date; b=f8vRSu3WIsQcexPbPtkP115c1eU5rv2gmusfYAIyxIdmU8vQfOlc3I68cpMC4gqpiP388r7qOaSWq32PfWwN4mtXP8I0UlaQ+5Re3VUz1YnCF8Bj92EzOI7H1eo+gnE4ITZcvHSFu5jKL5fNV5VPX3oqTC9reZs/iPSBuwHhyF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTk4BHqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTk4BHqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECCDC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714686742;
	bh=6finZ+uHxcNUVH9n+EpctKUueq4d4qmOR560kfVohk0=;
	h=To:Subject:From:Date:From;
	b=YTk4BHqh0pZn6ncKkXULzwgVBybWp8sLi4die4V2Vdv/DQDquoj67zj2omMBI37OB
	 NhBZIYS50D0NGzLQYOlCUp1sM+JupLUOx8WSCddktr6s33SqsMDBkcP6FQEEIuc+9z
	 +i+NARTskGXJ22SZS0z8SBK7pm+l/+a7DqmiA0zDiDr9W35ihKuuYNB+pSQjWzbceo
	 1KBXr1cwLbKhMAmjOZsoJJCl+JANHn/eW2msbgLEBiVbC9XUUB4cIxzloAudU3CA+1
	 F6Tgch63lCP273Lhqf6qA5Zy9WKZea/iXJPp6EtP3VgIjMvePJdmZy8TIfHDkiaUYv
	 eKO4Sc5vfDnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C86C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468674281.22708.8176234662537955841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba30bf063a9d60cb1f0ca9e26e33c5085925e714212fccf336e35009311a93ce
Date: Thu, 02 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714686742
