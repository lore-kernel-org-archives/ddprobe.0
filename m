Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1117A2E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762495794; cv=none; b=IvxicUSlWQIXr3ByjQmZRwa4y0s99F/166dY/rXzJ8b2BZHtes4ONyv0Mt4X/SENlaXZUWvzYd4ee5qSkrirN3Gb7DaOjVVfL0moUIFJDoh/WCxei/MJU3hoTtUzbET8JkQoc/1OaY5qqns3jctUhDeoZMkGLGX/WKgIz5pSZ2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762495794; c=relaxed/simple;
	bh=AuPCydHoJ/fXhIEJ9WF7vpTguwxydtLrgJUHGEpAVbY=;
	h=To:Subject:From:Message-Id:Date; b=doO1c+iFuDdgWr0asqJcsKtVz7PKua1UoXwBrKUak9DPgxN8tbt8bFaeKgeD5LEQ1Wo+OK3VBY33NOyANg5lNFcgI+lweD+P1qdit1ViWd/woCv6niucPCQyEshMTzGXRmS2w7tKewnq6h+7wJwW95o5epyyJYzVequZc2uIUEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cbn4aTAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cbn4aTAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83F8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762495793;
	bh=AuPCydHoJ/fXhIEJ9WF7vpTguwxydtLrgJUHGEpAVbY=;
	h=To:Subject:From:Date:From;
	b=Cbn4aTAZwrLgAnbH/E8dGdTcdESBlyAZaUStRbTtMvTuysL6ZgjnV6QKhE/ArxTXS
	 hd6t5KNd+Nc4EZy0jlQzDX3Etkp/jq3ndnQn6/STKuSOT9YyN9k6FRfKEAr9a4UXwg
	 b3DL4BMBgLBpcTT127VSg7L9ZkG8qVhR452+Qmboj0yeIE71wQR06pshIgfTrlOa6C
	 alhCX6ZVTABZJqakgco0VGf5d6UZtoHMuTEEIwa5JBOiFyDcPBpzaGJvECUg1gYsQB
	 lF3cZGYWdaoCV5dkpa0n7+o3cUXFOku0naRrq2+Z3/fxjR3QRQYvd28+15uMRAdeMH
	 DW6eL9n+lFqRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38BFCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249579370.28499.9616822040224211012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f71f25d8f3f9940ade4035a178463265fdb880c951138e9ec6a54ad72d2c3c6
Date: Fri, 07 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762495793
