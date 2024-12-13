Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449D1684AC
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734117954; cv=none; b=TPNzRihwfYQ0lEpzIryKPZVpDHUaFTLnFivzRPukw1n3HqN+Cxi8Po2KuZbJCSYu8y+ODq8J1fEpNa4QuQRYeQ2oVc60LRBLpShMJXmMnUQC1yU4uxMapA+rS6e+TyjbwdwYzaUBLyI9Q/NkrDnFCVI80fo0m9IJnnjGjYuU1VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734117954; c=relaxed/simple;
	bh=utcYJExDQZLwl5WWvcyqERkA++LQbDh6vEE5mY6iyPY=;
	h=To:Subject:From:Message-Id:Date; b=PiKx7g09qqgDQ1VBD7O6pPDEqC3tjbQFNvIG13uT9Fuog6qbZjrrA7V3xfco//aABaXHXGAt0x5qH9jCF2xQu4NGw4JmX8v27aniOo3P+g6WhV6Nh7r1Yqvhyl08Bq/gqsI3FN8LVeHI1jSdsyyKr+2xoegA0NnFuI1yq6KLf08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDImIb6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDImIb6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF7FC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734117953;
	bh=utcYJExDQZLwl5WWvcyqERkA++LQbDh6vEE5mY6iyPY=;
	h=To:Subject:From:Date:From;
	b=GDImIb6dhSb/xIYf4IIa8D5UQzLZJYaDeQwc4v8SSqNfIS/YW2NMNWbH0yKuVSNWY
	 sqUYSmNpOgYE1mmfnIJesb9z/LD4dU3LnRDnyJkxTZXFHhoCOBZ2R/dnetZhDPb5Vs
	 7BhgF07ErnpHBqb3SiVnHdOoKLoPB8FnPqP4pME9oBXGYrSPPTSTMQVr0yKQl/O1pg
	 FKqNeezn7Z7DOwLY3ypMtPGWIr4ytQAmNpqRqVXSQfxP1eiKd903jOJ9T5ccmCEASA
	 z+A/aUnzqIq0P5SiWHv+H9ugSuxNAc7b8NuAkUsCxXF1oJAs6/rlKiI6bC6xL8m8Hp
	 ij0ZMHcu3b4ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE587E77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411795366.4711.15616757668922860870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ee7099364502fad6a40e9833b23a71040f976f568a5c436e3e23434ff15685
Date: Fri, 13 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734117953
