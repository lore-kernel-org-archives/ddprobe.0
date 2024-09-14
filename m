Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307E479CC
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726302954; cv=none; b=EQDg31tZKiM6783y/5GlfVmFBsH+VdgLppApD07+HhSP4C5VnLzk/3obDsCPybAepU0pTKHEskJXlhXOUluDrbnayxizjD9Xjbehs6zb3fqzw7LXsaE3Xs9UoVbTe3zO/VFO/MzKen50niZhgtsDQkh7+oOVD759sHIXZHuO3vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726302954; c=relaxed/simple;
	bh=0o8LoFg1hrXsguWUCysMyPajy8X/zOlApHD47pUiHBA=;
	h=To:Subject:From:Message-Id:Date; b=pW4OujC3+9XnUe3GR68g0KL9OPgUlxfDtpq3XTHvJLCyhVPkfyhQuIe22WrHakR/wJM+ouo7ClhpNOAtZbCUB97lhR9gV/weQb8czqfXcs/u83vQD8wZBayGxtcfS60IJc51CUT5VTz56SKTKrwlBtdd4wTvXJ6TaDnXMTeTZTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSfFnLFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSfFnLFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B528CC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726302953;
	bh=0o8LoFg1hrXsguWUCysMyPajy8X/zOlApHD47pUiHBA=;
	h=To:Subject:From:Date:From;
	b=OSfFnLFbRFuG6TIsPSXsj1QehlnbHWKAwbHi1bnXdcMeNRRDstH1kC2dXGWwy54RK
	 Z1+1wmtZwrh//qcNoYYEmer8GcUbb3Fd/nP7PqlSwgWdMMFpaABcYdYwSHEbVEIR5+
	 jnaXD3rto3kVJ2R5dcFlOXoK/t1Y6r0zWfPydYgxuDlLVpd8QPr0Icv3LQm3839Cdr
	 G98s7WpSMH1IrPtxZFl1j32Tm3fYc8BG0KIVXsDZOaWKFQg8H3wL29uZDisYfo2u03
	 PQQ6w/lijqpJ5ry7LVuO0mDXDhO8EI4agC/dTWK9bO0IgKyYkR0inULAPhKVUl78CF
	 /81qMgHabiaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16FDC02181
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630295361.6725.9113638838411365207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8df0be19704b39478c8cac516df4258e09532a92de5495a444346c55303038
Date: Sat, 14 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726302953
