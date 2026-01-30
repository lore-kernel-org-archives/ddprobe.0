Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA2234D4E0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769810634; cv=none; b=J6gJAylJn/B6+vjp1VOz91agLu5DJQqERk0TpAFfS+k5RHfW7RcXBv0+lYprvWybBDUSdXMIRBfSmG++rM3s/F0lEJsSKxhR2eQvVQdmSc0cpIE5u9mO7qlT177N+bsXAPp5xY5RWd+BESFCk6H0esBBwCzQP5+HlAoMT30arEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769810634; c=relaxed/simple;
	bh=A89M55MItRDA/b5IDCXWXdeMp628P3Cv17PeZRdnYuI=;
	h=To:Subject:From:Message-Id:Date; b=WOXT+VJfzMdgkW6muNlgYkh6Xhh1mDxaAOw6DGM2ceyHTDhveGPTuTEouXJ+++mlOEVMSJUkfHcco1S0Z/Puzy366wLj0Wqst2OyOf3Z/+ANaSg5Iq4O7snQRX6zHeL69iQ/ULXkDzkjKpTwMFem2l0LKnZi5IDZOk/lLCF+WlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFpfwY+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFpfwY+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C06C19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769810633;
	bh=A89M55MItRDA/b5IDCXWXdeMp628P3Cv17PeZRdnYuI=;
	h=To:Subject:From:Date:From;
	b=DFpfwY+zh5/Me9dFUrUFCEWjt/+B2+sqs+aD7zDdThREBKiASQRpH0UlAv6SvmBhB
	 idBqgEF629TBW6VUlUmSAkiz6BAGh+gLCzsK0ndipnVfX+oX1Ln+qIPT4z/wYGNje1
	 vJr1z+pdeKSV1qZ/ei6lcM2f9bg+gWuFdz1feCmlRQjAKCXGrr6GYJwHSdkv6/Kw2t
	 QUYiL+/6nkhotawWn9+37+ZrMvU+qriic2PbgB2wbfn3Fskillqm1QOEroRRZ4Hd/F
	 lVINwORaSuDzr8hIWIR/GzxEEAJIdyzMUq4pojoZQ6sn3yV9JiXOu6utwpUw3t3PJr
	 +rRax1TQDNROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375BE6BF3D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981063359.6756.4763029169942116354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b152b7a446bb649d1f8bca15e29e13f01e3262f53e9ce54c969f115ba33476
Date: Fri, 30 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769810633
