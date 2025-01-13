Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F023499F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736759754; cv=none; b=Qpm5FVYCygjzlSynxGHpAlf2/R6R05vsF5lU9zZ7ZsznXBUApDn2L+Su4/Rc7R9TARg1ZUowHFSdAzWc4wL8dZD0yyUSpshHawMPj/WNWTO2cAQldxD1XGH/pSg1CenJVatzkPnglhZR9nRNOPaujMjAaMWYJ74aLrWz46/Uw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736759754; c=relaxed/simple;
	bh=zwff+OuyavPBy+jUZDu4GB05kXMeC+k6oVPb2BwqPYY=;
	h=To:Subject:From:Message-Id:Date; b=tkueYN1gL17rvUp0G9lw3AE/v0ZQ85uQXsACEIJr3fmG+oJxAdLYMy9BKkWAqV8ULYUBQc5nUq5VEGo3AptV8/qy12pJLrc/tx507Jgu67fFtLywqFY7Vu3Jbg1H1Vrq5uyoh3oEix5nkd9cdjdd3JKuQ9m9m5dA1z+t08LHHKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omac4KYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omac4KYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A47C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736759753;
	bh=zwff+OuyavPBy+jUZDu4GB05kXMeC+k6oVPb2BwqPYY=;
	h=To:Subject:From:Date:From;
	b=omac4KYWNj7W40vukP7jhlqz1+Gvw1HFz05NzG4Wwrl55rFyim2dpVET6pjrs+RV2
	 h1zbYEH6XUol+zTeXLq/3SPyDoxsSSxPDwWtW/c2lwGG/J00rjSfjfH1mPDOu3xSgk
	 dbUtj9iE0nZfpaqqYMAPy1YC/lwkzn0tskVv1F0u0Y3ro49WKjQ0KoEKyGU/BDHaBH
	 Vxm/wzoOhOq71KTFkypH+nmBwxUnPhbjasJeOLUZz8veb6lHOagoOkmGxJbQMfFzZe
	 Dr+fM3Yhltk8YVyT973FSkaCgMeGS2aFo37np4Gqdk32s3FDSjr3H2jJvO3H6Nyxg4
	 Uw5S/rUTu6apQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A20E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675975358.10923.2760471473174344561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0310e0bfb77e705a50dc205993517b80fd6ba3e2315e773aafe89a16b65a2849
Date: Mon, 13 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736759753
