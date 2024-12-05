Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669E321CA0D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733406954; cv=none; b=bUv03fDePmCVmFQW5RTN6nkDtCOntt0z9KS5aze9qV0STbXQzYscFPJi/jpw3YpmOl7UlfwRm6VbzJ59Em0oJwGIDoNGNPOcPAoj0nKMUoUByRfDH2+pTByuOkFrIcne6GxFiIE3IrKp9icYPIJiVpu7k1JIwzBfPBu6yNbIQi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733406954; c=relaxed/simple;
	bh=Tg4IuvZLE13VUlqQUPGWFOPesCQTdEAe1yHIGSIPsbU=;
	h=To:Subject:From:Message-Id:Date; b=GzjZdxTyeIzRYxzthDdeljPwVSkpYp8zb/5f6e47zaNSERr8bn1LJ570R6EJtfjU0Eh0ZJkpsq2lWSdNRnMHuvhSGKJ3fpx5mezLZ8LkQApCbiLq2bk/zssP4W/K3PWkZ25XF8mnmHqxY5pIFmNrt/1ovuS0Wdfm3tVtFMP8I1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taOBJ9ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taOBJ9ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B695CC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733406953;
	bh=Tg4IuvZLE13VUlqQUPGWFOPesCQTdEAe1yHIGSIPsbU=;
	h=To:Subject:From:Date:From;
	b=taOBJ9rily4eMUkuIhiypU2qmBBbbVdOu1iFk8jFTiZ1Rom7HmmoifcuedcdAP5w9
	 q3lxag5bdltA/eWGCuNcmrKi5gEPkwoJAaP1ODGAzniB3Yd6jjh1w7FvirawTPkRrs
	 0PFoD23O0PtRuh9AAX84i/uCXFZY10Z5vEwhWn8rv5OpapWczWgPpnuC8nf62E82Ox
	 t1mzQdKRyd37ikDXjvUn9mmaSVgRUCb+LyEnT1yksoOevEd0Pvdpm9tUrNneXhrT6y
	 tVWCu/egaLW1Fud5E55T+HO9ivzJh4+Z/lXZ/iNUihPXnMgn5jbeTjLlTO4X/UUC44
	 yrLtOq6lyfVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1F2E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340695363.32166.4926828467245162483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e80d47e9e69871a3aaf6d3b2734de52665a031a0fdb3be4582e840fbd1e9d7c
Date: Thu, 05 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733406953
