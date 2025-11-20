Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CDC32C333
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763656314; cv=none; b=VffPumF6TFlnCHtQYplUcqo5Vi/UPyxetPqBRWTIFy9ZteEtQmhK7uGerYOYUmd81Y6B5yLA0w2GuT8iCHWLpDRksM1kZHNxJdb9AK7kgBNWclC+sK+ym8l3TUL5yuuo9E7IlrwV6BV2/NgcKY0sjpp/Kl02TTxmiHpndEmm5Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763656314; c=relaxed/simple;
	bh=ztT8OQ51k+pCwBhEMr3K9PvafHc8cxNw6dhbECRuzqk=;
	h=To:Subject:From:Message-Id:Date; b=nyGgKbc5ecOud7R4122DgEmUQCMK3/5LSs2nGYYeeuMhktCi80iGp5OxVKB16tNk+SVevCboVx71N1sJmnqIaYt4mFa4/Iwy4WooAuAwx0hG3uKrqZ++STvF2rddzCdIJHxKdXI4NnwyszTC0SGP3M3l6grFsO1UMLQZmaS+uRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx41TAA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx41TAA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDBCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763656313;
	bh=ztT8OQ51k+pCwBhEMr3K9PvafHc8cxNw6dhbECRuzqk=;
	h=To:Subject:From:Date:From;
	b=cx41TAA3pBYSfGsF3xBD6nXNxuphqMfMpOUWCu/gj56iTXszaPA8WSA0TWMDOuERu
	 aT/2jyFL04HRlLppAEF8D/cLqHUfQqIdNCPDb1owk+Rdpf4nK7XlM+Ww0JeW8zgZry
	 6YBHJGUInrsAB3P143d3TlalAifT+Y0siHJwzyTwSEQxMbJxym4shcUF5Mxco01Kwn
	 +mNHl6gKwC0j+0f2gQdBGlKhWb79PYuKPBKqEBwY4xX0mZSuBTmcPARYaHbWCrn0go
	 5HwNfXILX3K3fOjzQokIqi9M3g0l0tRKINX7KARgxdu6XnU4lw1Cy1ixnHeTd5QBnz
	 joh+Ux4FKsoUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E1CF8875
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365631363.29385.14898370399938395179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283c719e451fdde804d0af04232254fc6c7e0341a5699206c145491dc775bb44
Date: Thu, 20 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763656313
