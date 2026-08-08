Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8F13B2FFE
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786197034; cv=none; b=Hd+oTmqPx1gmm+jTUc+C4ZqXEiKfdEZu2LWxCPeu9ABB4nrGcmp7Tg+tq9dcYj4eSiVl7M6n1qrfhqhSpyxjrYOnbdvCk37qBA4cHqguyxCnVsKn/+vqBNxe5+HDWs+JZHil9mxxL3CmIKE/qzLNDU6+DeSuEwJttCH47kci3yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786197034; c=relaxed/simple;
	bh=BgBsRQGj0mAbM6QRDxgVAQZxUCUh2jv073qjEHGR/ZQ=;
	h=To:Subject:From:Message-Id:Date; b=G3n44F39JiZqlxv02MVrGziv9HIG9GViaQi0OVcVhz/XV9haFUvgAmkpiaGZMJeZAgtq/cHFRprZK4LNf/zHxQr++5nGx3o6eI0OhucRcBSSdj3WLQgGv2hU/vlaTnCdSZiEHaJYpfEb5v4vOtuvtQM6+PFQIDg3cyxhBVASxaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSYIn0B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSYIn0B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC14C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786197033;
	bh=BgBsRQGj0mAbM6QRDxgVAQZxUCUh2jv073qjEHGR/ZQ=;
	h=To:Subject:From:Date:From;
	b=kSYIn0B+TYNLcP0jUh5pB+YM/wYIOloebGHr5gQcj0A7EMjl/Hbh1rK4BimgopXfZ
	 fiyIqkEJ1De6GFwm0cryzJL/54Dy5VLIMqK6KP8PlNBzrBBlmUK6Mr3WWNnWayGQ5x
	 gCcjoJA8VROqPZXyOJTDxGsTTaOWGePiSX4lIOi57jzvQlsysaq/b80lGQ+bDvgKgR
	 7l+amg7JCuO+10CuhA0Nz2djfg+cC1aOGk8T2wGQl6/vEKrAGRQFRXAaTMOEq5+u0G
	 OzhmxPl4rfr9b+146+jTNqlsmzRY4gNjn/JnJIhpzZdyv/IRNHAgDFM3nJlCOD90LI
	 4tFSMcwxqNkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E3C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619703368.11106.8486082905590399270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353c4793627255a08d4d48246b3b48ad62da92b6292c14d459c8002fb6c11a02
Date: Sat, 08 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786197033
