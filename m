Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315966FBF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763352114; cv=none; b=P/jUZnFPXRbwi0TLZqShzSfB2efFo0+IPD+AIogn+5b0bBfOvqV592IRYYiMnPwefPjAkYx9dN6rQgYH6l7fyS0bkk6WdRWjXb2PtWCrfdz2MYksPZoKN1c81WmZCcVjIrFWuWO3hSNW/8+yhYE7ra/LczkbHETo8BMjaxYAZ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763352114; c=relaxed/simple;
	bh=6gq5zpyxn1+CjkkLvmVNpauu8DUDtxT4jAiS/BIQPVI=;
	h=To:Subject:From:Message-Id:Date; b=HS4c9CjZe3dp72Sw3XxgzX+vdtH/o2LqlNV/suUhNdcAjUnoE80nkRKmQLCLoRgwZdcEWVPNtfZgSS8vEhS6Xvp0zIHaaITJDoaFzR+u4XHsgUyanmseBUs4O/4zruWwALuqQlyhCNLbDBdXw4zKwtwSJ2sIehC3uPsTo+oiiFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK3M99qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK3M99qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACCC19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763352113;
	bh=6gq5zpyxn1+CjkkLvmVNpauu8DUDtxT4jAiS/BIQPVI=;
	h=To:Subject:From:Date:From;
	b=UK3M99qJWKRJeX6Hy5Z3RfidmWM3T3c6dOadbxXm8j2e9J3DBciw2psLNbyGPEmf5
	 aEBlSIyJRhlpfpc3Hgieaqk3a4tU84Sl21Qtbct+7NKFC+OtnxYTz7JadoK6+Ffyav
	 p3acDLXtCcqw94IVmgkVyXgxgikkKuuP3rAU81eFQni5r9tGFyYRQ2B7gtDULFhFn3
	 MRvQYkWHEJbtWBqtKuN48lI5Ltq0M8qUd4QJ4H/83H1J/ZXqWrMvd/40QcZJTP2PXc
	 hZXTp4GTFrbRBvFohyHHRw3ogLDbaPsz8gChmERXeemjqS09aT9XUun4XchzKXeo6c
	 QqKkcNAzcI6Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F2CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335211360.17591.16732735065616500033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5381dc5517b8e1a267c0378e9c88eff0e7bde067b553d0db16bd293c930675a0
Date: Mon, 17 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763352113
