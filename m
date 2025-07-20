Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2512AD0F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752988794; cv=none; b=omqG0+S+UjSBDjqsVVmKMzHzC8Oqy78SohkUU1FRaTx78g6RoUcyDLieInzKRRdnxJq/ehE1UkChRRlN9Uzrz1wmHIpBcRHz7LNwr8vhz/bugQLG4wgYCnrnXKeEcCkQ4SGyCdmRhSyKTwCg0oz0P6mKMavPho7BMGM99igU9s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752988794; c=relaxed/simple;
	bh=5d9QNm0y1oYdVJLG25AbBI/fq8FyaeIkj8OgJw2paYw=;
	h=To:Subject:From:Message-Id:Date; b=FJAPtjjHNkoVWh25bPmVBt3qMpXNJi3200EbN0+ckIxfk/ZN0Mm7Y1Hu752e4yyYmjLl9pI1JZQpglj2JhgzQGw5EbYTBJgO76OV6fxbYL9bLlDy6ZF9A8ergsc3VUANyfePYmLAI1r+K5T5HfJfJY9Prs19COvTLBDxH+ssTQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNETty/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNETty/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F7DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752988793;
	bh=5d9QNm0y1oYdVJLG25AbBI/fq8FyaeIkj8OgJw2paYw=;
	h=To:Subject:From:Date:From;
	b=nNETty/svO0zC4B1nbvpVu+RAyzbibT+gD5g/0m4BnWNQZJma8Akau5eau3c9DcPB
	 L5fucg2GfACRxNVCu/O02rSvVVKgAMoicYTM6B0LnJGd+C+bJM8NwhotKaTtr366Te
	 nqhwaLvDtsjg5VssIl/g6zfHLcdgS9gHHNzJMAl2sSODKNeExkzCSF0LO6l94Pn+AS
	 yE3LGDUL9vbUNATVtVDHFe9CMc9XrKGbdBch4LwO9pYaCDb2AXaDe7y8Vct8TwBl6l
	 RB1uh8Wu7n4QSLPKVU5RBFYCYjywhF4qgJSkYJKKeLIGM//zu2K74FfX+twGxGzOwz
	 SPBBjHMPJsDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9547BC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298879358.11601.7280736005717051069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811cf88d842632ae37adbf20d1026a3deb6a227d9bfd3796d398d269fe7a7b4e
Date: Sun, 20 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752988793
