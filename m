Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D663197A6C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748977194; cv=none; b=m/2tV2WSNYNvCImdyn6g35J6/UMoUQRkSxvBolFyqrL/qLBFzfqrn5pKkTkWQcxO64PC4G+F5bUbAEfZh5FuoMrAbYUXoUJyq8b6QEKkPcfu5qhjng6Cu0fmj5+LVC1JgmGW9GN6hrONO2iFyzUkaHEdLW7aH65frvl6i5wv9mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748977194; c=relaxed/simple;
	bh=tD5CO5BSUIzAqVR42Yqa9VIret1ICcljuCPYnANTJjU=;
	h=To:Subject:From:Message-Id:Date; b=FdVikYsm2rt7CwEiyov5uCqUI00Aocjjb/ZUFYA7+CL6Pi+vKsaBtFYHMvVXM5ixga9kqCQSxKmna4xfcHmhJ9oQHpKEMJp6YCPXowPSGa0b2P0x3CGs1PvBoL19/s9c1KtdbUl/MIoS+BhkggmlP6Qr6p9M+E+l4G71BQWo45s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he0lnQ3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he0lnQ3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F37CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748977193;
	bh=tD5CO5BSUIzAqVR42Yqa9VIret1ICcljuCPYnANTJjU=;
	h=To:Subject:From:Date:From;
	b=he0lnQ3jPf1Q8oppgf+J30dRY4MJvsJTZFYYtGe1z5f3p01hna8QwBc9HilDZCHQp
	 x5TEeLXYIGkwtltztm0fmSgx29OWccbSLy/UEmG8ejYukftD1j7qr++bcRwoeWRdzD
	 klNd3q/tdaX6xuss+BASldD3m8/67L9dlcGrm/YZk0bvr7n1xhLbiyVs6DJrZoyu0D
	 +oZvYHnB0+gvCxw81RH1CQZxCiCJawNzyfdpID+9Tu0QlV1W8oW7eWnZUsF51LhaGp
	 XHpYM30a8yDmQtPtDJ1FGhtH4ZV2tKWNkfprzy4xra2lAiBba0Edr4efF97CdIdmXa
	 FQjRRdmxSnaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90107C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897719357.19814.18390455054628651112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01be2d318d3c4b730da2bced256ad780c9102e513d450e043b0f62673d64fca
Date: Tue, 03 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748977193
