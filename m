Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E1B402BA1
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790329834; cv=none; b=Ievz3SnDlToB6wUAOSyc4aQgLLZTT8wRKal8m2coPPViWb0ySwPWrdGgVf6TnJUoylvQxGvtyd8rDrG2KalinlTlTzkquMGq94hnILtt5MbrvEo5zO0crwQ/BKMd0w7QUjgut8T8XT5Z6rQfOzkWzsOIlaaGEAO/xVktcxgC9mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790329834; c=relaxed/simple;
	bh=hHPt/cU4RQ8pPkh9vCu5rxjIbczWTak91+zb/O3fAN8=;
	h=To:Subject:From:Message-Id:Date; b=aHPA3cPdWv3J6l44BEjzwEJCoSPzYXQeycIlTQok+gIFtt6cHxubMZqORfVRdzDLMrGJjdeb5HEN7u1aLv6oPeS/+MXZHyWYI6NKm3C/V2PKqqZYmNc9Wf7PdUu3S4Ckq0rTgJGz4y8ghkH46/EvBy5+TLvL9FIhTwcDQDjlvmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBC4xNUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBC4xNUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE36C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790329833;
	bh=hHPt/cU4RQ8pPkh9vCu5rxjIbczWTak91+zb/O3fAN8=;
	h=To:Subject:From:Date:From;
	b=RBC4xNUUeHqtmcEKv1sTJo9GerxDLZr1dav6xMnZy3HKYryk1FPW3IBEK56iuC42j
	 R/TppseSXoE7M9P6uihGLMZi9+L2v9pLBEqlLjZZDc5SKdnGitr7aCtvHBDDLaa2BK
	 RUdtu2HgdP0pCFgoSswuS6S5S8bSWgO1UHScZcZ/q0N1dQIt0RDc22hvly6B1F40sH
	 /5diamVic2sVw3dqZwmq94GeAKgS25GxIBzgdt0RT2yheWXfaWM2XyDI2hbZkNvC6I
	 RIBDU3Ni2AjM4F2IFlhOpp/qNZ+V494AnpCRvfnGSO5d7o6GbIfVceEYSso+iHURKU
	 tElgAGtDAoSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5BC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032983369.22181.11024462806997499443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8930c46a02878168c9d39caa8da3fd6f9b7519447d2de7f607f25fffbeb73cc
Date: Fri, 25 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790329833
