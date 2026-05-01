Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3D13D16E6
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777650454; cv=none; b=BbgIpbka0DYFbmxaI2mopsqX03cNfLnjNvubfbJxbYOIbT+/5aHl36k+s165m4vv28CVeASIKOoJzbULAQJ2t2XEJDfdcbE75gePbpsSFJYQGlVEf+uT2iB1MOMi0xFN8K3IETR2Uk2Gj3i/M5YkuFf9T51+BM3zzebkMuWZ0cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777650454; c=relaxed/simple;
	bh=YJZ+m4xhcd8vwBgTZDmyV2UNMF8diz9xkNMgvlCKDmo=;
	h=To:Subject:From:Message-Id:Date; b=bIp73umKCW8E7a9jwRfQGjDv39iEdnawPACVNfU+Hao8hjef2XtMM9/0iT2qzDkHXFPK9Leh6GQhCRqRNS+ospg5nzZgkUzGlX39FcwYbb8EpNmmGkrwwKJqA/4/oJh2O1gT5nLuKeLJDKAT/Uv0HyfCOLMmmjhE6UWo1fmwAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffRmr7M2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffRmr7M2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13F6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777650453;
	bh=YJZ+m4xhcd8vwBgTZDmyV2UNMF8diz9xkNMgvlCKDmo=;
	h=To:Subject:From:Date:From;
	b=ffRmr7M2xyfi7ddO+DFaZA9fi3ZVZLcFc+S4/boj2HNp6b0a3ZOW651TXtof9HwX9
	 Y1RcD4ohJTBfXUfPgwSfP0gpsdFlQIf/kv9IVDduUAdD8gaslGuUteL89yucdI1QZr
	 lpJlFyz37HqTdQBVWuWQdYeNhMa2xy8TPqNV7aqxVdDWiImm0UdnH5QKofcHkoZnAs
	 IcV/GbKbtTyvpEqB6dQqqNiDGH5NkRvoEXcGTtoIi751oV80FUU8vhcuxjNDgcswMC
	 uSRo/Q+tZr5Hd/mBafpkDQanVMBxKTbiXZKcwaLq7CSyEySgiwKUJ807ol5wgLnSbt
	 6TJVX1u/CER+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2E8CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765045368.15088.2429943889769613274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f15a87a3dcb68c7b8121b622ebcf326b98b5d9b144c7c006d5c3ac097da36bd
Date: Fri, 01 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777650453
