Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1120C23A9AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775121334; cv=none; b=rhzQXUerDXK8INTPObX7YA1qKKdtR+SBnFnAgAHnNWZyF/c0ppy9WJG1OD8ToFaroYNWKqMfPRqvNuWVpaYrsv7HxdSL9c8r3ivr86Ry0uUQ+qiZ+MvEeeX/7/sr2jXIGZAcCsJ2h76NmxGQIpXNubP5Tl9ryf7E1QfTXgAKWv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775121334; c=relaxed/simple;
	bh=gQzH14clz1e25G98A63xjCJ5yVZ/j2nJOdvoytSb2EM=;
	h=To:Subject:From:Message-Id:Date; b=S0XZLXWkXPPnYaODGri+uvzY26yjQsV/r/YveCJn0Z45Q6uUmy/uxPfCRP1h2BBz+TzDilCIB8gbMFmBDUgqv/wuflNkrMDsChnlFoM2PBSeEZ5Djjm7aPSOum+8bsY2bj44aZg13WsYHINC1F63JEgz7ueB/+tkm78VYHPWmbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVaLFBkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVaLFBkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7946C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775121333;
	bh=gQzH14clz1e25G98A63xjCJ5yVZ/j2nJOdvoytSb2EM=;
	h=To:Subject:From:Date:From;
	b=sVaLFBkLFcE71c1RH3H25Fppk53TN56m24ZuHzue4sa61sSMwUmEekZK4Bo+DPH4f
	 yiN3uQcnjlck6RvOWHYJQyJgJJp7lAczb1R/2aNYIP9Edtnh+PqoxXelyfxT4U9mko
	 c9qAuhAaS+Qif7DCO3xhhtVU1bhgrMus2cClR+M20LnLGhi9iguLWhaqPs8chXEaAR
	 vwKKCfVMCydBuamo1A7L9/MfX3rpvvApBLnalUVOtg/IEdDk3kx4vKO/jLuekHxjn+
	 XzFl3Se1/v2fv8MsRbCrlUvJsQGB6r2uM+zocaCzcsSOif7EBsgv9xDazv7MtcwMoa
	 g5DXB5ffh9C3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD07CC6B3A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512133368.13403.6675934277152123808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40283b9720d1a39c985c9b48b1d68cfd2ddba98cc65a2fff44e0b936a267ce8
Date: Thu, 02 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775121333
