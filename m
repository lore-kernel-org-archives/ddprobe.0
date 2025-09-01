Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5178248B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756686594; cv=none; b=XeEOLa0ZJDXKfXy4azhPazYrjRhgl+1zS3Eidowto6fuhxXSYpULkCF1oJE5T39dbocQR9OHTqS1mALjbU2/Rf3Jj+K1ciOGyxPXS9w9nsVrGPF9HB+S+xyqbtIjVcVCDWgcxcdaVY8vyDElG2+tlnwRNWsQv0w5iXtGgmdDm5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756686594; c=relaxed/simple;
	bh=GDWzPHUFx+W2NwMbMz3kaVNHlfRtXcUenlbrjibsVQo=;
	h=To:Subject:From:Message-Id:Date; b=eggqEZ1lDsf5yvSbrxIKRczcorG2MhvvGoGMD9NgyDmDK5/LmB4eSszzbvqGj61fTC0JEef+vvKlJ3OP18zb1sGuLwVaoZ7LQk4WEe6dBMVvLyPAb9hC3fikCR/53e7d6oW1lYaA567ATWnKxtNLCicJt4iL0mjOW42k6jq+f/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLezC3uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLezC3uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D5C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756686593;
	bh=GDWzPHUFx+W2NwMbMz3kaVNHlfRtXcUenlbrjibsVQo=;
	h=To:Subject:From:Date:From;
	b=gLezC3uNSJxHiGEaRHbxok/y8KmZpaxcV+4FIpah7EC29UHZWSEix9oJc3SBrr534
	 ooFRJv7mAQ0wE3JTPVIvcgIZTAOrr+GKkkk5qBAMaW40fpzM7fBzmca1m8gPCs4Yvz
	 QvgVBI1lhFDlzuoxyZMpPJ7zqGyKWRVGA3SrcvxkJoKK4jhTbfy8OeKYax7hBKmleF
	 yTNl3Wb6VrYGbylPc1scCZBXowjp6eR//AYRfjty6EqEcWDqSZI/eDeyAiHfp/ST4/
	 tMh1FByv9QDtPnNK/KdLXNp7D/vHNkE1knBdOc41l+BmRANc0twUMy4KOLXPo+RNHX
	 lig8Uz3k/lsdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82DCA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668659358.25844.5897631935048925897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316075f7465e66a3c106057f9b6e53f8a6ee8fadbabc3b2b5958ffdd24637ba5
Date: Mon, 01 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756686593
