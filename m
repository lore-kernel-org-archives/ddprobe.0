Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C59C3BD629
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787254834; cv=none; b=XHF7XCOC06Pzk7hmj/TDH6HlTosBUKEIVBYusNZu+ClDaVpuZ0by1OuCbbeRtQgUPArQ6OEnPbVYEUEuWv/IIORfB8nzG6hq00TkekVml99NkFgjr1pNHedvVQLHqi0+VJt94fAfF/7i5r9Ep+sjyj535/Y8vcTrwgzscwn6Vic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787254834; c=relaxed/simple;
	bh=Kv+mrrUDBX8FZpwXv2IxBeloFEpDMFTHWN1weZGpfvg=;
	h=To:Subject:From:Message-Id:Date; b=IjBN+M8SLvkx59Dm9U0+uRD5ymdxlCsd+2+fYmUwrQ3f/LYo/esd8IochEZqVny2FfeFQe1TVISdaXCy0qRqfYbiseuQVA7z1B8FlAQLSAIGUmmVxRb3NsEqdZRSgO5alOQ0XOEFvIaD+HWRy+1zs6LXHUBQVXsGIf4YQJifbjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm87wMHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm87wMHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787254833;
	bh=Kv+mrrUDBX8FZpwXv2IxBeloFEpDMFTHWN1weZGpfvg=;
	h=To:Subject:From:Date:From;
	b=Vm87wMHosAALpbqpSUxCdTI+Wjvohq9zdqETzl27vmanJONYRaujsihnUk6bBmIoY
	 FtG8a/YWAeq0sBWqm3+D401p+djxWvoRPvR/TNKBp74cyLfIrnNBR2nWcVXL74gMkb
	 aWFvjx/9Ca4pVakJN7enCYD5hkK1ELaOecKnsYIwt0GSsz92Ptdjd2gV6xHSoapjvi
	 KwMYAPJdhJWqBmKRKiIllTCkxafragXQrOiqaTeyV6k5+WCBgGMAtdQSxDHAqyH/j3
	 rfyN+l2mnRM7kL/l9yJmohffo03Oc+eT6nzOcqEH4Hc8b1IkN5s8UotoRgLku2zVra
	 MjqFj1MJ0xYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD3DC5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725483369.9760.14229546074354716404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e0d64e85aeae36256339a14fee875086c0d5e31da30f3db0a65b86d6c5aede
Date: Thu, 20 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787254833
