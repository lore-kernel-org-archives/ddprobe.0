Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D407E450FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744163993; cv=none; b=ndwwczt1BaSl+1uCbpiPwanT9klTXEhyquojZcGexQXqxQ4f8DsNsI7lQ4ZVDyxmzwLbTJMzclRoLfH8VGnSHSnHeGh5FFDb8LngQkV2nOEJg19fHM/nJR5KC1ra8E0pLTPesrlRB4OEtenSkC5LISVIsKN2n36EEfRoOELY1Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744163993; c=relaxed/simple;
	bh=8/olk56CfNwuoAjfzxcoRnbLHeqUMepv0T8arxwtzGo=;
	h=To:Subject:From:Message-Id:Date; b=o+Yt0N1/7yRhuu/w20xBOjwsCaSXL0aqZcnwX4kPERuH7yeaJ6504FqqiGj81b0Y1x5i+L71Ac9DMLTOPPvcaG+9BtopbLF4O4hx+17dr+R9MT6avpEG8e596/kh1/hNLu82c99Fb5pG9y0g4uW8pQN1YwATMEWFVZH4SRikw2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rL9OW+ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rL9OW+ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBF8C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744163993;
	bh=8/olk56CfNwuoAjfzxcoRnbLHeqUMepv0T8arxwtzGo=;
	h=To:Subject:From:Date:From;
	b=rL9OW+ZXDk9Vvtwv1cu6w2HlpGCZYnqvdWUhZOHk2DwxA2F/YSxQfkLvDpmT8tvQn
	 07MerD/oaY3qplxZXyqok42Ydd/15mpZ1cH2NXv2PTISdM0/NXk+i+inPOlShP6ztP
	 AqwAOMxJQz8egqlklQs+Nf+YX3O3H2Siil5Vt8YrnLQELQAKnR/9I550SVrafV44Eh
	 hPUcs2SvxdQxwmTwXvskM6WbjapkUeY7K00iyPeq33XDhwP5VbYILdVgY+hZgZDldQ
	 4Ip9BjEPnjN+536RJB9GuRDkvv6dwiAqr9f9MyGOKAlB+e+IDBG4yOUbyy6FgYCFRK
	 Z18KKUydHi3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBB1C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416399364.19050.11338092145036607486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e106c0f0779c3bf76549a40329c76c4def16f326f80a02d89bae27da834d66
Date: Wed, 09 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744163993
