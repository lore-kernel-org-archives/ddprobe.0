Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8221B38DF9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717398323; cv=none; b=QF4kluEZbG5PW463Mhz/LECyIOiY+0EIFrigdcQFlov59wUIJGBhzrAMw3Uk86ATpDKaehDzReN05FZW0opFqpjERybVN/m4ZVxzU/0AwiF1AFu0miLBi9xKBsS9XUJOuIJjscG0bhjO1FgXTpjlVV5WVjaz6l3njuLPa17E1H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717398323; c=relaxed/simple;
	bh=Sgqtbg3nztgoDzTbIKHolUD7yB2BKaDfLQx9LxPPi1k=;
	h=To:Subject:From:Message-Id:Date; b=nZfASWRB0S7wiWCe6CK0r6fQsbngIhgyJMoJGngYJ8NNdr6pJut/rhCb8mkckxvNdEvzsQchoLOeQycXYl/96UZ6BkdiPHuffJjqgvHJv+tA7sL0C1SFrsi/h1hWeFtB2zTcUxxIDlqD/bMLoPE+K2DKVbGgZq/njqERTRTYibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLHQNv4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLHQNv4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 226AEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717398323;
	bh=Sgqtbg3nztgoDzTbIKHolUD7yB2BKaDfLQx9LxPPi1k=;
	h=To:Subject:From:Date:From;
	b=gLHQNv4g3m9y5kFPhpBsko+dkihVUAdPywzLpmOjC3u+BNp2rSQ0Q7NP2HTv0bap4
	 WnSWHROpkMLYUXEw5S1g9CBOJ0swA934vEwFnMTQYVcNoIeJWfacR1yO0rN99GxOeF
	 oNxMFdndlyU5MpD+ppgCfRS8v6tJ0JqV4L3oJC4VGRV5zPYl1oruI9BqYzURSKz6eR
	 IYhrpWh22dJ5CY7iL0VmcllmBvqN23D8hOX78D7a0/dnq0v32RDqBdNqiY1p7X7Jlp
	 j57XKNNnDoC3MLWeNeqdm6tPsbsOvqcyXkD6TZqjUZmeoHeq0RHsFxvSgyExZDjPXi
	 JJqbeo+7qhpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC3C2C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739832285.26080.14198856859502133105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c63ae1a6d582ee21ebf232a45bb1a5d717febe4818301ee3a6de63ea96e1fc0
Date: Mon, 03 Jun 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717398322
