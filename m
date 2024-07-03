Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAB518E74F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720043723; cv=none; b=mE5uQYkdgfeFHtnJLQ0BNE95T0nwoVkZA4QUN0/n0MQ6v6e8hz0khijrxoOk+Vo97Rg+n9p57+9P7Nqyg0cn2RX7OnHglHOuupLFiKPcErdT7MxjVC4UPBLO0dEH5UladPhyo3taw2SLIji/mBmMmI2VwnMpmU/ag9M5XMabug0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720043723; c=relaxed/simple;
	bh=PbTJlGv3OkfL6aKL/xMTw/DPC/HEOvSxJ7M8KCKkXGc=;
	h=To:Subject:From:Message-Id:Date; b=dmiFrIUwFRc87Qvk7D6lgkuiF8oun7KE42uc+vWmNpqqUQt1AdZu3ABJbb3DM2Y8z/an9/GKJBIjqCg5gT62FRMflR4R6yei9neWEaXbeKVAv7Air0MTKUWAE/FviuZ/ncpxwahig1T3xItlFfUUmNWSIy6zuKPl9SDsbuXbCGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgAiSgby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgAiSgby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDDA4C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720043723;
	bh=PbTJlGv3OkfL6aKL/xMTw/DPC/HEOvSxJ7M8KCKkXGc=;
	h=To:Subject:From:Date:From;
	b=VgAiSgbyzbIxbLWz3HOGR65f/SfSOaWQQS8M3zrcDTQ9dmf+oPJP9hbF9KplSymsF
	 6rsTQX/Km77Jhtwok8pGWAhWdn2DG9VK5Y31Pt3gmHjn1YxGawVVHm34CjTozkZSL4
	 oU6FvnHMa0tG/GI3oUkLBl7UNg5prVmRv2x0n0CdcznyIL/afEMTL+ZYnP1/HmeBjx
	 gI6AFNtfBEPl5W4V+ipHkXeYXQ6mImGdTAnfGOPsR7P5gdJHWb4MuBLjcHZGqtXLVY
	 MNIn+fsGRWKtaxTD+TDwjH1shfXRxE89eozspbiX5+olokxl7lXqd89gAATyhpBmvz
	 RWfCN92cNE2rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADF5C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004372282.21035.15570096078179490242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7708b95e9cb763f72ea9978784e52b16ded6da6c7f87344b9e995d2d669e34
Date: Wed, 03 Jul 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720043722
