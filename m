Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533932F28EA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784269114; cv=none; b=XQBf8xSWIqNVJfzCQ785hxAtVPdmV/8sMqYHVFOFX00b83FNIW+Du0dWCTmnWW5Np9NJRAR1ykR3i02tfdWWu7Djk/b2O/BmhfSa3JBmNt9k5cZTIZTG8SP4j5e7DlEAmb8PVnL/32yOCy+dE7P9nOc1QXvOIwaNIRUGTV7BEok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784269114; c=relaxed/simple;
	bh=Oq5cSXMGPexBIzQ0M9YxC7tvS/I9sv9L2czrN6DeON4=;
	h=To:Subject:From:Message-Id:Date; b=boMc7yv9y9f4CavBr02tauyB/m8gQmvVfmMvAJnTPZbXbFLImC3HMnEx8VznJxFOwafrVzSh+3FtZPM+L6K9b3qBCEROEY5aa/bUTUHQLNKR02tLq9kgCRsvBMnAy336PmNngRY4VSqBK8mhcJBgjtxszANte1xPKMarJBCX2wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+EuY8O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+EuY8O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE1CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784269113;
	bh=Oq5cSXMGPexBIzQ0M9YxC7tvS/I9sv9L2czrN6DeON4=;
	h=To:Subject:From:Date:From;
	b=J+EuY8O34Zh8a6zy//tdP9pylR1Mv57dUy8vo3EdZXHYVbl8ol9+0hwN+zT6CBqk7
	 R6GelUjL86/XUiOjUyeu3AGlhuyNRLC9JSselfKbgd+OhtiUEroUzG840kLoxEHXuD
	 XKG2x+pr5wviOHv3grLcuaXzSfuMrQ6M4velz753hmAmVNUjODoQfFxvXUaQrDWdEj
	 TrCMHrwuxVSMex6O5lbBPPl2FRcr++uHClSN7NCmf9Hv1vPdKdW3MPx/FQ/G2rzH8Z
	 LSR1jTZZVj5Z6Q47a0bHVUveAaeV6jeN3G677nNrVzL23UDNRMprT9i9gfNzia/gAf
	 kQoqChBIkzmPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F03C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426911374.15693.3732301508885244998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e598250ccd95e879ffcbaac0b3e929f11207f2b005b1df721785da0ca0c4b8f6
Date: Fri, 17 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784269113
