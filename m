Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9EA449EB7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787133634; cv=none; b=jzIZdu1jmkVvAJNF/Y6sKc/U4cWoVxeEOBfHOCVmEqkgydXI/jGmTHzMjsnMUejWNN9/uWS91XNfjGvysOKR2MmZeIP1ECQZuxAg5RTnzL3oj3cpfLf8lkSbcST2cdwjvkK6EP2j3AZeRRkAY9U/uyytdP5HY37Qisx6KxvfZTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787133634; c=relaxed/simple;
	bh=bXtRKIHRUh+olahBZHWKrVc/79hGjXy18ixULaxRJrE=;
	h=To:Subject:From:Message-Id:Date; b=PyTe75caq4YAWucJNDoi5aXuMOP8R8M0Q6JWnI2F6KGstY2wJIJu945sTj0IfUYWHtSkG3fug88T7ofs6HTAXiL3KvE+0pv6ub8bWg8gaKI2f5T2hZQpmCNwce2OFEPqRfQsmIhJNBBEGr2Y/8KM0RZFh0fDcAHu0KR8FB17mjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwLhq0VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwLhq0VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D588FC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787133633;
	bh=bXtRKIHRUh+olahBZHWKrVc/79hGjXy18ixULaxRJrE=;
	h=To:Subject:From:Date:From;
	b=FwLhq0VFW3nsPS5EYOeXt790QbrK75irm84iNaPjtGmElt0FwTijHK4A4FkmB5ujD
	 A/aMf4xBknZRr6aRTY7/H3pBycbJLlg/weZqmVMCnZumsEzipVyDjYn2twOCVgBYRn
	 M7p81I1l1cfP+KxHkkDdvxU8UzswqoSv5jD/oXTC3SKOTPEs6fRkD7KZmBHA3wmEPq
	 NPWSzgprTEiMrM8D7zqDZX2iLY8GVfQ2UHCB3fNzE7jTKggvSOAEF/M9NEwUhJfoRv
	 YvIL/MfPJzpP/oIds825R6fwJ/4ekFig8fUB1bEEjXMONBpzCheRkAfzDsjLMgPW4h
	 Mxk2XaTify1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF16DC5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713363370.27188.12968446730651672628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463c1239332729d9242bad51bbdb701144bcc36803bffe4d2e2cf99658a3a0f4
Date: Wed, 19 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787133633
