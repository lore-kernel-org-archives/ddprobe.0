Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF413148D5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770318834; cv=none; b=nnBgqvKShx5jYr1XncGn+IiPKBHzLCC88mpono699y0JTltOP8OaTBLDCo0pp+J5+WxTOnabho5bZBsJvs3A8V5bXUgTRY5ASOr1+Q7XRjmAvavDjFx/qaAxqyXmNi9SmkF6wMeLaet4UYoAJOYkeiq92qqRR8sHtAYsBnxMxfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770318834; c=relaxed/simple;
	bh=OqrrrDTV/aDj38/OdlKjApuYQChrplri/WRA0oxCqhA=;
	h=To:Subject:From:Message-Id:Date; b=EryQ2XDxVfTrGS+7TRaaBUKBs8ifu6mpO04OuQwzj8KKzOlBvo2zfDstLvCnl7vQ/LTGKCzSh1JcLI8ktMwavUpS/lYWu0BfQakm8e7qH44kL0aejvPZ1Xe4jwLg/bMatpxTzxjehQRmjLKHJco222NSP3cZgTeU4o6z46t8K8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAQpiu00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAQpiu00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F87C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770318833;
	bh=OqrrrDTV/aDj38/OdlKjApuYQChrplri/WRA0oxCqhA=;
	h=To:Subject:From:Date:From;
	b=BAQpiu00Vm4ajhgyBWHTes786Ny0yhBJgPfSDIUlRnjedwunXEdfleJmFwEx/uVhs
	 KvzKFUHmhRFOLGQ9ICECldaQyGIfSXqbcCoeuS1wj+HMc/bbEcv7L96N5blSgxSMkR
	 ek6pywH6ECFM4dmDS85pckoNe34qRC6U6Mq3TGg/8Q+/k7z3rklkcm7H8oqyJ0Eqsc
	 1b7cZyV2TqMLdevFYJUDh598kc/VyjbVS1RCpetLdxaXD7HFPfrJXnpCwUm3TDgnPi
	 Xg9lxhKRKoUk2ToMxMWcp7gtqUxYivNfsal6sHyyLWMzMeP1bjc2f48x0HsdN5rJf3
	 BiaHtr8y0QwhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460FECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031883359.26584.1460785753017498662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145366e92d6ff3581c5bac57cdfb3ebf512e37dabf5e009f011cb00638f8d438
Date: Thu, 05 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770318833
