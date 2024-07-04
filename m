Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2861AB52B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720090523; cv=none; b=aI3GYAHcmch+d57Sc9056hCORadhrA65nmZ8mHiJJHto2ED05tmF+ItDzJl77pLW2aPZRzCeEUYHXLd51a4nh8WoNr1+nvhGVvAitgpwkCEW2OP/vdY1SKYImKGe9H65Jh8OdwqaoN9vqr4J0wm+i6ijiq5HkyzczIDXlXU5XSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720090523; c=relaxed/simple;
	bh=uGkeuNqx+ri0Qw0dhleWCe/XUjBPDV+gDxt/k8D9hUk=;
	h=To:Subject:From:Message-Id:Date; b=CTYS5GU8H0kNmU+uCvT+tSN1d3yTdkxx9DTDZN+1qNEgD90a0glqQVQOkNQ3jTMHbySidEyFXkZx6mK/nM6W9yQlD5xjX2XnktJmgFTZ30rcurYZIR8K/XB3hxz1JZ2AE8gr1ZnBR5jnR2k2a1JJhN8t5MxdioSYDMt4VAa/8Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlkL0dOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlkL0dOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B86C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720090522;
	bh=uGkeuNqx+ri0Qw0dhleWCe/XUjBPDV+gDxt/k8D9hUk=;
	h=To:Subject:From:Date:From;
	b=XlkL0dOAxUx3U2VIib/jNZPc+SyZ4X1q2wHR5Mgs6qp94LD083JeMAdL1JBCj/Zcc
	 x+Ajl03RWBbfLgmmgtpIDkLY7eMlvJG+rQdurIYQNs+dZa2Rm4VHP/q9fehKHTXrMP
	 Lz8tQounGQ0HtmBTTJVXyneE78irz8PdwhmtjvAjyuHAhkjZVsjbKPh4VhSNgLUyQP
	 VxAQJAMIP7M91AZZs+7ZXD3DuIHtGZQmt+p5RCNIS+zLiUNUz2UkL3Qx6RyEycOXO6
	 Tti7knHAOlZ/7qoFMa8PQSxFg9tRgmQXKMshNZaLxMgT8NYCHbSKrfEmV5sIaKdvVH
	 q5yTGeq/uNqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3858C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009052279.32260.12577080124728028032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d3bb20b86e6851528978da58ed12a8a16e48b8f46330960df8aab2bcd9b3da
Date: Thu, 04 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720090522
