Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF77944F
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759971594; cv=none; b=f+IylLIjovAV8j2JBG0x70VAa/HQLzGYDxynpVb8uuqWMzzSEmiJ6SbQiT5G/k7wkq+slxoqqMQEp5Z4L9gWXPk801GRbVONwoHjcu6xxe1HVz5Mj1fsdThzK0qhfiVbSWQ39L9kUmsDUyDX/U7gSH4n05FTNb5b2gW9QXwZrp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759971594; c=relaxed/simple;
	bh=1ijo4mOs4i675W2xZ+1Wu5938QJLfVkVJvW7uMSBsEc=;
	h=To:Subject:From:Message-Id:Date; b=RbJbcJmnoMdI7/6LrA20TzR7RLL/5iIvdcAEbmdnh0lHO1+r9QggoiaOwRWRs5qhigA0JIWoACPLWetj768z1gsa/ti/A38JvwSdnoh6y7N95ztOvC/1DTCtpFRlVMM8wj6YJ4Y1DzGyUbRPkoP9VnagLCQNYMXQviFs402rjV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urVaotVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urVaotVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759971593;
	bh=1ijo4mOs4i675W2xZ+1Wu5938QJLfVkVJvW7uMSBsEc=;
	h=To:Subject:From:Date:From;
	b=urVaotVP8pJZR7g6FJ9UBpTn8+e7JirUaB3vXOyoXSms7zfELPSOUMQe89BlhrtCk
	 F/d0syNIBJsTM2WBgTNdLmGzvX3DROOudHPZ6s+fmSeWiSKw1sxJ/8kpkp9C2jPmVI
	 Enl2z+issgm3YF2tspKVit9HXhE6CFkOi9t8WUi2hA59jzdiNEY6uuVIHyQlVZB0CM
	 iLAPY1nfT8wCsDT64Nv9g4OcENeRCfJLSaQ5mvvsd5TfC5ZhHYmSOPib2IbHEgxkRw
	 VqZyuqbdN6Cji+25LdpicZelaXib/Lv0OLThOnQ2i3vqktBQv5psAHxTi2bPsNoQ6f
	 NNaU2p1CQfZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D54CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997159358.21913.16745795315332560972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fe9e35f93de77a692c681ca151dc8320150559440e2d231abddc213e44dfdc
Date: Thu, 09 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759971593
