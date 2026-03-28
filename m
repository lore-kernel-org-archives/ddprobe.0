Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2396945038
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774656294; cv=none; b=NdaMo2cQBj6NB9L7+FxY0q4vL6nyGobCc9nTZ+DxKinYW0GdJwau92mGJsg2C8fAvjaccV6I6uBUCDKRCrZ6cU4zjrAqo0w9mY04o3Lp6oseSW5dg8WulSdj/1B6X0k8wd150IrVpQg23IgW+JDhNCYS4Vf1E8WC14NQcadIASs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774656294; c=relaxed/simple;
	bh=ieru9TY1VD7WS9QwdK6346o7JkJmQs8znTR5pK0Rxu8=;
	h=To:Subject:From:Message-Id:Date; b=kGWLfQOUrk4y6wXtj1Q3ggqPxvlzhH5xRNkvp/ICMTgzozn/l0shEGf+PPR7sCAAaD6LHqMILHAwtdLHgvZcc7TsyOEGd0WN9YXs0AdSCP/vVkp4KkrOBO3wKOu7Honix63fleHTUG0sVQawQrf4zCKd/Jj9o8Uw+MAaZLIDTR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/IrdUSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/IrdUSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9F9C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774656293;
	bh=ieru9TY1VD7WS9QwdK6346o7JkJmQs8znTR5pK0Rxu8=;
	h=To:Subject:From:Date:From;
	b=f/IrdUSWdssAp+BAgIWP1nm9OoJEJWWchhaXCfU9hWk8mJG+QifnsMf5GmwhmIWiu
	 w0lcAD57hkpbqhNSti8Smnp0GoQsFoUf+iQqCSNuFDQPxWLE55im1nSg6sm3ObHVPZ
	 7f4c4IDVlyZ8asTNFhtRa+HDuUE88Q0apsIHoGbihtCbb3EoT5EiTh64mjRiXhDwEp
	 EGG9wgsv/um169BG3NG9w/H/BBzxp8Th9d/5uy55v/iUP35+H88GCfqhlyX93g1Xpj
	 IBbGegfEElMKldbc3J3Kpt7p9D7zad9ie2L87mThqn6F4hL5bQL0cnMmuoaPWZ89CU
	 tNbbf0vW+ZKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A60110BA434
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465629359.21023.4912653378663031791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8076af40503cd7210a7ee190c52120fc3e0841af9dba78d81c278c59d9b6c239
Date: Sat, 28 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774656293
