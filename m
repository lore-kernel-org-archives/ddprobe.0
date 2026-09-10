Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4416955D866
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789061435; cv=none; b=lcVRzPAHSZ5a5QbU2owtTYmdJ1imG2pIWA/DfTIBZkk8KFLXGUJBAuxk2xBB1xNkETP1rbEO9QwMkTrY0SawDa2LEJDy8nFW3wXtDMZtq2PANSdce0y3uXAWpMX2MLX493eb+SppNrnCloIB0NxT2AMrAa84pKtfv5SR5e7UIig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789061435; c=relaxed/simple;
	bh=YeJoqABux4raOr+QCZmeTI+j+WfFo0cbJyIAh4wTIDU=;
	h=To:Subject:From:Message-Id:Date; b=SIqcXM4Yn/12Pjw6ghKQ4KC+4aFBk0esnkSShcUZszLywVwoOjBvyJAlJm05IJSZNMAnLvnJEYYw29HdgYg3kkESgNLUw7n1UgLJ2CzIljTSKdBA880Kf3inksBRsb6uyx7/Qn4gain+0nmq+AaSHbW2xfyliY7DDilOL7omjyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhnAdp4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhnAdp4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D641BC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789061433;
	bh=YeJoqABux4raOr+QCZmeTI+j+WfFo0cbJyIAh4wTIDU=;
	h=To:Subject:From:Date:From;
	b=rhnAdp4v0aTDP7ZzyIJfatMCs/kNOkj38vQGFaaMcNXI0xQQNIGSg3ZHYEzPAvbrX
	 7binmSK721G6Ee2tfLoBoGyc9yffkkKIlzemjx+5kQoTnN/M2rJahAqbbWezQ2DWdp
	 nxrlOT95cV3dcghddgj8DyVxpjuooB/8mt+mOhgJzLqqs13ZsDQ0cok/NGHCMdCI2C
	 nyHFl8WwKM3sov2zdJ10oULoH7bWtuVFJBzOl6GkPjHjfCmkDcAS18saxCrHmzWjwj
	 PZfpAbt6M47174Op0UArYWu5G+1HItwcaaCRwXa4u98WYLZDOrUTV99Yzi402Z+wwg
	 SCiZRDIjw2LQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E31C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906143368.24477.2099747685667944394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f2ba2c7978085e85618cc8150a6ec7d2abcd661988a1b8e1dc504e20d4bb94
Date: Thu, 10 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789061433
