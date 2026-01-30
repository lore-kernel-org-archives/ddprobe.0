Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E760E242D6C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769772234; cv=none; b=tF33Pa0oCFAMgjN/jx3SVb877wEpiyELCM0UFPKpRO3s9GrieMPPguXNBThcyVnyKAfDs4R1TxKFrr9n6dR1Hs+ZDPAVQwjO6pEFv6tn4RAByASMxcTZseiKf9SUmrL0yf2QujNuW8gtkFEn/mDdCCEwtMADtr79qqb9ELMdkag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769772234; c=relaxed/simple;
	bh=FrHW2U8U1IkidVDBfIV/VuYWP/k0Bpr0uE5zDOsHmv0=;
	h=To:Subject:From:Message-Id:Date; b=e5vROmyE33RAdo0iFlIDQ1UY8uyQcQMGAQfYgSfGDtM0ou39kod5wjEfng/HDSWBdTg9W3omm+gb+CjTgRGHgZ7XoefV6YRZUqGLhq6jYaTlbp8pt+YY8XrE+8GhHJKthGlyprbMssdpSjnWLX3TrVPJAc+ZXSprJMTCj71HXSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0ihZ4ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0ihZ4ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769772233;
	bh=FrHW2U8U1IkidVDBfIV/VuYWP/k0Bpr0uE5zDOsHmv0=;
	h=To:Subject:From:Date:From;
	b=P0ihZ4ekxqhiiZvPIW8E4PDOF1NGUSfA0qtZd5jrVhop2pJU7/RuWx5AgXHedaCW3
	 9UGbLhIAdPTXeoNSl4ZCv3AlYQs0spMqVcKWxfSZ/CghLFINBrl0s4Dv3CBULnn25u
	 hvNSddxDuHkmLIRGh6O8lhnmRGvpZXYdKye6rD3QKIgiOdZc8e9Rrg0uPAYKdeqDKZ
	 NfHQRCwxvE5BBXR/pbJlDuvJRLM6fWP30Vns3f9pPx5I7TdwX3Wm4+Pp9vg5DIIp2M
	 fO62Mge81N4aQOQ/ZupvdaAfz2FumBI5x0Kb7C3ebQGgWj79z5vuJ3hErVHSKk77re
	 CLGBPaYgz50pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB60E6BF00
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977223357.18230.3000434994155560838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50de0eff7b3242e6e84e02c750ea14d12bc3488fe8820a27823b62f65a98a71f
Date: Fri, 30 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769772233
