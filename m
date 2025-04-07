Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EB2DDD3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744000195; cv=none; b=ExIzyA5LhIYxOaSH+449GQOfmGCflVRBzMHNwi4NeGOquDLCsATT9IMStxzCh6WJ4GWRqAe5ulW1HEVS/ulAryNQ+bHOgUqseZMseYefrZENgVWumvn65e6P4ZjufguWg7b/GjZ++DV0xmUhTqxcXHMU+dlExbySltwcTUPOnxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744000195; c=relaxed/simple;
	bh=V+ddVoU8lyXvy+Coa9BfqjySTJeHxZSxdBUgjUCXESE=;
	h=To:Subject:From:Message-Id:Date; b=tRarn1fe8AwsXEeL7fwaF/irp22oqFzw/PzUmbbszhxz1rS0kunA4XmbFXT/5BQ9+1M/ncB5XMvTsfC5DklPyNawqJ1UANGt+5z+cDTu1NLEMPyvi/XCIgKHO0zfUr3u4r1GACL/h9khB5mXcsO+5Xobx+x9uWit/7YFc7C7FGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eryu58JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eryu58JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6292C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744000193;
	bh=V+ddVoU8lyXvy+Coa9BfqjySTJeHxZSxdBUgjUCXESE=;
	h=To:Subject:From:Date:From;
	b=Eryu58JFF/g05zTUPdULF8lX927p8jvwz3DcaQ0+YAknSFNQ+cyE2TDcmkBx1X75A
	 6Eiz8tRQIOdrbKp775vI7KzMHcfyVYd5Z/8WzVg+b75DiwXdeRn+/i4YYqd+I/AKCk
	 wTwuWZlAEdESjxPQ/uV50t8Un2ZgxfvkK2uGybQyCpkC8HQlJQwlMnj1tMT7BZEVYV
	 olnHW7OY5GmshUokvwdRtovrssyMyRFx/F4EVfT57LxoN5CeJf2oW+dupAHt7VW5dQ
	 6fxrUMJgwFCYJPMQgMB5kYneMNw97TDTXs3AT+o+IT1uDE+gQJztVCJuraPY4s6Ckk
	 Ee5ErAJ9C/CjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA6C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400019358.4225.1560412374867270661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dad2083fb983b92cdb5dccec2f0aa4459d8ad7da15852fb71a6ca809e3791b
Date: Mon, 07 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744000193
