Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332ED1E495
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736882154; cv=none; b=EY6M8Eo9+A2X+wfPmkOCcvepSUypzUkkms1m7cTZEWn8LE+vjVZcUok7gYH6LyrgKQ0VFkVMYWdDp9RsCt+QuxuGapYH/eGzTwLAD3Lkc7g0ywbRvZKGcDwziD5T9iiJo8glC8EBYgS6mgMoT+GnSPGVByALOKcFVb9vZE3d064=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736882154; c=relaxed/simple;
	bh=iQhvDbxuEEmg3EArBwxxSw6x3oiYIruYpUxZ+G/PYDA=;
	h=To:Subject:From:Message-Id:Date; b=E9lRrOw9hu5c/eL/EOFM4hJp5rjV1Izrpdb2HnWfyKpWlCqFJLh3tK9C762fDUlPySoOB32Fvb93OFOedWDZEVrel3GEd55svvKjz+Tt9xQ68j5UO+3RRxP75GYN0/uz3h3KOiTHaWvo4l5jwPeV4KWhxfo2g7npL5t9eYq7pW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH1Dhi69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH1Dhi69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EDBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736882153;
	bh=iQhvDbxuEEmg3EArBwxxSw6x3oiYIruYpUxZ+G/PYDA=;
	h=To:Subject:From:Date:From;
	b=LH1Dhi694ogRRLsuGNHbRsQmeBmKwhKiLv6MsARGLnBw8PwT/J1PIL8LeZW7Sh4eL
	 JZh/IpzfpSbYuLfvLCzwuapTmTSlENGcbeVXevDxPfV5WMHh4U3l+FIUfJXh95T7EF
	 uxLWk+7GLaFsuM/5qrT1I93/YIWrNDN0B31Snpsop4aRAu6O3A3r7lrxzGU8XqUBFb
	 M6ANdfOnMnoFyOH+u9Bfu7QtHh3x6uCT3SkKy9ovsRvKoILtV+SwLqXHtlk01RBIw/
	 V6cZUqEX8+sofxwQpA/QkOXBjVgX2qQmv1pvrUAMX8qYleK0yJ9Mw/2RRrVRAXdxrt
	 j1VKndaQyEFNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D5E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688215358.8726.13225326813250670100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33cb93efa3f0b963cb6f85818c75f83bea94f4e0b9b89eae6504cdebaea0beb
Date: Tue, 14 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736882153
