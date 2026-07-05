Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6BC78F2B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783295314; cv=none; b=XanNPPfh1zGw5GB71KnBiCW555x1AXn7IfHb9gpCTtAs8qnFvxO7wIQ2JNPxpfwf/CQrOd1WDarwoF/MK+foJei5ABTQhcOrdCYb/3YQgaFnjrsp0qDLb9+0HqKYGJRzpvOP8wsE1MojinBZI2QtRtU0+FXRy6Nr+6LPgqa2IVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783295314; c=relaxed/simple;
	bh=LCeSY7+aFJ0espGdTHejqD1t7pd/dWvFjnviar4dXcU=;
	h=To:Subject:From:Message-Id:Date; b=VgHpJBjvtWcZTjeWZMd3cJnB3gTE+f9caQ/828jVSXK7fFLoQp1RAfCQQEIen1fd1N4hdWZ+nNuOYr/2Qt39RhtQAa32fjxQULF3nyrt1+RQpcpjPYRskYp27w2CM5j5wSSoqFovAmTzvzoTEZBd8xonSBUkL6OOi9JyeD1ywlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLORV917; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLORV917"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBEEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783295313;
	bh=LCeSY7+aFJ0espGdTHejqD1t7pd/dWvFjnviar4dXcU=;
	h=To:Subject:From:Date:From;
	b=jLORV917087WneTI1+h3IMmHkNn5FfQQHhsXDhc8IsArOqvS4Bw5bC8H5yEqreJvu
	 rqcq5bc1kTV7LVniJZ7cq1Oa4gGplVGufOGi2hQWb8jF6CB1at6PNQNBXGph664CBL
	 FaMaWUoj5tB6bLuG0JpxcklhKqazI+eXW9uSQMm0lxjhYvRaF7jUfvC0uLycNQ2XsM
	 s1Dl8f7SGJaGk1IaS40oud90LK60fVOchHG3ca4VS8xh/ml1S3OF1IIW5oxme++Yqj
	 DkBwy6z+Wj7NRi92N4Zoyk3QIyUgha3oLFNRbkeFvG5ODV/wknFivJCFtEIfbijpZL
	 wowDn0sZv+1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB368C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329531368.30453.17798214387984164158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feac25e9ec8161dd58989a4f97aae08b3f81c668361b01b0a0d2f0f4131de68c
Date: Sun, 05 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783295313
