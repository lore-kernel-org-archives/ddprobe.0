Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7FF6CDD8
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716294203; cv=none; b=HMDzsdvwgIjZvNWwlAOskKDd/74GZTnViGZ1Pyx9wzqiR8dxe4BeOLB1X+SYXXV1+yCfnFXHzd5YFGzOgsf6axK6VHIF/zKWLNV6QpIEzrCfAE2VtcQGIj/gmypRWlv3cjfviYKAG3QJFo9vUUQFA14d98IW0P0t1TMOyBgWP6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716294203; c=relaxed/simple;
	bh=NRZnwSJChjoGHQmuDR0HhqC5W0cz1j9zNewq2cjxDmY=;
	h=To:Subject:From:Message-Id:Date; b=S9EU3zG7KQKZKZ9x2g+27O7iDGFqw465Vh16rMekAG/BKJgPykF11Tr/cvHkDG+UIAM58BQeXkMRD/377NTd4mVnyg4UE2AndeA/P4xspJiuoERC4u8e6hrEqk/6fJjKWT5kwkXFcs1SShQj5rJl8fNAOzzR8y8jfMdyCRuVVc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sazl8w96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sazl8w96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CCFC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716294202;
	bh=NRZnwSJChjoGHQmuDR0HhqC5W0cz1j9zNewq2cjxDmY=;
	h=To:Subject:From:Date:From;
	b=sazl8w96kEtOyQE/AYFws4/Kcz8tdzSHMRmbgH/0CMXTIhr+/hoc32IZYL701zkMD
	 BC6ZzIU8unShYORjUcUdJYHqZHV0CO+2Dal+KQ8C13OfEG6SuWrFFey6s5DblI9KT2
	 AEIKN2M00Zj/sIpfkXQVgLIb00QG1xiaqx/9rbcYaTAu0MFysoQCg/WdN/99HPUpg2
	 8gWHaKGNo7a15IB/Qy3i5kxO9J/WL8liDOrUfOcKcGORIuRHAgsHNTVoC9rxH6Z2Dd
	 e0DeaH63NlQiAHSyaisAW/PEmMZxz9iXt0r+eFv3rIRl1GrRie+yZKhu2nlXZxNloJ
	 +r/gmwO9KowQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3805C25B75
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629420278.1344.8929670212642081530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d80a7e01711de541b919851d79e65260f6c4d152f910dd87247d75b3383d06
Date: Tue, 21 May 2024 12:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716294202
