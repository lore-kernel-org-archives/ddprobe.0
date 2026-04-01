Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6331C68F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775001894; cv=none; b=tNMs+aRHIXTZto9Hn7QUkaNpIwS0ItBGs2r+4GIrmEh7C+6uiGwqdecZxTMzINrtFboUhUssvPpYVQWKV58qJcCTJlfIxrWfydC3wryDu9vMqQs4HT4hMyaXY1EzITa9F1bOnKTKTaXF+8QMScQknJDgenCLQ1GM+XwA+kIR7ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775001894; c=relaxed/simple;
	bh=0omslDND+0GccCjwt35pVReTD5dqxRVI6O5csy2tRCk=;
	h=To:Subject:From:Message-Id:Date; b=GADaD8MFfjMNna1M1u5QdHdkfEeGRtFKqk6uP8KhdN/M7J75U1xZH1KT/T0wZ8eAfUv2wWXU8nmXCyp7B1Wr/A/E30YD8TQyFRledXn6xv/U7Qsk62/P+ct08Q05cwMtEAKaU4cQyojduAwSzGTqQTJE1xsOu69z0MxmaxhAGd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=migvNeRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="migvNeRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDBC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775001893;
	bh=0omslDND+0GccCjwt35pVReTD5dqxRVI6O5csy2tRCk=;
	h=To:Subject:From:Date:From;
	b=migvNeRpXtYQlkeFdx2FqnVQCpNLaeqyC77HHgZ2jVsCjWQUPJGfdknMj21PO6ERK
	 p7uGf929Dku7c7IZ8TBxyjJJYnAyWJRy4MehCi9EAZ2SKcNpkh8RfXSbZq+7mYy3Y/
	 i/f/TTX4Tyrod5Uphalp64JowS26ff3vprs25zi9Kr9RFpS6NXgQrzWqFy0P7m5WDe
	 cMjZGYE2GpZCoAkVdrF3QuhhZtcN+n6tHa95OVfWoehcIQRWB0wO9FBL1dUHSP3riC
	 nVwH0r8dv1B63u+5SnYqxPL0xSIVgLYrH2m5sdjEfpG1skmb96WirXW6QR1WKMnJLT
	 +cXL+aI2UavhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382A10F930F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500189359.17862.7001549163716361339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a516620b6950edf4e74ab6d31f9d2954bb3c71ba3fea54b6aa7f8d51599455
Date: Wed, 01 Apr 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775001893
