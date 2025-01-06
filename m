Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617EB3C47B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736144154; cv=none; b=pVp3KjXjPhmx2HDmYFfFVDb+6SaNbakYhN4IYetNCkhn/5D6EMnq05Wsrs8fc9j6IcF/6FsPujv6wzPznmw1no+CdMnreNYzgcIAiQzpda3bCa70s3yttfC3ONGg6YQQra0iH6VJLS6QfoVsk7PCSB2YXch9QvPiewxt79/ldXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736144154; c=relaxed/simple;
	bh=KCu6Ce4AHS1fW8drp1pCyfFnm2uH1sM4xyN3U4/tEYA=;
	h=To:Subject:From:Message-Id:Date; b=i+2kz0JjZ51hF1sDT+edgqPLtj31biMghZowfdA2sTx3ErsHcFooQ8KIBcrfGwtNbWGM3kPFfN3lhKLZ4W4rLhBDhYpIw90W1+wiursI4WcLAkWwBKvd5f+CxKyaRO3fFePOkMB9ryPb0BzfYvkzPMlLPio0LGmTDJbXeWQiAXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz2Iiiqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz2Iiiqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FABC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736144153;
	bh=KCu6Ce4AHS1fW8drp1pCyfFnm2uH1sM4xyN3U4/tEYA=;
	h=To:Subject:From:Date:From;
	b=Oz2IiiqkVJlESfI1r3UhqARPf2ccb3WLNmuIEuiVRGaJDhK3Ng21EoHtJCqWdX07a
	 g8zJTHtOtxBMqu/E7lvQ2MmlesQoHtd0E/yL/oUv1nQFiE7ERCDO2/sVBbVsPi2kDA
	 00P7nqTo0gIOanzLIS/HZZkOkgBBQP263wqV3TVHPZMTmi8eOc3CEG/CX2gmuMvjh5
	 t9gba4wx2e6Gh5211MnLiTLq17YENb5rFc18DvrAq66hacTOWd0g9HkBrxW7+7Umey
	 yGJyDbww9Z6Md2F4Q4RebeYMUqkTLzCAxYxiLc0hgi0J0bYsF5U0N5RM7cw4ug1V0r
	 tMf4c00kD7w3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C109E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614415363.27842.17902298084377184739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e1fafd34fd1c2545358f8e0455d2a56d94f9149f92fec04ed20f9920c256bd
Date: Mon, 06 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736144153
