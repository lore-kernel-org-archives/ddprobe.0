Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA661BBBFD
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741630734; cv=none; b=VeIhv2vKRf67B76edp2lThnnX8DDnwZ+mKSBJdUWKqkUV9e7gLZkuSCi/Im1oJ9Uwmdny6u4JcFuH1G+m5olg9zIiBKMBzIyFVPaDBZyi6zZoyyKuOJN+/AQkzZiBzVtgInelH64iXL4PJ3IB9oQ0CVBtnk9EJFSss+t7II1mTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741630734; c=relaxed/simple;
	bh=pgujQaECmNo1F68mVj6ZjAKgvB1ZuY8UbQXVWZO2Diw=;
	h=To:Subject:From:Message-Id:Date; b=uN5NulzU1KHlxjXMvY35FsjZWj4eDrd9bryLow+26MGU6EKfvobRm8weCjLWa6ZqUsQSj4LFlCoA/X+JKSeTPQqPnQgMRkfRpXXkhbmVvOvBcGZfxJCUv/1bp3JKALa5AWF+IijozpkAh1hGIMrY50RKTh9o2uTC0YY+PRCQndI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYtwcWXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYtwcWXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3972C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741630733;
	bh=pgujQaECmNo1F68mVj6ZjAKgvB1ZuY8UbQXVWZO2Diw=;
	h=To:Subject:From:Date:From;
	b=jYtwcWXY+FwQRddC9LP/M3wPmyFjgL/veyMsbgM6qbJNUS9/ZYBjEfBRCgyDamLt8
	 7/zC9kDODnD3gsQMmKfilYt+5zj2egrJAHE74anDodGweBP5jB3aE0noT/7oD8ASot
	 UfXovSV7hzEgU7qw54nYbiOoG0OzxqfPgsRkx0Gov90SvU6WKrQRvXEPRN/cVFhBid
	 EtRUKnjRvt8L1F9Mak616lHzfKPnC8QdmPiCH6UAdTx1FlzxkpYTbIUguMfKhal8ek
	 8Dk7S+2irw9O5gRxz5gsWhtfj7U7+8d2fwO/xy5JtuWKjTzpDDfsVcO/5wLFzKVsqw
	 ZvPp066FneW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FFDC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163073359.9250.3390140934167927163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bc27d6d8f730c5761a03c1c45cbbeb74925406d64ff019cd6d977e7dd2aaa6
Date: Mon, 10 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741630733
