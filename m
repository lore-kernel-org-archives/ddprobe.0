Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124C0259CA9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773815694; cv=none; b=bi5MQhNGZQhZCO5jYeOHtkceSsZPWeeh+j9UZbI01O4q3ghgLUgzRvAF94Amdj1OaBuOriY8VfsXuSZ9KCeBMVnriLMiPsJkWa8GEFszH0mDzHe544xsQiWQnzgj5azHeSnbrHdFJ5UDZ1YFmdGyGtqvb4hfjo8Njq/iiC8iypM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773815694; c=relaxed/simple;
	bh=gLRF361pVN9eV5V4BZPD5i4r0trvv5GGA1ZhkpbDHvk=;
	h=To:Subject:From:Message-Id:Date; b=uLLyPs0azWYYLRKVB9/kAFBw0+5TCHxT/ynlhRqg364jmiBoczcPpvaS0HmjGzl0EqZleby4FdiltCzW6XsINNH/wjTGt/W6oJ0WhsaVIWtBZCR4zSypZ3rdh/TQYmNlBjCnoOSNZF31MPel5/fihmrWlag//bRvLOkQcSaLDKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE3RdlyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE3RdlyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BCC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773815693;
	bh=gLRF361pVN9eV5V4BZPD5i4r0trvv5GGA1ZhkpbDHvk=;
	h=To:Subject:From:Date:From;
	b=lE3RdlyQmUUa858aGt3grQ8XYQxaBGJHnRHyQfKMgLSettqw6fV3Ma7zgx9XwaBbk
	 QEz9DTxyQI0FnxqjwfyYJ7f33BsQbxSZdnjpE7cCj/cEgG+RckkKZ5qhtr3AuFaCmO
	 NsJdswrteC6w/iT5EotRcjzTPOF0iVVIwjbitb1ntXkF9j/my/u+Qc2BKBfLH+S9Sk
	 8x2knbMa0FJBpx/A6rHhidIGj9VIxi1LpF1tT6Gi4eAtheEWyy3YiaiPhOU0fxigeI
	 RAdtBnHjgngIrJ2pnUIRXYI+zMEYri81kNfCy1Osfk9d66vNBfUpOgRGwIFd0n8zB/
	 t4H0erjB0k/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491FCD0C2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381569357.2205.1440643051270653941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746ff341077da4d1b63beb47497a22745d5a7fcdcb460a8048de98c129768dd4
Date: Wed, 18 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773815693
