Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FE91A5B9E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683034; cv=none; b=FZziApqXtABGBbbvERPKycqH72DU41esaZYTLle/ukuCIRG3rrUNALX9SgasHUcsxBcI6HQ+txCOO670hWEddn4wBI3QNEPl0kVaFDbhFoGIs3wKDFkFV40KfKubt8DCf4rZ9cllMIKA0LDBmmDmuzEznsqI+d3CY2nBpJFaxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683034; c=relaxed/simple;
	bh=dezHrc53TmzJhwOGR95zojIFLIzVeYOZ4d4Qj2UUnok=;
	h=To:Subject:From:Message-Id:Date; b=DPiOKuniyaVOe90QDXjHTsLcS7R5ZxSm7f9Y4d9dv59XC7iBqmX1dTu/de8DWPkM5l3EbUxa5gy2lCReemKUyMkdBhA/ybfOM2o28Z7/n255HhjjWl6l87GCrvqPXfTcnCMN3bfG9s9VfPBLotP7Ouo3WSyCG4hfqCigM8PDrX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUeOJdZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUeOJdZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF03C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767683033;
	bh=dezHrc53TmzJhwOGR95zojIFLIzVeYOZ4d4Qj2UUnok=;
	h=To:Subject:From:Date:From;
	b=gUeOJdZHrO+9TI3ewVE+h6mk4XWeRoP/goxkI71N9JQSRDtA3c+V0Ua+Alg9pbntt
	 ehcoyTWsAo5IWC6YH4IyngNeWwhwhFHnChVV51M35UpB+ectFHXJbKP4vIwElX4PJB
	 DeEkJHVsW0wAd/Frj16++DyVGoXUIgiO0GribpClxmZabgoH5LqflBQzqEGVXw5Hsw
	 quN5zTwk4Pqrx3QfdkWPA3z2e6EvoDH4Vq3TQkj8mjKlyPdn8aNlUQIyZBJlmYSOF2
	 +yeB2FpqILK+B6Jv4hLyQHTx+vDpusd+nhOURKJabGE6uw/FxiuDsmfKS8+BkSDE80
	 jp3PFWBT7jMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3FC79F86
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768303358.13624.4160163901277076554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbf97123627b44cfd7e6b624b9d8240ad150888a979507e1bc98c17eac8be56
Date: Tue, 06 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767683033
