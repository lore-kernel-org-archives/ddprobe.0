Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB1D41A547
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785825634; cv=none; b=aZynSCUTVpiHg3L1IQp05/ulRfS/EB0ovvDowV70INkC4OSmFXBGeY/6MvlHwKENmio4DXJADDdJIx/WcaoYdnlNg+vqMYsrszcdBqcar00a3Y3DwmLtzF4F/WDiWQc2jIfR31n9/DFq+Jr5rwEYRdVAmj41urtIY3OX99bow3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785825634; c=relaxed/simple;
	bh=+k2T3Eei32yZt3pebW9ODGqq8tyMyhwirlpI6DCAHpo=;
	h=To:Subject:From:Message-Id:Date; b=hVAf+Ou8zXoWMK86dNYQxfv9X+AxzClrXeQnAm1IyBhwRb/G2J6RUC+GTWLRbn6a1tIg8dLDR/3YvOl3MEnRdimICC0nxauasnaJeb45bxlnhPsQlviulYTHIU9aeBekzWInDn2gTsSKaq4MC1JxwPgM5tTCOmpDVYv4sQY7R5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkWphqTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkWphqTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E122EC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785825633;
	bh=+k2T3Eei32yZt3pebW9ODGqq8tyMyhwirlpI6DCAHpo=;
	h=To:Subject:From:Date:From;
	b=lkWphqTDRGRq5IRhknLU5DBsyMpRtYi4TLTSAEGsAI8N+UtIsdplpMgCN+q48d3dt
	 eEFAhOqamNaN1LpLbWja0/449wD5ntaausjH4A4Iv+grxZkQLNJNXE5vxYAeNuXUOC
	 9Ba7enxjCaS17YMJixHXYZMp2zQKmYj4O9MenaUqz73HkSkmxTO8dbhepAemfbRN/Y
	 dIJv7B4+/pPXYq2HTufwzzUocB5E1BPrWFLaJH2vT9k9fXbh6UoTby9MCI3BY10I2+
	 AMA6OOYk5oGm6nnNiXHjARxWqOve0k+Q3VMOTWN0gfFQntFoiRppILdY2ZeYiTCUCw
	 gi2TLl6/cs4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB110C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582563374.9073.12274992135182679397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06eaea44982e4ab531176a4867f379572a25756a2c1e3eb752c9c047b94db045
Date: Tue, 04 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785825633
