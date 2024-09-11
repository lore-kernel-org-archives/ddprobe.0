Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2276D13A884
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726045554; cv=none; b=t+SQPIaGhhqR5fRgz1EOHavbUW0IE16ao38LzRd22ko4G6L6yTu6d0znttWsPKInkBEpu0W+Yyccr79OaSNALK0BtctXYJ2uNOsh98nvb9DvG3q8t2eqn6RTqHCtrI0rC2aW8CXOWwOsWAKKzk2ZfMA6Sla6R/wbuzUUd0E7Wns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726045554; c=relaxed/simple;
	bh=Jg52qrDhXjs6JnMikOQSvcxAFpNn7k1FMW6I/ju02BU=;
	h=To:Subject:From:Message-Id:Date; b=WLg5UmXIxlhpZP/W+2THLcGrcUM0Fc7mHMcdWHZVDOVzgrswC3LuXwKMg1jw5rzp8pXPyWuNxEzeENQG1p/MrAO3T/UPZuCShZ4qdicg3KqfaCh2pP7bMFNabTHbQqiohreRg9pjFdf3KIILj+bgF/yC+Sz2Lo6eMx4SD10PPnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXY8fqFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXY8fqFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3BAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726045553;
	bh=Jg52qrDhXjs6JnMikOQSvcxAFpNn7k1FMW6I/ju02BU=;
	h=To:Subject:From:Date:From;
	b=XXY8fqFCrVP99D2EMgZ0wkWi75ztaCy7Kno4+TNxytVzOe3CzkOufW+0gKQ/CP2dS
	 bw4WYpFlwOrwEPpKQKF+M7bG7d0d9gWvvKkQJsbb0qNzNpCe0NMdcn83s4E+ENY0fH
	 Ot2yuYHVp1qUVCzPj5DVH3X2JBX6OM+AUdtPCVGx9s+KSUjnX0ZJF/sGMivt8kfjP5
	 jDN+MxOJgGbZpjAkDvwxkSXkW6/VYc7L95zC3euTh+peLWdPqC1McHsnCLC0lk47rk
	 336/IpE8Rsx92vq/7WkF3j6sPt7NxoaF1YQIui8Zk2DaTpbEJI7uXrycssMl2GG2O9
	 hB21cf/uAPzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D997EE021F
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604555362.30188.9394226314590785533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5f02700de0184009f52d0bd1b6624bdf3a76bb90718b75a17158a420333ee3
Date: Wed, 11 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726045553
