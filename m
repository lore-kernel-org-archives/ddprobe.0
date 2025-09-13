Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108FA25FA0A
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757801394; cv=none; b=PlT/OhxZHeiQmlPAamg8ghSWmSkFmtmCsHw7YopvLYshb42TKQDSFENOG7OP42qQr7LU81WZer0G2VJ8pC7rqhWPh4noXBnpiYcyfbJa99+SJ06HGqokfp58uBZkn3Idu4fbsvpnlgup9qSjuOEngHCVqObiWzbaxgCxYlNZpyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757801394; c=relaxed/simple;
	bh=Tx8ma2ELybqBfReogJidYi5NLESa7fXDofEMyqPW3xo=;
	h=To:Subject:From:Message-Id:Date; b=NknhIGitCe3HX409MfBKRKEAf+FuF01i+tl0xwJvMc4BNe05YD91RyHl3ODkJqaGRzXuDv8tbONMY2q/HZ2g+A/yeBov2TqARN7bB58jRdEtWxvWXis7oQJLjBjXqUckEN14yH7PsdxV+Mfpv+JBTijNcBmcjSjNl5IrkH1xGE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBL1XXzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBL1XXzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F942C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757801393;
	bh=Tx8ma2ELybqBfReogJidYi5NLESa7fXDofEMyqPW3xo=;
	h=To:Subject:From:Date:From;
	b=CBL1XXzRukB4iHT4X+2FRDCawbBRFQ/J+BJJoiDncs/HIf4TkFk5Be1DS6fjr28vL
	 DJb706S+yPlZGn3EpEZ18+BXFaFk6OGVn5TBsmqYavbKOTo4xkLl7T04/lzTlBX0+U
	 rPlIFmfLXtO8IWdXeK5rIXebTSVbhUiRbU6Ic2ZrUCuuRiaPg/NOMWycrJ85EgO5ie
	 3WH0kspZyLuJ8NHuNmuyE9DeaCPxH6GgItHLn2nhKCG5bg2htJP6BzSRkGYQTtl154
	 iukAlmmofjUQ/wDzG+uE93FtagISA42yTkbg/lvDhrdYdVIuhptgTnwopvVLzpjlNK
	 u366DLi6eCZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD58CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780139358.30185.471405174803560636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620651210510a4b3c7c628e1a34a478362b27e20f1c5e1bc58ed2ddd4e3ad788
Date: Sat, 13 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757801393
