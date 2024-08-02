Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D951DB457
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722592554; cv=none; b=SRIhP0bHZns5TrVJguLYq9Mh33T878ULWVkFPgSu0OMgB3upjNM8+9DC54Fn6e91JHv09s89+x4do7m59c4K0n8eC6vhEoedF29nynfQqg7xscTzMLbqXi0iLuFj4Cb93FuGUNUp9srT30EI8CTMcD+by3Jg6gDsqy2nWU5i+b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722592554; c=relaxed/simple;
	bh=lEg2XcvmXbNaIm+rP0ckneCd/Oz74rwzEGo2zUfLbTQ=;
	h=To:Subject:From:Message-Id:Date; b=Ay7vpAbCPTHjgip6CzbWzwGJ+t4XUC0gGil+wn73pA1xluAkvzCo/66cewO9mO6GjP2xldpQD7kBu/GcxTYp6UjNUkojkz8qp9XmaczYN954VtOd79lgBgX4P4Kcdy+y7fYJ67dO3ZHbs8pHKLLbTuvkzEZr+c1KXrU+ozVPXcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hapzfKY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hapzfKY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C94C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722592553;
	bh=lEg2XcvmXbNaIm+rP0ckneCd/Oz74rwzEGo2zUfLbTQ=;
	h=To:Subject:From:Date:From;
	b=hapzfKY3/DlQEeAVbmQWKYQLP9pgeb1yuMVToGZGFaWJ0nMgo1ISfziY0QcBK4dpT
	 j/5TQ+txYWA4Efyp5Reo3CnAtLzXbYr17e3ujg7co9DzrxvKOIOh/hcBtjfHwYJHts
	 X+8uJZk4KGHZZORvESfIuMwu5o4K/X8IDXyyUSt3Q5uPTtgZaRK0c0sbilmtcM0Agl
	 M21zyMEk6izV3p+yWdgFFHlSmOesY/su6AMjK6DsF9mLKa9ArT5PMB+mv53n/mqYvN
	 WS6neqEohwAwyhUZvHoYSK/EEvWNbEvJX3IssldwBqXV5y2kjPBUpErKzC5B14DdZE
	 ZpXzky/T6gZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A429C3DA49
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259255361.11571.7050088638306789699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dd028730270223385c787074acad6e01cf133a79ca17d8af24968d04b21127
Date: Fri, 02 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722592553
