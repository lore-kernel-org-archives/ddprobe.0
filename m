Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79CE14F9D9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711564097; cv=none; b=gUxjo9fb1jxPLE+ApHvquYUhCApTl8mgTt13QTUTaY+QX0hhJPm40F42L+GdiHRjFAR/8tvDZdqu7FxAm93iuf7FPyCzYLTzF/jB2ThD44XBi6sPXdrQJoZqP4T12KxO0/7Tr3WlLCU9w/I8Pr6AlLtJm+lBt1BHfZCNRcqeWOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711564097; c=relaxed/simple;
	bh=HtqEzCBieonpkJ9ZXVHbh8S975aLxxZXeet4fSskQ1M=;
	h=To:Subject:From:Message-Id:Date; b=QiQed9TSCl5VPAduwsRoAABKxJdEkmZ4To5sn03brJ7bbMpAWiw7B3w3hCuF9CjGhZsu4HUQkKSoUctoBjYLDikBKnypg4eH7NfcmiUcL9g4cwUPFVlhoOLdWu8d7WOXqlQXE4qf40SOyhpSaBw7n/qMUekuyTbCKVVoDeeEATw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHlzsRIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHlzsRIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F67C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711564096;
	bh=HtqEzCBieonpkJ9ZXVHbh8S975aLxxZXeet4fSskQ1M=;
	h=To:Subject:From:Date:From;
	b=bHlzsRIPzMrI8+L3S3SV79hVZm35cv4DLbA6t3unWrQ6iZFYHQ949W68xG+SdqDak
	 R3K1PKR4+06rg2NLiCpi9QpKJV+4Ps9CthR1yRptlggndiSUocdGQoueEz1nQhyGXP
	 s0Na3dJmXUA+I4ZssmXo6Uvrrqe5t/u1zm3HfSJKq7SUNn7omqd4KycrIMnv+jV6t7
	 YQfggLFDcM1EZYU86MS0Cvhe2ZxHCFnje7ShtW/qVme1hv1sqr46mUUa1cbyFAOEDo
	 wAcgmcGNqkYOiVBs4Oh/LyJxJFKW5qrMYYk745x8L8AJN50E8Mjlx3gU16gNJ90wfI
	 Xd7ULSBHMS/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652B7C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156409640.24592.7157945839851495825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96b45f812501468210c8f628062426b3bc591b3d817c5f5518bf9a74298f239
Date: Wed, 27 Mar 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711564096
