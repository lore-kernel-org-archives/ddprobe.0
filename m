Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510291AB52F
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743050994; cv=none; b=CODFJ071aMGWw2vo0g38xrfYGkqmCo0NEeS52h8tE1cp5pAq4CObyJR6ydFHkyO92EUtXK3VSgDoW7OR9wQewHSDSFvNVUsSu6klOBHcSjEVdhib23o8/YCl/sQtBu+WVjgp7UQd3pt0YvvsresoDX/6F2P7BsvwvCDvyLkTPQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743050994; c=relaxed/simple;
	bh=41e04b8CeDo+LTbVcbPQk3n0Ru48O21cKUul4QQ/OpY=;
	h=To:Subject:From:Message-Id:Date; b=De64tUle9PJ7lAbZMgUFovUoYK3JtIND2H2JLLNU9Cq3hp6VwIL+73eEw6ALSs+RNRMe9xcxqIUpVtjy9gxwy9cneDTw8Qo4wtiZ+VO6ZaKvxTBA2N/SBr8zcLmpWGWsKW/6TUxmny8qDgRjrTHCpJUFRmjZIevJVRua8IbC7zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uF+vdxSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uF+vdxSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CB3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743050993;
	bh=41e04b8CeDo+LTbVcbPQk3n0Ru48O21cKUul4QQ/OpY=;
	h=To:Subject:From:Date:From;
	b=uF+vdxSUD1Xu+IpQjlKfqQQXWNFYh64LfNiMNYhcnH2VrVftPESrF8nL5QeNLMOwW
	 4dBdqjDInC9tMdfgY0+d9aUYsLjyu353u4nz+PIoRQf0xvvJ3M8RvkhmxMmeJK2zBi
	 9wCInv83uPFxJcABzluEWiql3GMnHfo3Rs1apE8VUo2Sn4bGmJGa2YHnC4O0bjK0GG
	 ZFY+ju0JCF7b/6e88dwg+MbfJ2UD8IFvpxDOPdwF9KvUZLl5kmXXZsleKFCelsipai
	 Q8q4Cc57QeSzSnDrFGcpWzyxykZlhNFQosgRnvqHzhC4EIZVU1RbG2ds+zqoVs1Rnn
	 yiRTEISbcrBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CDAC3600E
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305099366.25700.12557426451517516139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e101688d0b63d5f3f00135fdec5fa1f26cb0313d4f960d387769f32fe6639f
Date: Thu, 27 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743050993
