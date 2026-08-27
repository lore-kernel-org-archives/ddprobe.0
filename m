Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6479A3F1065
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787874634; cv=none; b=q6upwR8ELbPyPnRexhxTKyHyQdTG0DZtEGHTf7Ifa3RrvqYLmyRmj6DTO84BqR551NAdSo6OSzaY3dD93xt0aNXfZ5Y/YorOWGC7YDKVIHk4vrC/2d4QdgWesF3vP8/Q5IwwWqKb3T0IHt+iYDqzv8+BsQ3PQ6BNdaI/b46KRi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787874634; c=relaxed/simple;
	bh=Gyin6Q8BGDdES2vaiQHwspQYKrVzVpalnpovTNGqSMA=;
	h=To:Subject:From:Message-Id:Date; b=N9YZZGL1WH7WKOQsLTIQJR4vKbL0+yEiX2ABBZjqsp53ep6UWvwScHD6cdF6jZi6IgQNKKLwsHvI4CVLSVFbMwqcPjGJhwl7Z+O+BhehIXVe/jVCZRBD6LW4XCaA+6zIoL0ch0I+VhqOHaB4J1BpGDKUYoOC17RqEp9SkhAol1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alqTFzLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alqTFzLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BBFC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787874633;
	bh=Gyin6Q8BGDdES2vaiQHwspQYKrVzVpalnpovTNGqSMA=;
	h=To:Subject:From:Date:From;
	b=alqTFzLzDwgXdrLCXbB4uZVPmzIIvnhJtOTl9qT8NERTStl6PriWdHePaMmgXK1OP
	 ZKjgk8knhlcfqpda5OhYEyInQ1/h/1m07XwG6wqS4LrnIqTuPF3jmnsZy2pXe69ECO
	 5yftWBpVjiqfRkzgtVPRQOoCKnDs1oBvRyvjJPLGpYE0LfdjxWG3V2WP7r+QssC+wH
	 0mq2V3t8+yoIs3cHXlziNW9DIq+ysxHBL6JQrYOZ+mwOMYV2C3g+7jZROJ7yY8xdcu
	 pSyS+74KLahWPwhG7dLp/d2r2T+7naH467FFS9piLo+pJK/DVu6ONIc2p6gx/6Qzae
	 qB+Ru3ozRIvmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08B0C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787463368.11162.16896925132308558549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219eed3a04d78e86f2db883f90b9d12c96c8de62b742c7f0f86eb941d9da3160
Date: Thu, 27 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787874633
