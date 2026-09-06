Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE0918B0A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788654034; cv=none; b=ad93YK5U/HR8dLCFM0t1ZgLupXlcYPBrfgUA8pBnAgrp9RaqNfVhSXnFgDtxJwkg7AJ3JOfBBO7e9PXe0K6ZoQxlKiowJpZwugvdV6Lo3co/8Q8t/1WvYhKBzSsEVKiu46xaTlx8NV3kfqKnT5Y6SLJTt3lcHiR7MIWYpAfikco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788654034; c=relaxed/simple;
	bh=Z+kMDGNVYeBJOKgfSxH6qRG9Jg1s1md/QiK4HktHgDI=;
	h=To:Subject:From:Message-Id:Date; b=u5nWWJJ5hd1EL5mal7Hn8lsW3Lr2rATxKHpy69Ypx6psv9q3QP6zXZw3iZNM7SUUHjrpT3tBk3GxnsgSj/DfrYx6OFO6Iqnu/P7HZx+bjupyI4UHMuIhAv1z1S56tAivmgfXCS8/BU7vTnL7Mmy+dRYM6nnGu07Yp5DLB4NhOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA74zok9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA74zok9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2051C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788654033;
	bh=Z+kMDGNVYeBJOKgfSxH6qRG9Jg1s1md/QiK4HktHgDI=;
	h=To:Subject:From:Date:From;
	b=AA74zok9RDHYiOiqrlgEMo28UwQoaazAV22u00XSqtlkllmILUp0HPFfKaIHXUg3L
	 2rermlN5eMi69OVZre4rkgC0zeu1PePmxLs3LyZ4UFU2DXDSYKo9bo4XRmbWcR2Hd3
	 3rot1wHfoqRNGxxk4eKPytKBuIhIUcpdYeE67HFFp8g3YosgJBQWYg0BJPCr4FlEiL
	 RKGWc3s+6r1k0iG8S0W1/2kgRhqBJYMccSAPqxdoafVXe9NN5W+SCMQfqcnXRjkVvz
	 TRwofVg33sJwoztvo4vo8jfurZOJnJ+KMo5VL/dE49y+rXqBZuJDB8RXbTqOtuF6LU
	 SJc8wCxJC2UcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04CDC624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865403368.14095.8117927363792421557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a36768b0136ee8a21044b35725bce7663596448d171f13366b417ef8bc4287
Date: Sun, 06 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788654033
