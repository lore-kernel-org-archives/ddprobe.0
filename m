Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9A637B413
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783498114; cv=none; b=RHCIeaxeZwkcgCxdUCQZx0zADWRacZDUCm4n/fIw5yVn4viAsAk/e4ob7C384UbxtOGlka0C8iOzBXMavR5MnqoLdFXj1T1zAQSXHBXTa3UJ8VHYrd0MJ3kEvzmSaAuB3TUtLjPCverKA++kbGKgN5EBDycPUiR826Vd65t53oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783498114; c=relaxed/simple;
	bh=grxll0D7ydfFfWjZEhvB6jFizfAWloxBlYl4byygD3Q=;
	h=To:Subject:From:Message-Id:Date; b=fKrLdUHGePap/1NeQOM26gaSZDMyi40wc43Fqj4g2BFBn9vVTV9kDl/LPN1o2R19Xz4Gfyc5bki0vhoaFrZW3ek1AndrVEj1g7zQMjCaGHPh1erdIlCSZQEU8FO770jiRJd7/mWQRyCLoU5HnayeaaqHfnRguwKzL+8dic6frJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLt2Bk5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLt2Bk5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B74C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783498113;
	bh=grxll0D7ydfFfWjZEhvB6jFizfAWloxBlYl4byygD3Q=;
	h=To:Subject:From:Date:From;
	b=jLt2Bk5IZ706gId8w4ydHJpSXtFbHVK8hV3RobL2TrQeH4G+C/J9hjesrRxPL3Jkc
	 iMfpqrmhcLfSROuTe0Y/Qo1KSymTZf0OyEzwWnUHsA0Z/h7HcpK0Bh5oyy3u52eUU3
	 qfy+DI1XgIGTHxgzk0lp7ZxjQ41Oq0P4TifA/a1iEHTRf2wYG3gP2bFI5WwwwEdbLu
	 9oQ4vkWhVmjH/j8vq6YfgYUCjz5lh1eJHZuTccIXks0hCc/rHL8jtrItVIjKcC5kdo
	 A/d6qw45JD+HNyy+mmgIKr1eatezxieGBYLDEcVPsHLBmpGHoYvZqWIePgZLakf3fc
	 YGZ4CcT7du3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8371C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349811368.7020.14070483930345412747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b46e77926ba1e6f7380ef28a298c5ebaab421622f0a65e10b0d8401b441b74
Date: Wed, 08 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783498113
