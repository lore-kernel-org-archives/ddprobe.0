Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE4B411615
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772820894; cv=none; b=PkHExp8yJ3HXWOKLozVzCNNAKAehTGj6JfRhR6VuHgnrOjOlylCAO+p1Bx5UlZKF6NHs+kiPup+3iSh4M3Y8UeylLfhDanSl7o/f8G9mMwuzGlcQ8ojXBfw2cmUI8fYO2ro6RP3QCyUBavLPYr3h7lj4Wp5bd3HskX/pOYaJbLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772820894; c=relaxed/simple;
	bh=qnoU6PIhKmLWaOitYcr/rz79caVhuck9jLXa6QrxAUw=;
	h=To:Subject:From:Message-Id:Date; b=LwZ0/AXdpzBmLp5phDT/2bDQejVXpqAtR3hEK5S1fOnumGC6ItGQc+YcIRFAZS4PS9MGmzImPJEu0BjK5q08zcJStF9FNFaKHBntHiYYbb9YjO19vGqls6316NDpT5nSfHLJYW7PCd5SO8Mhw7MyOr7yLbvx//bVne9czMZMCSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebAZgHEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebAZgHEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772820893;
	bh=qnoU6PIhKmLWaOitYcr/rz79caVhuck9jLXa6QrxAUw=;
	h=To:Subject:From:Date:From;
	b=ebAZgHEJq6C58jqS27dDVe43ld6QcTtjy1F8bsMseagJHeNvOaBrFMtWLj/AEdetu
	 ukyv9lNfsN6/C9YQ8YHPgGdygzKjFJbFniOQATfibbllSgtgdTqJWlsYbrdbIHr4uh
	 rptF8wP103IkHfiGqKj5m6IbB/kDMea8Fq/oCPWPZM3ei+mUX1nT8m9z9Q4JJFVZK0
	 wXfPtdpWjJBWvIKH7NOwpJSoKsFBS/4IW2OmLj+C9/ru2DrBhYD6p4+zyGy9Za5y5A
	 1Xm1KiK/G+pH0hb9uoPxtqH3+P0C+b4eNHvvTNT6bJSvZeHX3zqhrLUppd1JwqhSM7
	 k6Im7IuX1oHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E1FCC055
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282089358.15840.2546356046822964952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1006ddbad9fa7205919a6f20ca86e22bd7a888954b2094a21cd5c666083e46b1
Date: Fri, 06 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772820893
