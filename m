Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E4B2F32
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744528194; cv=none; b=uThB8lZ9iIaySw0dV31JTXNVsoc2ey+ma/w2cmBdQDd+EvaBVDgfmjzS4ZKfjkZySNeYLPXCjdk+mgqkT6ShTsspq338985IHKr4dqH2kILzaLPre52HNSQ7cTWxwg0BRNDGjy6viEGiQPWFlVas1hnfi25yODEyi6jevFC7gaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744528194; c=relaxed/simple;
	bh=0LUQvEHAq68Gx77T1H8ZzRZ74ElkhWKDKqBHvPedccM=;
	h=To:Subject:From:Message-Id:Date; b=KuO8XfkslElyNLZebl/ocb5cJgwqG3f6mVKxlSznSZM5UsAh8WQNMhwB+LbKLWsP0cF+I+Nx/pleP5OvFMlKEN9SafRTutWexwBDhGsHx+IdN1GilbT5XpCzNZ6FmYxDkx1q9A7+thVyGSDXK0Q8xZw2wSvEJj/lhxI/f5xFQ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoYaCqCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoYaCqCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46A3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744528193;
	bh=0LUQvEHAq68Gx77T1H8ZzRZ74ElkhWKDKqBHvPedccM=;
	h=To:Subject:From:Date:From;
	b=aoYaCqCIcV48YdQMsD9i8eqvLRLJEhy4Gl045E7QKl3aYPFP2vl5d0V4EzvS/MPPQ
	 KhOKDmbjgf8jUNl8QYsrS94tUOmKNRLBhq4iN9i6Xuv84uuTvEaQcsmRX8vlHdJ/sB
	 p4A2eOWwVmTHbLJ0OGPrJ628pmcEFBptSIrl/RKTNG5+Cmu6APqaUeYSPTr//GyL2H
	 4QvuCSERcIkgaXRE6AXV65vSVy2aTAJRdmjHLSUPWd1mg2YjnBhXZmfLLK1G89xyJE
	 Ofo5uAe4ckJnikC7hsIOFzKnH8Kz9oA2u8QCPvf6gkN3Bdu4l7sOO8JFAMMgwKeghj
	 q5Wb8G2m20xlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E224C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452819362.5104.16535779005769197265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a66eccb1ff9481c383736c48a790aeedb42350e46d4c7548ecd2d8d83c9866
Date: Sun, 13 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744528193
