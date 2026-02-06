Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D47F1C6B4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770349434; cv=none; b=eYSQBa+/7okGsc3O22PsGcFM2KZDkA4djNx3fiODEZX2EJLPEKShl6gT+XBoOSF8IfCE4fQVdnrNL2B/kX1/tJ+tKxgUtICPhiLKyapz//mfcg5B2HndLz4hy2U/p0VCvRVsiVPYvut9taHrQHKbHRGf3Y/2zjNo9/KPPxLLJjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770349434; c=relaxed/simple;
	bh=+XoLGNYdtMD34/paDRkR/0H1JLsvT/li1d2TJGIEsyY=;
	h=To:Subject:From:Message-Id:Date; b=sZ7as/r1c2IsHDNh9zFQ0GmVwxv62IDmOoUJv9lOWwtPhe8FG/QshutYeN2WPmRRXdarh9ka7fC3kr8Qg9lYlZQl+xyoPU4MNP58xXvkw/WPYvdm1NEOTPp20O8MANxoC1Kxqo0gH8IpXjdODuWUmkJZmw1J8RVEJ8LJn0P1hpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXndOXij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXndOXij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9770C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770349433;
	bh=+XoLGNYdtMD34/paDRkR/0H1JLsvT/li1d2TJGIEsyY=;
	h=To:Subject:From:Date:From;
	b=HXndOXijUsir73ffzZcoR6NMj0j1NPCf0icjz4RVnTa5skT8brKfY2DlS8PI8RIK7
	 Rpkc/XLslSuYG5XxXh+mPbTbdE12T1uChhuv3MvCWGCZFDDfC5AdCiL3oyb4ACRgzS
	 Qnt0Y9w3hzLHWxunNvXkA5zQLXu5KrkZmAglJvVNlIlRFpbg+NQO0raTvRgFhlnpl0
	 YzJTCHtfauazcgDzBLg0irI6lYmjORL6GvZD6ag/Pt+DERShtunGzIlL/jYKqmon8x
	 fKAgZkRZittMbzNqLmDiDXBSMj5289znmcvT9YKNfMHDLH4XMwbMKtqweOsdn+fc2H
	 3zs0BsuFWPWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5CECD9BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034943360.10259.11889355657792450184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf64696f6982fd2f77f53efe0bbdfb97fb302cc96b37218e6cc36f5be465815
Date: Fri, 06 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770349433
