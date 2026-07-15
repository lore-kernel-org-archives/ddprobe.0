Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A96541DDEF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784114314; cv=none; b=bOs7msOhpXP7lFvsgigtpd2l9CaviRmy+RSmDcGx+IIQfY+0w4SdXV2/Qr+WYpOSwyM35Ps7/YCeQlr71uhxPPGTX/ZHFrKy/RfviUjAznHlMsloFEaRLZrFG+16VWJ6DkQDLrEXnJX5ENOpV5QJv+UUZxG8phuRiaY8lFlnPFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784114314; c=relaxed/simple;
	bh=X1CjD3beem9Yp+6IyA/YMIybzXmDOjN+05/f84sIYJI=;
	h=To:Subject:From:Message-Id:Date; b=CUFTp33Xk7n/2A0+KEBvRqP3VRUA3UsqiAfK0SJdPQeBpolWsH2qnC8d0u9+UVgqt+Ctd4UtwCvZTScVGq2hDZh31C00iTmzW8vesrL0oHNBcRB5MmznJJrm5BGeKmmN3amovwy0QZX9YVFxjTFqy5bxepb8Hb1rXHlt2b4eljk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcaCvlL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcaCvlL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E8C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784114313;
	bh=X1CjD3beem9Yp+6IyA/YMIybzXmDOjN+05/f84sIYJI=;
	h=To:Subject:From:Date:From;
	b=HcaCvlL00GBYuuRfW208QftbkZxWknvLi1oVOULYgquc/IPyY4wVO/RFgTM1R6qYl
	 joycHD/WsC6qI3Hn1Aa/jxv6tNQMNnK7RyRjEwqYxdUO3VvIfak8yFaAdk88NNw8Ef
	 rZRIMuKEmSoq+SCvMRo98QoMry1UAz2IINUBPwgca2eY/hlOkWgdh0UNRVWhB7tv4x
	 vpxUNVyv+H2hB+Pq6a71DQbFt64BNP+Y1V6iYuWkbpUxE4eUIS3D3/j2sM7zqNEqge
	 dP9Wte14pLUkJOBda1DYqXgY3WsnS6PHp0Ys7xI0iHaY9xm/fnaLHxbfacBF1YlzYG
	 idJC4x26pByng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E92C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411431368.20647.2163088691472397154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bc82a40cea2f8188d45c364c6dde44059c66d144423687e05dacca480b9ebf
Date: Wed, 15 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784114313
