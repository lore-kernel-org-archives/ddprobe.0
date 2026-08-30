Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA67318ED6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788123034; cv=none; b=oQwqW5hspWPKGc/mfDx9p4gnxvh/zIf6yb/1cRikWCdmiDiZcP5JC8M18km/dFYdgPumxdhrX6ECx91ZqxmvCFf0kFBBFwFj0/EzL6ubmmdR1M16MFJIOjiYxl2nltmU8dX3lZ+mCsHdAHQt/yfRxJ9cFdGSqR/Kx1O+9QAtefw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788123034; c=relaxed/simple;
	bh=nCDi9YUR88+HUfCN2pyTtUTs74ckXaPyHWi2IGP79dg=;
	h=To:Subject:From:Message-Id:Date; b=FJRVVkNnnPCkEoxhyzEfPOcwq+8Dywjttz82gFWh5xMEXpp4HWwNMCiyQG+IJXKVdoJNsv+q3eNEUUYZQ3yu0C52YAF2vsDREkO8/7dP+SRsVTdVZfiU7ISi4j7SdQfn0O10NcWN5kC7Z2yi6TgEwAOtCIoLLI2YqIyqFVYT+1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqWpT9ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqWpT9ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC835C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788123033;
	bh=nCDi9YUR88+HUfCN2pyTtUTs74ckXaPyHWi2IGP79dg=;
	h=To:Subject:From:Date:From;
	b=kqWpT9ZY7KgDRyi3lQe6QpsmfpYFXM8Drh5W98Itc6GpI4XIMwO2hBk3s80YAwJev
	 Y8kB1Q5JnEeJNmYY8Sp+uXhh4FJQXbMPVzAeHOAzOrEl/qXFYBDyyvMVcpusd2bP5g
	 XftII/3pBs4QMXYK6IXx5pjDGVzwJseeVEkXRWzU4mJRzQL1kHVh1+bBNH7WmTuXhy
	 sQ3qEt1Q4701g92TI68cNnSqkfpyjASxiIsngr5zje/iH/99uKb5q5qnhX6GYFfb0u
	 C/BkXHNZaLe2qxa+YjAgy3zyJ/iPAP8ANvHGwzV1MfJgRgQn6gHBTo8EK+fKZ3BGqd
	 m+0BGtDEsWkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C8C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812303368.12141.2164964347313204479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf320af27f1b1d2f3bf135f23e5a5963bcb622d3a31f84e634cf050f991c99b6
Date: Sun, 30 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788123033
