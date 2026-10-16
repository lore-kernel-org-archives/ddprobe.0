Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546BB442397
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792150834; cv=none; b=dijBg5d7ZI4qgJh5NH+1uEX2NXCyt03lVVYqQCghCqNB7iGtw78MiwLPjZ8ceMfpkaeLuDHjy0kPk8d71TLhuUY94uBgzPB0ij7yzd+3acZq6TCyD7IIGA7cncq2MCYbEJ1WDTmWLYV83S/WZkRgqaawOTfcdxB0NKU8ybNbhNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792150834; c=relaxed/simple;
	bh=zA/RsQUolMiPvTLhEsR5i2EuAva7xjehvXnCdxWjrHg=;
	h=To:Subject:From:Message-Id:Date; b=HtHNJ5t5cBIw9WtsVp7hMHa94z56rHTB6gE0+0uB0gd7Pur16FRppmy3/znEnKKp9o1QY4qmBORl9MrZRhLYN/ADhwZaoWSd8yPZ6vcnmi7Q/7UHToThTpSpC+hjY6rR7vh6k9sjjGrTJgy7wpaBxAq8PDZc4sz9/TPiPhlTw6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2iasx1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2iasx1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792150833;
	bh=zA/RsQUolMiPvTLhEsR5i2EuAva7xjehvXnCdxWjrHg=;
	h=To:Subject:From:Date:From;
	b=T2iasx1o628sPdnWjFxeVLtj4GIR+aVKGHbbg+cXp2uaYT8eTfcCzTKtbKNwmFGIa
	 7F2NXh/dsjYjsAOvJqOBZPkJ2kp5+EyS2n1zp4gChxnh1FraoPOHt5QEB3JtEBeyaJ
	 iTR3JYjbXk9dRHmlbstFRH3lSeVuzX9xwr1mp96+YJ4X+f2m5fm/TfzDD1InZcnaLL
	 sTV8Xcc+n8r0lM9lWyKj9W62dMHDQzMCpwNccqdvvWULJ+3/oOOHqhs2xsxhrhWCL9
	 u98NCakyEFNZ+05rZQ5/uYZ9Mv/WXQzDcK2BJCmNi7svJb/PaBcF19RHi3VneoDBBu
	 5v061cwAPjghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED6CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215083369.10419.7911734969154486860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4501edde864032404bdb07bab954e5a99ffe7874fbccbbdcf62bd98e517987
Date: Fri, 16 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792150833
