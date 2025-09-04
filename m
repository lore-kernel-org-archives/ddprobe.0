Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3927C1F542A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756959594; cv=none; b=g7Crn4DTJci/0gpeYZuzWXj55xY+KGDvspT+pt9thHz/CwBJ0oB4lgVYMrGcTHpnssdKvECn6TPcWrAig4xXDq/qIiQfsr/sNZdki0DgfieQqicIjnOtJEzZabVjUekCYcknPlwkF1WLtgeBsXZnAXXWTj5D0dl5ORZQK84tn3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756959594; c=relaxed/simple;
	bh=KJ87ch8gPlOefb1N5fXEcOR4s0J8NSMEfjpT0s9s2FU=;
	h=To:Subject:From:Message-Id:Date; b=qiTuwlD/hdLSylcitjLu7kZCN1f5T2SvOrPeZRpv40HC5c/5hQOn1F86380hk28DWsSVw4Gftx+5nWinlDaEKiKkHjEtnCqeoCVUf6JQNXegH+6jsaLSNJ0ZjkQadUbZhg62IpYMvOmTRH23iGZM/mWZmKEtVoI+p1ggw+k9bSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIrVllSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIrVllSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19F4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756959593;
	bh=KJ87ch8gPlOefb1N5fXEcOR4s0J8NSMEfjpT0s9s2FU=;
	h=To:Subject:From:Date:From;
	b=LIrVllSfB1NjXr+FZ3OcMAZYgkJXe4Znc9jAhS3n5Li8Gm7aDeuaERVAcLJXNXyGg
	 gs6+HicmTRmCZ6ljOtUhTJon7voxexgpLgUEKlXuYuTUasbBBABRrU2XAJZAldwo+f
	 RdooTS6yZnVJ1XUUoYFWp3YMQ7YJ0qWyqmAcb/ftT3xpaoArLIlRuO1L+qXcJugP5Y
	 TLLBFYZltCuHxNP+Md8lzp7pwidIM6mSZDTvijJYQzSKPVyCub1iyyVcNEK2PqWowx
	 xljr8AS11obkNMY4G/oB/yKxGf4CBdPHH5i4gPfLOPMLdXQzjl8uiMQ+COZMeRN+09
	 Mgpt49qlWOEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C48CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695959361.6312.12175481228780636444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775b82edb8d88e816390caedd89948ebd00a96d2577af538d7ea998212827694
Date: Thu, 04 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756959593
