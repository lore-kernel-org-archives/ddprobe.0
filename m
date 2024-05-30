Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AC47F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717051463; cv=none; b=bzvsb1qgNdULVNoi4IccG88Nj4xYfmKzAkCGf3XbPxyYqnwvD3yMArgNsCvkmbAOHFNgughk/zue67J5e8jUoBEwoAFWW8uL8SNyyQAdRt1i8oMG6X6E0PVFv2jJ+GTCF2qI1KaLzaSERWdW9jpSiu/9dZiJluFTmXMv/UXGg+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717051463; c=relaxed/simple;
	bh=x9rdv7c5fPcZ5IfkxMEmx8rUbKpm1yo82xDOWsMtEng=;
	h=To:Subject:From:Message-Id:Date; b=c4RubyC/rLP9SOiNxmirZmdpdf7QmFD1diEL+t8T7K2j+Pczf/eOh/ByrEP7ErazcS5M0V5yQ0EV7vcYACabt7WYcLYAvvmkTqt61vSkWDXTaObkt1YeBE84M+Ouh1EXvkfDt6GAy5sDuy5h3AEMP0Wvv6OPdcZy38dTX22uaUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWChrIlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWChrIlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717051462;
	bh=x9rdv7c5fPcZ5IfkxMEmx8rUbKpm1yo82xDOWsMtEng=;
	h=To:Subject:From:Date:From;
	b=ZWChrIlmR2LwTx+c46CuT9KAZ2mpT2bd/eQ3TYru8qVeRWp2zhiAVs4li8ERG58nr
	 j464JDW2bhiqe6zwoPikjUajJn7QpnmpC9w7hLIwXFFVYIsqw+qA8f5M91xCYRDsBC
	 eKdebBv4lloqrX0Ki1CIZwAtfEh8aj0WF75Epb0V3IF6UfBItokIgDEMOXA8E6bZpv
	 foRGBtGa93svBt84UHILlX2aNoVKWxrWzpCR47M1FX8ElVpQYZ4/bPB7mFHh+8MMGL
	 Y5E+/mIjziRpzznkI0/LZ7sNVFGjjpfgP5QyUeDaJjzR9W1tpmHsFIAsLLjVCEoTp7
	 7YolKdgHWYeAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2DBC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705146276.7637.60546984119969415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cfe9c24f78644806dddd11abb6de33b2530f1094a9546d24453ec659518348
Date: Thu, 30 May 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717051462
