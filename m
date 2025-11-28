Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2852DF151
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319974; cv=none; b=GNdHLGGNvz9uApVWwMWKoecpXm1px5q1TjQcID6y1yejVqFgmZKgVFXWHYsW0ro7K58QFwG4yzGseQiHxxV2djY5aru9NM6VootIrz+z3T7k+fBp9AGU8TfHx0Ni+n0yc5k1uk1vvdH+/vDIc70ZqJNyTqwiQjYhwHbvw0xfUlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319974; c=relaxed/simple;
	bh=mAL5q5dom8zskGesAPCEDLJ6o3ahHtjyZy4nPmObnW8=;
	h=To:Subject:From:Message-Id:Date; b=HapI1g5B0IVWz5DnxWHaWAp2aya7luvwQ8heTgHNRiiY1X+KfDg8A7gw0RPA2wgEBrt6d6B2pSuUbNGXSzxZvlyOnsyeqsY/BQy+kD1UQZr5M9xhf8CyJngRvEJ1E492NzACNTesR9FfxL+9ooY7S6NMDshr7FsCE3pPjhXDXJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjdVgxnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjdVgxnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD12C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764319973;
	bh=mAL5q5dom8zskGesAPCEDLJ6o3ahHtjyZy4nPmObnW8=;
	h=To:Subject:From:Date:From;
	b=LjdVgxnMnr+CglsaERk0CozVUqtrDa3lHBz+pct2QyGFeL5PJiWMFiylYlQer106n
	 fR3rEDOHlHqpKiwMU/oN2YvnifoF81JLvIoM1HDiwUL6U9nXo0V9KDXq+nXTn4ASrw
	 V8DrCc/l/buBUmrOnflNuIPriEtL1dhyLOF/rXJWZvx7nPTJl54+9PABl6zDsGIU+D
	 FhowtJ4b7ewUflQhcwGlW3JXimJxl7ZGFnTlIPlpfRaQx6G2hCNjxRVDsNb2DRA5m0
	 maI0oJdU8G62scsk61/v8XTkJWijysNfefvFmvFZ2HhkrEGgh35+zBa1Ixb8g8t+sh
	 LdtozAEUdOouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDED116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431997359.12010.10508269493294180911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd671a0a7676fc2a44a1f1fb9e9bdb1854e2d9fafc04a9c4ee9c0fdb04e0b1a
Date: Fri, 28 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764319973
