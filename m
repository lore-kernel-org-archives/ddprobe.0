Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EB5379C49
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784632114; cv=none; b=ETamJ9yuT2RIUJLFIBWQ7XksKdhAwai/UT3M7rxVZmAdC6ftymYvi+5nnmYx/WYh3Qa60IlZlHLFcsmL5kwc3dovqYf1G1ptkuWxcfOgnG4SQdP7C1b1zNdYfF69LAlLd2GCA/jYIVrVJi1w+piqPoEkty1vcqT9YjHAqJPihNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784632114; c=relaxed/simple;
	bh=kfJQYnBB/GQSlzCCrUwKSuMZN80gAFt+d5XgFJDPNCE=;
	h=To:Subject:From:Message-Id:Date; b=iGQq1nLZIMtR39ogSATwJNzWmwsXJh4Cjkhs7DsTFPNwyWZT9Dx4MbKKGPk3fOhoYP+y9rJ3biOp7IYJF6zz3XBMhLtg2heLF/PbPA6dg4jr5HOl+ncL+J/3l1MnSnVm1fk5Gh6juhM0o8DTWL6rmn/+iry8valyfMP5EkPYEOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOo48SUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOo48SUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC599C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784632113;
	bh=kfJQYnBB/GQSlzCCrUwKSuMZN80gAFt+d5XgFJDPNCE=;
	h=To:Subject:From:Date:From;
	b=jOo48SUxE2CRfdeGoTJWmaAnhg+adOfxfijxiuN1VjZ0OamWRVhho/O36lKNDBTNV
	 NaGHrFqBeWxnrdXQ5FXuKLeuEg5P9ehh78sKJru881QacBhJ9gDYIWuFFKVWnkYvuh
	 nP0mC2V1Omh+NKYtwgYDmzDmVdMdPB1TA/EV4643cAlzMUHvzgfBkZnP2ymCouLHaf
	 mRz1ZuczpxadfypZDStZzTC5rniDkEa3r3Aiiwa01jrOchjjPyPkKq/9Mq+Y7mV4O/
	 8Q5f418N5RI49HDLEsWnyIrN5uVz1Q7kjo4MQzbmRkOUaM3+c1ZlXSWKti2V6HZZ+z
	 asP2s33h3yLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3ADC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463211368.24304.8106813198692783293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3a5c3506cd650d150126bcdec9fb5032362ab6553a9018f8fef33a168997b4
Date: Tue, 21 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784632113
