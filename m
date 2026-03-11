Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0818138E106
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773260694; cv=none; b=TrFkbR3B0a0zvFbW1SBWq7I09uZAdEM2uOC9BfjA7C5MK20aTKjFBZNUla+DwU/f+MyleVOixzi/vrN6D92vxAZWb6IhJ7Ug7SIKU77o7HZB7XwOmp+J0CYMRYFdn6HAO9Xx7LhqRjrZHtQP+P43eh85bDqdak2lMf2hdlE8c40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773260694; c=relaxed/simple;
	bh=BiTVG+aPQ00ZSHTdWnyFYb0eYz5GeXzPujDpKKkgUnU=;
	h=To:Subject:From:Message-Id:Date; b=vEmlhRdExFTv97H9MGgCp6WwWLyTuxmk9dsUXwnmoDwZs8sF0D9Pw4RXOyoQU/tf722bcA2OB50OJ7MpO1m1MYKSFFBjujD1Mc/rlmuV1HOuTF4mtAPdbD72h0lXwDl5DAR6p5yuA7fVbq2Wyz6C6oW2/0Sokvwy0N5tfeHHtAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA7c6of3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA7c6of3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52CAC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773260693;
	bh=BiTVG+aPQ00ZSHTdWnyFYb0eYz5GeXzPujDpKKkgUnU=;
	h=To:Subject:From:Date:From;
	b=LA7c6of3gEW0u8KICorPkdsCdtWXDPfAGhBfobPoIDRr4Ix5mDI1go/Fh86pe7aiR
	 jWojyeJU7NV4xjPObSGf3UIuSLrbKTYTYGbCNxGHKI4hCDka/rlQ3yetxp0BnK+oXl
	 s/8FGSh4GqjNZMMKSVNTmU378ffXy3sOgsA1d7tS+EidQ1gdg9sXmCalbaFyiCZ9yn
	 e7IVyvjohwAZzv3Mx1mVTjEP3Rko00bmfi4Vt7jgVheBXGm6Fed+ckOtu3JQoy0+F9
	 w7C7E3+XcXXayTdDPk9vMRzC1WEu7qBpFBnYX0JFrbnC9RlvkwYdpWNBK1nLdeIlVR
	 RvU2qwQ5zwd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F8112588E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326069359.28285.12026185797568066101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3851f9f691f1f4b02945eeb5ea6b18654e12aee9352574b9d55751c51e7c6e62
Date: Wed, 11 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773260693
