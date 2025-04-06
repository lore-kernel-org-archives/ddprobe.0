Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1E2AEE2
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743957594; cv=none; b=US/J+yTop6GvBU1ykifIHnbu4+yGyOR5OcPfB5xgKhlcoe8ILqqQqKBkaGncnQdSYHF9YiAsQUWaMj657yEt6Tu2RpzPqOCGdUWaflItqg9kh4tSj+aJdu2CVICI6SIJI3fjZ8D5/G+/jclHhnHvvV4/ZAL2Hfft9H8M2uSCy/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743957594; c=relaxed/simple;
	bh=KQjy/R4csZaQf/XbqfIF5vNCkb4BdQXg8jiGTvURql0=;
	h=To:Subject:From:Message-Id:Date; b=VzeV0X6wA6ZBr8ENvPJNIeOMTvnJ/ABZHsODsFDjJx0dKJuxsw3QcLs4fQF9NygfDvJBB1ITpALcp5aMgdfQHWVoTcsJ1MXaK1e6dIe4Dd3GtApLjTiqzyNbMYXKLm7kpvjlofu9Yh7sDs6hzcBrFCs/lFf2W3Q1bvIhGZcnycQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ostxE/RX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ostxE/RX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A01C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743957593;
	bh=KQjy/R4csZaQf/XbqfIF5vNCkb4BdQXg8jiGTvURql0=;
	h=To:Subject:From:Date:From;
	b=ostxE/RXZlcBJKH6QXsQs5HLPSXpEp/Hng9h2opHd9vlEuVDOaUHUjmHJ/StQAF2U
	 Juwb7V2Ldbz4C5NnRltT3JpIa0MwIrzFtcnG7gRlAmFdhINeU0Go26wpnQrzfRzb39
	 T0un/q1cpcMhua3DKofywsEZ7jocdMGd8fmEN79KsrnEUyauTRZ2RId4IPjbMPoc0l
	 aWsQmVlstH9TQqor0vjmE286dTbRWfXbAOo/UPUDG9jbibLLftuZPkH/00FPtFPjfV
	 frB0hd9xs9mZfGNJf5+bd4jYQvoUilA+1f1eZ50jmfZzE8U81B5rBT7xua/KspTZIU
	 xWbiaYGep/hqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210AC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395759358.15885.13558715705028046467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347d8527719ee27798218c00d0ba130476c72db64f175b91198b15cdd824e5d7
Date: Sun, 06 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743957593
