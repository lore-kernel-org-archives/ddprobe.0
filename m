Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF1305E0A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760413194; cv=none; b=LWPRRCdoIHdqMDJcUar6/RJD4a+BmiinAwayfaztmhnTqcp6ZTIJRgs0mZEhMRUDjUN5Lpg6hhEwzMXB7IXEYpGa1PtzZ0FRBZ3Anl0V5vAMU5/GQASDnKYLdTHY0tdtC1SpYAN8tYLoGihmV033ll3Dl7nZzuvMe79bQDB3xl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760413194; c=relaxed/simple;
	bh=CVd9ioxH800Gaam5LNQRe+x63lTJOMPsrKqNtcV0FIw=;
	h=To:Subject:From:Message-Id:Date; b=dM6KQHL7NpI1rpr8sLFb1ozZJWJcVxnv0jqSfT6ebESswGw8RXPhDiQ5GmCKG+TJDQ9NssHJ48HIrzL0mt80NHGCs/U/01xgQMf7gIiQ0ZzzH4a0WrFlffH+cyulV1pvhIXqFhTMUjrnENWH1YD4IQrJeX7abq/+v+nJJfTPCMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5W9jKn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5W9jKn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3673C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760413193;
	bh=CVd9ioxH800Gaam5LNQRe+x63lTJOMPsrKqNtcV0FIw=;
	h=To:Subject:From:Date:From;
	b=W5W9jKn/VZqPt+CaLJ2Np4SiZYcC8yQLf/Wsyy9hNv6Rvy/SgmD3wQ+IfFwqjh25T
	 ved6cSK5oxgmpN9gT44IXm576xIT23RH/fsChKj+zazC0+NAAP0AXPybmTibI6o8xF
	 G+Bp4vQ/WxBLfNFOy7Rh4aeUZfLKnj+FyGWOh/3M3wOFNZDurAvM0C+gPbuT7ijKXj
	 rzzgK1DlgTrd9D2BFBvA1KTqjL25B5tolXZJ2aktoD84C7nZ897LvllYF9O0ygwYtv
	 q7NsqWz5Ljljxd11bsFMyk4VpTLmVoL0oZXQoy4dlE1IyMhXH6hZAMtnlQ+uStQgnQ
	 5YwZ2Fz42CKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109FCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041319358.27170.11738525416299406216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871b86f87972a8df0b7b1fbb3d33457d55ea895a038af241a227575a18a41d64
Date: Tue, 14 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760413193
