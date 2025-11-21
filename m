Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FAD285CB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763740914; cv=none; b=UYqeisp4hfViVaP8+r8xeg/fBpG0Wh7barhyvv5tZc4WEViJGwLcYwjeDtBoyfDjHaxkhXex0yAPj/Ozk6/64vmawX8rgt8563Qmhgr9quXlnifAglnkT0HVK2DPQHZCWBH/OnHjaSdSO9OH5yv4e5192vL9UHUtUMSafw5Ch+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763740914; c=relaxed/simple;
	bh=9YHDYY/qExgzwC+rs1kEfjlbHzNo3VVUD5xDVi6oGB8=;
	h=To:Subject:From:Message-Id:Date; b=pSCD2SCoD4hny1jHPDWUTUkAiHAr6IgnJE/3xFZYmzj01KzH9vchFGzY9FkYFKSm3hYGd0lrm3Tu2NfQtGU1+lDcHmT/5L/2D5Gpbkdccq6+gDf93IYUTp6g5azMLJ2B5V3A5U9UqQoHcqYPJcv46CqUru6jww//z3zL6GdXRBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9Csy6BQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9Csy6BQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC210C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763740913;
	bh=9YHDYY/qExgzwC+rs1kEfjlbHzNo3VVUD5xDVi6oGB8=;
	h=To:Subject:From:Date:From;
	b=X9Csy6BQQ8ziB5VAQbY9aY1ch7dojLS3NAAo+ujuTV+CkgCrOoPz7dIbP4A0122FK
	 y6qwU5eLQbqltPTkX+fFAxnZPQPPvMdMXqn3Hh78yjWFjfKfkjk2uRVVwsLoeO/AXG
	 ASXvuMiBmdVaFMcyUrPzu9gZgLL9xnfebdnnJRnhcFi2UTWgVT7++VDOj9XI5YNIU1
	 HfUuz9kMyvKWfVuGEfVATgGzMZJFOoLyXhigDAaR/Rx7vAXjBdXglk//yEkQIcVXPS
	 b6HeRMeMhLP9qTBpwlD25WAhVcWP0Rxcy1t1bO5pIvdJpUpg0zAx6FbfQoU0uZYs3s
	 aj0oe3uoCKNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96119CFC28F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374091360.11081.1507352115233093991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e71109ad12007f5b1fe3036cffbd35fb06bba5c4381aefb70ddf1ca44e956f
Date: Fri, 21 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763740913
