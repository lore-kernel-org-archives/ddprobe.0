Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29371DDC1B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770948293; cv=none; b=rcp4lfysV7D2TBJ0s0SSo4009BtJGjMCoodSQNR7hvbwSdNqbcioxM2WuZl1Hmzn+16M0kqJ1vmkYfSfSY7btU7//5TglrytOjKgF/VESIGZTxoueIdOdmfDsCjbQJ2GdBbz0/vrIjrpznAvhJJnFAH93VDqLAwtonHN0F4REIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770948293; c=relaxed/simple;
	bh=Kdk7ULK7tesOPRELRaExXgyyzzPCqOCaKhRSf/8kVIw=;
	h=To:Subject:From:Message-Id:Date; b=t4hL0DeUY14HX3u0J5WiQVmwZyA54oQfYj1PjZyW91HS5Or6xiR14CNJVvkzfQe3mIWlcph2Nhv9sX0z/HSYFlKXjl4km+u/o06yAFhYH7OED5JpW1P8xMXC23vfVnsSBnKhtFR8/iL9pRGDdZHodXA4PhFHspTLkM6BEHeXTpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBTR2aHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBTR2aHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A01C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770948293;
	bh=Kdk7ULK7tesOPRELRaExXgyyzzPCqOCaKhRSf/8kVIw=;
	h=To:Subject:From:Date:From;
	b=pBTR2aHD31/WCFnVxly/D1SthuwE/fjWTmKj0oliQaKtJ66ScDJlv1w5nbXLxV3ex
	 uklUw+lcYus31z/DPIXkt70LvCAYyx0slVHnlybE8lfVgtOVqz8hwIHpquGG1IFFae
	 Fpmf5eLhFDnOxnxAGt2PTRS2D4JHxTNhvuixgsW1z8/HSeUqN9Mnffu7ki690JxYOk
	 M/AtR/r/Cqh5jbIB7YGxvKkeAidsnO9ZWvwcyyJobonQguJ403buOdzPAmFG+0WWMK
	 TPf1rnHCV4F/YopPMEFWw2VMwoPU3DwEaQe75S5rHF2R19pWty6Qu78Mus2bCf+mia
	 ggFLKeTKsHsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF66EEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094829364.7464.2956956315182511361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd2a840769532271b1fdb10216708a34e131beb1088783651b0f2fa67d77aae
Date: Fri, 13 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770948293
