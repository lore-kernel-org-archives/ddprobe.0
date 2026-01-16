Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49576335BA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529034; cv=none; b=fthgAS5CdrWTMbl2P+QekQ4Z1uhq5jdFpLp28IbKRXZlEfxCRH1N7Ov23F8IQxyrel7tCQiV9t61I4/b6cKxFurNhlYGRB7LPgHQz+fO+U9avo+vm0xJNzmEZ9GCehE++rM/STfCJdUgtXrGmRyzLWkwNEbYpCcw7JMzbPzoyv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529034; c=relaxed/simple;
	bh=pcnSinYoFKBOCH6cHtT2+MqzB/tnXOWEB35f6m9onlE=;
	h=To:Subject:From:Message-Id:Date; b=te+G+2gg4OZZnJ4N67r3Q4JQWGpeJmFAlMy6mswge0c9FN5uImGKBYMb/AKJw3+5OckEjCWlMgpoWopJu39N1xTIIkUxTXkK7+6oT9oDuWeqYAdD8W9XSbaOKNn/iHqKl4R4fizDsc7pifYHJf6wNBgR7hfdRR2rzW4VEjQBS/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmGxTcoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmGxTcoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B1C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529033;
	bh=pcnSinYoFKBOCH6cHtT2+MqzB/tnXOWEB35f6m9onlE=;
	h=To:Subject:From:Date:From;
	b=FmGxTcocQ/6ChSTwZQiCKNoQucrcwltJ+yIpwL4MAB1pb8UbwUwFyhMbtMxCApNvQ
	 lhCUdi+YpJN4Sm+ic64BjgCq61Z288gLXN3rmwcSmeKGsgfByV4Z/Qq9aj2dVvYDpx
	 6HB33lq6khbCpXC7l8tvQLHZ9tFWyo+0gBmV0kHaHgJZWyFGWI7osniVzctPCwnm+M
	 +hUEkWMUcQTKPN9+7zHZ3EeC/DUO5X8GLJ2cCWxDQXdJingv5IEUUjcnOShnz+fMhR
	 D26t2AMGwO5j0ivzV5QekVizxI0uTFOFDz2BvP6g4DjBOlUv+T72KfxcWEXhqOou0H
	 BInsd44xX+IFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550BD4A5E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852903360.9823.11626206434710900551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdb24655157941eaca8a573e846d9f2b055ff3b654ffbb145bac5b9f6b6b8e0
Date: Fri, 16 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768529033
