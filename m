Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB036218827
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768724033; cv=none; b=MyIZZKYK25aySqLG6Z5//H1u7oC+4SnlXamX1lGnbfVymT+zrG6Zi+49aV85s1LJeIP1yYWFy0E1qymBImRkCnQEZaFJUFRjRHewQHwKItUb/9BT/hYqKbAsTlaDyTmauBOtWLbrPQh2Iwc7NBbZkwJWfJvJ78NbeAAvVJpmmXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768724033; c=relaxed/simple;
	bh=9eSr5rd2oDVeTL7+Mqe8Nm5yjUmiarZCUD9EDRg334g=;
	h=To:Subject:From:Message-Id:Date; b=uraUlJ80o2vuzPszxtNiLQqtLuR/h8ing8XNpZbbwrC9GWvhaLjIq0m27qZyP1V7vHJ9GfEvzFJsMNiyzRRwnludRvH+6acGxhTZvGI46iuk3YSJ3JCgF1xwZieubnl3n6jJTNHwJdwzqjPaSN9WlfIscgeIg1fAuIW6PJo7KpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEnCWpiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEnCWpiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C0AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768724033;
	bh=9eSr5rd2oDVeTL7+Mqe8Nm5yjUmiarZCUD9EDRg334g=;
	h=To:Subject:From:Date:From;
	b=uEnCWpiGf9U4IGlQ77HuazxCz54alFi6m1Ey/03RbhToSsoehr15eS+qj/wkBw6wp
	 s3cXfdR5CTFOSa2rfQ6xV26plDH2watlfw8aE5+bIyNjNul2T8xvY1B8kEUKYtnzpD
	 sbOzY6LrW/yoYCHFqHYR5LFKBidjqn2p35mM7IxmoUqrrNlYyE3UY9tgBadOWS09hW
	 ZuxquNoIJF+pBHKS/FfXDE/Jq1UaJnWzmqH2kIVWDiZuPCYhrrL9fPbW8/n8Ww18Mr
	 6+Xw+JcLaUPeUFEqn3IXX8DVlv8KNzgUnw99bW2qnDU6JMNf9Odl22LSOekfsOmOtk
	 qXTLXhU8DlTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92800D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872403357.28056.9214210823143352387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa3a1a2082e3fc8806b862fc13c0ade04b41390e0687dfa5ba4d671095728e6
Date: Sun, 18 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768724033
