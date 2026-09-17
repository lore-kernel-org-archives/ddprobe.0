Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C75855293C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789653034; cv=none; b=vDpI/g9VEXqmE6QDKbDWSBFyha9dSDAQ9utgPuTEgjiST+xTPS0uKRICuxTgfNJTvEVwOm4yixOWWVcHCvNI//cFN4IvRwG0L1yHL1JD/XA02G7QLsnpATT56LQRVMuysES4DJUmWuAgkIPGYkv54xpoNMkyvxphxiR/5ZlXZQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789653034; c=relaxed/simple;
	bh=Epx1Bt0NMrK9AvesNuP9aXDMFRY+xcVg5VCPbVYqjOo=;
	h=To:Subject:From:Message-Id:Date; b=rn27frBwdevqOukySInFvSde+I/VKkT+zGaEo4dReXxoT/9NYwu4J0Nt2yvmQb8Caxww9Lj3JEgfpuf1FIyPvIPmqHllm6X8lgYiJaFi3TXKArn6A74xXqJnOjI7DyO0xyRwY/XTf5LdLabpTcI3ilP5uOlmQf00I4DYyioY9Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4uzyaFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4uzyaFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60D0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789653033;
	bh=Epx1Bt0NMrK9AvesNuP9aXDMFRY+xcVg5VCPbVYqjOo=;
	h=To:Subject:From:Date:From;
	b=R4uzyaFZVUQ4rprVbYHRHzBX11JvLsqOZwx4g6FRMYf6i3f8eAh9ua7Tp2Ptu1Au3
	 Yk9HHup8BNaSJDZJCa6Fa0M9k/+eInq8LRA3LqCdm+LrvNbdwpCHbk/0bYcNUmr5Bm
	 tDsQpfoiWb0yPhfIWLkUvwhgQhF5VTPpim0t/ZTbv1CG9krYhqJDQekugNNhPQZmLy
	 iPmsBpciNP4wNNYVffldsro7mX5XKadqGbzp5rxS8OA/uUD0dmqvW5qyzhFBidtt9X
	 R/VruYLoWYY4P8G9jxJKXosBLQ2ZBp4a7qr05/uMuA/1YP1ZHLWRPUSkiPBOanaFCO
	 ZFXst2Xylsrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0203C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965303371.26520.8635205755319955079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd61dfe2f1d2bcab8be86777f40a0d29fd6ee45efa907e972c3447c852aac9d
Date: Thu, 17 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789653033
