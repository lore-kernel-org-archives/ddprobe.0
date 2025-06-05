Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A418E025
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749141595; cv=none; b=cU4vX6fNV0QJcc8fBrXllSwMMhLYVc0Sfz1cBqvNwIiIoTZgajHtH5y7psgEg1qWq2WH6zFd6TdRIn4U6e8n/rWqKg7VuHTSRnvnNB5Uv/rdpjV3NkErWIAniKap5JPJrzk0ZzM6Zj7zz+RFKmie7JdCuQPLSP0QCN1KoVUgd+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749141595; c=relaxed/simple;
	bh=pApr8BtUwC/PoffH+g8AWs9Ok9fhQ1Wf/coXvxtzqCk=;
	h=To:Subject:From:Message-Id:Date; b=fZFWTvljeejuMsz7xvgEjjMOMOMA+/l1e1P//Jp8n0rTh839wPsMdI9MyaWToSql3t2Pr34Im/7nM6zrXzRgwQ+K6Ly9dlHMtFOlknePYeAKj+N/HeE+zfN7HKmt9eRZmFs3KH1/P06Typq23LurbZgiU7r17/urFDJCjlBntZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGWqGM4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGWqGM4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749141593;
	bh=pApr8BtUwC/PoffH+g8AWs9Ok9fhQ1Wf/coXvxtzqCk=;
	h=To:Subject:From:Date:From;
	b=FGWqGM4F7gzCGlRGjhMJ4ztb25qxUnbqL70NVqEqQ6Qy3wEzfTUpc1H67TSc1S3s1
	 9fEESLD9hE/pxAa8iIT2zEHAea9htyMOWlDIwbOWXsJPiFmb++MoVXsVLLv/37bQL0
	 i2CqufoEv1EkdVTRt/xViOB4CYGATOAnrLqCS2eQ+jn/m9lOpmGGWbUtihiaGwWZ3w
	 UFEt+nxPf8vXZetOYBDs/aCOpFH59PCe6q/pCatq25V+sDLUwotZmGmLntD0fuqtFy
	 4FB8BKdawjWcSUXGrZDmNCjM8COQV0NsLmbAnH/3CGzOweBr3SapkP+AopVMzWn7Ea
	 kLtGKVsN6qLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91779C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914159358.6234.10340955069658869440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffd5e1f5755d9e1dec2f022e7db9065a724e64dc98a169506238a375c5858b7
Date: Thu, 05 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749141593
