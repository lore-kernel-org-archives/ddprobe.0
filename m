Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE524317D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747699194; cv=none; b=K5UMMwBrS3jBQAVQ4DNWidUEKtKz8NcsqDizCtbxe9ZlWjOUEHBRlhO06NGOFsEuh/TdcNtu0UjSIEb1F+yXCySQ4nLRZidMQO0Y5cyMOX7iDLL2dTEAmSYWkDCV6u8UyGBOOKSyFOCh3z5kLE4fQBwDQac821NbsbjKolvqUBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747699194; c=relaxed/simple;
	bh=CwJTRJqjJsy7vQP8w91IU1G4RveFjklUgdOgju3FnoA=;
	h=To:Subject:From:Message-Id:Date; b=SEf2TARvAp9D2UOmczg/vdt37g+WaGDtwIipz1iqoIhjzucAz7C+lk1hoOfXt9qw2gOordFJ9+taJLfjOAiNE71XV2dtS92CXt8zcoR+H6xymd1Q8Qk9ZxViEG6dea7UWPFMs7sXzHwUKivfqEV68jEdtDeiCrACdBulrhw0wW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmPhSkPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmPhSkPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09FEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747699193;
	bh=CwJTRJqjJsy7vQP8w91IU1G4RveFjklUgdOgju3FnoA=;
	h=To:Subject:From:Date:From;
	b=XmPhSkPuameYoCo6ogHSX+mXyWE8zR/eJXo+lSDm0Jhn0K0P6oDg3W6pndJYbHsfU
	 yHepq+R6wUIFtR+QtzwaMUn7YrqQxaHJc/pTib2GiU45vl4YENbq9Pe/9d2zfSAEkD
	 Y8mWNaWAylT13huPlFOc90S9fWDP6QWBpGzLTzmc/Jx+t3jJg0wQWVZjy/ohNgaFNB
	 VcJjO7fh1KKctK7iOG2c1rDpQz5pr702PUMcc2lnd+ipqZYqB0ypPx5POLDOLUONn4
	 FA4orlCRAHZAGVLKLp1BWFg2lhLOnfzyD9G2IJAU/+y2tnskllNt6bByz40oREQjec
	 C3QgM5HqYL8lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A01FC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769919360.1060.9202507135937881603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391dad083a3b1c9c93b081f216ea59ce44309187db3b3a88f24683b82f09e02b
Date: Mon, 19 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747699193
