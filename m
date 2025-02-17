Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472811A8404
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739835534; cv=none; b=HTrtKD9WAlypY0MoY0F4NLmXxmr5Prh2LISUwFRZJLiNXNSYP69OIeWPiszp9SgCeR9XjXeEClf/2KZXOgd8TQr1Xl2lCwl+i3m4a+/fkz45WTQu6kaQb3/+KfxyVwdn4058C8vAMozRx6gsFJeaP4k1STjOAK32tLxcKoyelIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739835534; c=relaxed/simple;
	bh=lkLbOx/WmasB4xezKtDGf2xHIT203StRx5ollu+p+Os=;
	h=To:Subject:From:Message-Id:Date; b=GX/zWaffUtvuiZKVovAi3Ra0zVdfDoJN29l4izDR6qjJRNFO8BTe6SuKAmq6wFt8MMG1/72vEQR6xVCVEtKBliaf8K3bHJQprR/6/kpYCbZ/uDElOQ0vak0PLUMvgsQKUfZQd7lEXw8vT3kwPwOVWs7s9rDMAXJD7uf5V3pZCok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ+vJjxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ+vJjxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB07C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739835533;
	bh=lkLbOx/WmasB4xezKtDGf2xHIT203StRx5ollu+p+Os=;
	h=To:Subject:From:Date:From;
	b=WQ+vJjxMkSN7eLUvLxM6HWlBjAOL8tL+MUhguwZDVt6sLEX9bWfPcn5E7vfhBXLKc
	 Yrhl2MdFjbaiY4LGWo6ZcFHKL8wvYVLwxcl9nODRtZGSmLBdeT2Nugtzeh1dClMCS/
	 mM/m1rtzLRoz1BR0eqa+L2ngGwNUj+HArTEf3VWivseOjqYOubwlOnA4l7HmDTXFzx
	 rRnGs74+ElKIQMeU7SUg+wntdddIb5ZAWsTkNdaBn2CeBA4Ul8EtR8GLjJtVP/dmeM
	 H1NMNwc5U4JSqGGgonDSj4nqgpS6tC3VO08BzMPxJz4wZx2uReheXAFiIB7nmwv4jO
	 x3OfNlyEayGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976BBC021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173983553358.6299.9802555626404460936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a1c3b5303ffa51acfb953e3b279fdf5f7359b9d3ecac6c91d36a2df78c72e4
Date: Mon, 17 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739835533
