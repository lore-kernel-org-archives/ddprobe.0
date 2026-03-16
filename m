Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368163E9F63
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773687294; cv=none; b=N21SK8k9x92AA3Fk8NFshpmIHf9WL9sToXPmK3f1X/keFLd9FhyE0uMqGwYSwcFUbNlvphiaolGcS8cncpr3DrA7kV7Nqk31LZN/0tpqw2sEfGpyyPgfZfJGZihw7EL1bZBUTClhAUk2mgxi79eCv3SAzb65UmlZeLQKS5bkHck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773687294; c=relaxed/simple;
	bh=axCGDIX/+u48ogisKV+fOEmyMJDji/YUHIFYIuBZDNY=;
	h=To:Subject:From:Message-Id:Date; b=RbuEbfAQCoHLdVcQTUcjjKzuygxO07idfJowp2o/CEhL8R7hZus51zHywm/h1hQVuSIkiLLWkmMIAuQefxGCDh8alxm03Tlcw4Vf6Q+0q3CBdMiNQABO43IMfypo2rZhrsUXK1/JtIwK7UxRSMQvXFRHQQPKMZHtjrVuz87bSEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ar36cHOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ar36cHOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E20BC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773687293;
	bh=axCGDIX/+u48ogisKV+fOEmyMJDji/YUHIFYIuBZDNY=;
	h=To:Subject:From:Date:From;
	b=ar36cHOaUmpu0TSwMlyhOFPHdNreuo9lSD3JUfccYLNJk73AMSVorJpcCzkEgI5yl
	 g+i/XGDWphkLcgUH3QAhrEtU8jEYFVRh/aQfaUxomi8tRFlecIMxst075uqTcwAqYR
	 vaNWKBWtA8hHOc+HSaoysLXIehr64pLRCXRVvI1BPPNRfNN5/LeVwEqVdE3/llL4se
	 RcGPUrKMQ9Gj7QtreHXS0XJGL2aYbybIb57n7wxBVS8eaNE9Yq61iMi29tcNcGlJsi
	 +lBiffENucJp6cluSw+YQ7flPZiiA6CvRd9xjljfdLRLoYQC4p5WaiIVQ0ksBDB87k
	 VM4yGDImsmK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98AF53D8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368729358.16894.14576859682947286849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745fbb82470e7a5b2ca787c9cdbac023834b06603448db0ec57521133fa7897e
Date: Mon, 16 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773687293
