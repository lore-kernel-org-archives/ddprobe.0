Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457A013D8A7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720741043; cv=none; b=gQeABWIgWK/9wCKg9ysEgmwl2YMVC085Hlr6iTbC2nE+OvTd9nf7ul6F3RqVrx7oNjj/FZabLtf5SKSOogDRFxkHbuPriGAUMEOM2oJiRn+1Sw96Al9/edQ5xgsAdUNJ7Gq8BBwGTZulFYoz97waOaB9vapX0c5zY6SDoyB2jGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720741043; c=relaxed/simple;
	bh=dvcKRyU55fbMERwW7Pdqx2cXm9C2Zy3qK6SHKfVsKwU=;
	h=To:Subject:From:Message-Id:Date; b=bm8HGdlSlAlQFRNeU5GCvuXm4UX8QLTgrh8zIs39gtU7UTwaQYnMMeOHFv0QpLhOW5DfeulSA3J7EWTvnQCr+4tLWFP0CBgufqJLTJ557WldkNBA7FJb74cpGBh5mGgjbQz3OE12K6CjTeatcOpVJwJthDf6LjR6Vr5QMt8Q8HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWEhBUqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWEhBUqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60CBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720741042;
	bh=dvcKRyU55fbMERwW7Pdqx2cXm9C2Zy3qK6SHKfVsKwU=;
	h=To:Subject:From:Date:From;
	b=BWEhBUqPI3HBOPM6yw4o3Tyj3e65WIKuV46DpsMHl+4Z2mJig3Az1J9H7Km9bFdzs
	 NpbvFNSe1rJPPdK0z0j0X3LDPKpYLUkr5mdKmQo6El7UV1oM5Z5Cwa+IuEakEXyWOa
	 mTYLFsSPtrOascq9qazpt3l0pQKsQOjnoW0+ze4spza0Y96jdBIz8S2jUCWJs9/4rO
	 L0ayZQNSzWjkhyJnKmtt1aGNOtwOJ/HpqWxSrR2xXrmDjdroH4B1W+GJNFAHGChs16
	 gv5fz8YvqRD0Y6kGgKfNlg1fwclKP43j0w0h8k5307R10mTwFSnCFDnVFrzEJAQGar
	 m+UwHdGAEClFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C300BC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074104277.732.9338177352339082547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac00fc91e1a2c8e4302957a8e8d132b62ac3cfcb087bddda8a91e16c0e87ad31
Date: Thu, 11 Jul 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720741042
