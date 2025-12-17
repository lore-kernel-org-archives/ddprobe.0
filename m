Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC591E1DE9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766012634; cv=none; b=WMLOjvmUwqVpoiDmFHQeaVX0YSn45qyO0qsmm2jwhY59uFphsHS6XNd79c21R1H7b7TqX1U8SKljtqK3l2f7OplN559h3xNTW//AeFvp22sPXK7AUNqJkJK1CqsxJYzcnemrUcu11v4KaNtpmhF8I0VaDdBmzOxdAZXIUgDWldo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766012634; c=relaxed/simple;
	bh=KK2FaXv12SJG/mk+e5AZUpqHzQChrNQ/gDkgCbGkJ8A=;
	h=To:Subject:From:Message-Id:Date; b=kSICvDjlplKXm61ePvILXLWzZL0/q3thBmv2fCjLhnqskfW7zRAC5gW8gOw99njs6LLXvm77Np1JSPTofKlH2WnkSmk0S21ugozU9dpfK97PIY7q+NPoHQ3ePfViQofWJ/8MWmNj/DHUxUA6y6gsNeY9Xto0XowCBcQboVLG01I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEIZpQto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEIZpQto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B81C116C6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766012633;
	bh=KK2FaXv12SJG/mk+e5AZUpqHzQChrNQ/gDkgCbGkJ8A=;
	h=To:Subject:From:Date:From;
	b=GEIZpQtoQ6/Y+TG8/cgLkz9uH0q0eIZPKFBPjOuLdbf9w/CMxmXyJ8trToOUWtyF8
	 S6JdxnBec/9Hl1urMIEqORSCg/7OtyZVlZjOUie3pZuL7kKMe2OMCqrb5FaYuwrJ5y
	 ctyu4TdkCIfzUoquExrCFHBfCk3ex0yjQDPhbvpTq6c+8h29cRPqYGpYmmg+/Zo8uC
	 HpAerruK1596rnWIjKAI5aTdZ+qlnqUQiJ8WaSKpD6YD2CSQv4HPRSlP3dubkVsI+K
	 Gzg0E6y8a/jnpy+vDvUMEKzz7fCfr2IHwawrq3GFD0Bipqx6XA0wORwK9cF2cyoSJW
	 1VrP+SfJyx/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D37D68BC2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601263358.25118.7156955087221671912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a094d0f13748eb9f2e416761fb54e7a27d09835447c2a884a180a46abd74794
Date: Wed, 17 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766012633
