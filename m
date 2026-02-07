Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205FD2D3ECA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770482634; cv=none; b=LF67+U6PjXoCuZ89ugRUl26TcxWLAJ/w60nl/aPMHDQtvx+tvy4HWKHY/4XtOdXMmsAEztiw/8hZ2lHMSp36hvo3RtDcf2gFjfG40j6YfO53/ZE0t6y0/HaKcu5bZQqvvyCtyrDwcg16i+GystS0UoFfWKxxmUcR5OKHYa+uAY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770482634; c=relaxed/simple;
	bh=hqU5oiNAIWwbEb4gOurdMRAIuKAVfI1upXR0duivwY0=;
	h=To:Subject:From:Message-Id:Date; b=QUk6e7K/hO9gzbycKb9wiRdD7dlzPoBTn3EDOHVRbv1LEtl7QzgL+7xtS9XV/rBLxnFcvS4RureUnIjHrTnzHqThbGftqvv3WY06JVBfEyYEE2wFY0qEP2ZX8AO5MN8jJ+NBU1LLXjaql23x6rekfA2HcTFthwpielWIqAZSUp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHgvxrtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHgvxrtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B195BC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770482633;
	bh=hqU5oiNAIWwbEb4gOurdMRAIuKAVfI1upXR0duivwY0=;
	h=To:Subject:From:Date:From;
	b=cHgvxrtX4hFZpr9iO749opyWPyNCjvC+nrUgPJeKxsh57Ydn0/7LEOLHVzKbGRvba
	 suzPChhcjYGGVvdFsxJVvTWuWuWXDeMYnPjumGZ1Jtgly8/0AdMUXPE5tHvWQGkZtg
	 6PO/1qBxKmnXnrX9+N00RxexGCoOw38/za4vtZ50w/qTajOZwSX+TFnjTcJEo4zC3X
	 TqP0H1TIfVp5pV3v+yL29Ou2/4GkXb6FnQJW9GxRdMEg6zC4bmNPLd4F0GXYDAzdtR
	 6v6m7wgqFlcPRvD9dxB2mhUZeXXRs8kIBtb77xVF7atTg+JarknB/bebQKKnFUb+5I
	 dLhZx0PlbufqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB9DEE0AE9
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048263360.16138.18252658929581081964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef1bec886128e1e59436027bd9f0e452ecb8ebb4e97f983266f85c48faa4914
Date: Sat, 07 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770482633
