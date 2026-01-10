Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B725500969
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768037034; cv=none; b=JmaM4Gz68s8AeqfZcDEhyo+n5C9EbDmw0qfcd0oXgjIFM0UId06QEOY4RuAqL4v4gGE7LtdRasOocwYKVBEMJkreK9JcREgL3TKrI3+8h3kVyeC7h6+otfLmAgx+wABkT72ZtsanGCdobschOfORS3EbVb0vU2BrSWo5wa18gew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768037034; c=relaxed/simple;
	bh=voc3W9En1nww/o2995tSOAbQpGmReYxS0GF2MPHNAmM=;
	h=To:Subject:From:Message-Id:Date; b=FXstsuydFhPF53YIRJV0rY9sKFFNprrJCvOeQGiD9ajWO6D/E9DG6VmCHW+HWbCDP9rPVTkNpxl2aIysPYSTrlV5WQHOw+C7hVshFT5wc0JCfaJia9LJiFl1YDKgcxgL47Lz5WW2ZnvZBa2P6Tbw0O5oYO/7Nd6lZocEHjCC5cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChFEYjc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChFEYjc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768037033;
	bh=voc3W9En1nww/o2995tSOAbQpGmReYxS0GF2MPHNAmM=;
	h=To:Subject:From:Date:From;
	b=ChFEYjc3i6Sqf/wglRDrHseE5dsp3DyFhjs68WA8fLspZoTOB4b0lwZT4NpvfzFBS
	 l3cgLEJ1tqn70P5lRJSzUkkD03Sj1Ksv4wyS5KUc9xgI1b9MNd9aWUt9/LEWMSxdxX
	 IBh5DbttM7qJ/9cnhdRW1EuZsibq1V35zWlFhynYSsB2/XmOrSoH7OoxUYPm15Eg8r
	 25/oIm71I9I+SJpMogUYGFGeNHKgTtNIDvLcs1gBm/fCxBuSUPgkgKw9lACAnRPtMt
	 oHiqjVjqIwruV9d3JFy8exn6pP052Y+QLdNJwmmfdg4Z57SNWChl613bHqsDFG11JC
	 ojE4w+4stQETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C96D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803703357.2493.7498416762363533939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419d7411e39ad2378283cb50a0580f7d4bc70e45cbdb9b76af8cab486c31d6fb
Date: Sat, 10 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768037033
