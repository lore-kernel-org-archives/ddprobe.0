Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BA9346AD8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769808833; cv=none; b=s1WlVMCDH5wVf5XA7rR2P61TbDdxqGHkbJjf8zXNzV7GH+Rc2QLS7wJ4PNQYfibW1dH5KQt6CcZiPpXytwb4HgAPIAFxNUhGkPay3MFpNZuFO+aXOfUjKyX14XvcsCPis0pcMmXK057M3KMvBI8DJIx/ifWDmi9fveAzNunKu2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769808833; c=relaxed/simple;
	bh=6uKv2iI7c00tPktuMSiY0dp/xXdf1Z8zne9KXT4Glog=;
	h=To:Subject:From:Message-Id:Date; b=V6MR8muWEKLCQlrolFksm3Elgep76jHS45MzJbs6ByfTMFxWPh4E92XTDt9LQSPMFIkiCJ6+vBtuya9PXBP1afPd7FWC9+j477VysMh6oCZ1DHF4LvPehxgR0W+A7JS5Nz6fk+0r3htzbcV7/3CjmwJJOss1CrA+/wLFUJDzkAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFfyjzNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFfyjzNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D03EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769808833;
	bh=6uKv2iI7c00tPktuMSiY0dp/xXdf1Z8zne9KXT4Glog=;
	h=To:Subject:From:Date:From;
	b=AFfyjzNjwRaZy3bLAEO8Gihqz5mNeDxiqwEIuouOHXi5mKtapQJSZyzfntNE5jNyw
	 FvjdgV8gaIBEQc7xRjNzNmtEkH2ZavazqVkwEkqKSsscRXDXIgPJPLq33tNo+5r5T3
	 TEZtwmI3vEvlX4dvz4BJtZJA7bbKYOJvgPI7TCyiRnVKKh0u18PvvvdBJ/GkRUx/hg
	 nLFR5ZYV6JlhUqZ4PxMU5zlhfkmOeci97Uz15tKmOrV6kLDVuhPcyWfkjX1dccR1Cd
	 xR/WJxR6498MAz+0/cCu4vvBXu1VDWSxM/nEdT3S648F6mfls2liLvl42MOJ/zcKzq
	 /UvJrZiOa8f+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E418E6BF10
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980883357.19183.95861900487016867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec34c36f1b0aa45f0feea24491afbafd47bc50a705230d964f2fb2dc33d78b1
Date: Fri, 30 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769808833
