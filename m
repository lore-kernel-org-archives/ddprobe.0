Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E85170A08
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736968554; cv=none; b=kS3ghmRvqS4CZoLLcAFRC9VopqFHpRLaxqr/PXFfePHNO0uKs6oRxTz7i6o2bmbyxc/7j3lL9kJxNHSWfQYaTDkE/ml1uKe7hnxzxOuCAtw0Ne3X7dNgSdmgyaBRX5uU74SnqJ8yLaeZ5sgXZV+dV1dWTObSDNwtxmLQbfLT84g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736968554; c=relaxed/simple;
	bh=JIJMv3i0VHybC8s3BnWPDFQVpQqZ9FR9S6vPefG68rg=;
	h=To:Subject:From:Message-Id:Date; b=f+vtD7vyA/QzWUAtThOpHA7fsyAK5F1bdrkjeej/mH3m4XQw9OiQU9cJpUnE/BU1dertqfbTPmSHYKDPcp9Lij4bBxFuBOudyzIReQroNkH+cKvjzHuPhV2IebNeBEakjpC5c5GvQxj0O0nbqv2yK7fQ7xDCgmL1Sjhqmd4nVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+6KiqEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+6KiqEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98D7C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736968553;
	bh=JIJMv3i0VHybC8s3BnWPDFQVpQqZ9FR9S6vPefG68rg=;
	h=To:Subject:From:Date:From;
	b=h+6KiqEt4CvCT5cjLqKp4/p2B1P/BFbCTuGUgvxGzmXXPFn4fyeRZSsCaMFFIKxZP
	 Fv++EUOxFfTqM9cOMtzJZUrgGTSTDUmx19T0K77POGb3MctxhX78V79JAMo5wq6PW3
	 q+705YVbQGrlSytfdCI8UjUXDIUO81r9dgZe1+K9WqdmHaUOZ/+Ebxi20S+Kv8FkKI
	 Z/5NoYDbZK/A3U8s3+/kvTNTLbMFnIXhg1ReRA+i2Kkl9c+sewBWf5TJvu3/7/MDj8
	 mwkHs7FlVIqn8yf2eZBSUASxTkbg+CH/mx9V5sd8RzHOs+JZpzUmOnLEqtawqyQ/V0
	 GnZ388EL/EZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCEC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696855359.9006.5857323194442345531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d987f3888b7b9b689ecf27ecf89edf9625c34e3de9c98c0f693547d059b11dc6
Date: Wed, 15 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736968553
