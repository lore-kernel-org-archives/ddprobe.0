Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384F417C
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731473154; cv=none; b=dCatIuaIJc6geeEiZUQ7Cm3AqOqUds60KjnTLFka62QrZcQRX0WRwl0+ayaqZWrsNuLYyxnP5cvrB6eB6L3ENeoXoPoyKZVn5dTPnFbZOodC1oc+S89h5GfCjbET9tkLMtSnur9K9cts5N32/Up0GdHgbE3EBLLbfQls6fzHi7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731473154; c=relaxed/simple;
	bh=uw8rgPLRenT0zmmX2HhFj7fu78Wpi1UVfqLd5C5IkRc=;
	h=To:Subject:From:Message-Id:Date; b=cyRs5oQHqhJ6zX3u5f+wAp3zKPvndie4F+j6mjGmwJdq6wkyb/iMbL++RevC9sUM2ZhHIVpS8ptxl44ISUWoN/asA1lcsYPyVQh0Q5sJcK4N6TQbSPpZsPwZ7aCw6wj2HwjDHc0To3CTPflV315e8mBaDDOyLJeb78POB58yIBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpkaK0+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpkaK0+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F22C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731473153;
	bh=uw8rgPLRenT0zmmX2HhFj7fu78Wpi1UVfqLd5C5IkRc=;
	h=To:Subject:From:Date:From;
	b=EpkaK0+P92O4T3qZ5AW+TbCYhvD/1dNZj8zpVIAAsgXIb62pSkKnHqYf+dRHiAmo+
	 sdjle1L3wFSTNRvGa4KVobdMpjb+Bw/WLJ2TO+VBvo2t+/FFlOc4WjEWFeyhzztGsJ
	 H7BFurDWih1vIS692O0pLkJQzxK896f7kVoAtDloW9sCg8J/kFL2ZEaCfHjwFYjAXw
	 mestgaB9Xv9/4gXw0GVDtTFlQU2/2w7zaYuaR20jbFy0DwZiL8vDU43F5XpljxYjDN
	 5JRgf/sYp7IUo9AuP3ikTigj7JSTzPJ6lmyttRSiPFWtWhLyq/eYAbGmrBqS9xxnCZ
	 aK6j21vkRidXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE01D41C01
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173147315360.30857.15517926921239710174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf85e2ac96f719873ce0df3785679089faa3e05866f24082908a88889c89484
Date: Wed, 13 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731473153
