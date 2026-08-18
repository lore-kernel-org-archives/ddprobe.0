Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C82255F28
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787095234; cv=none; b=GMaEvGPxGFVJMInNJqMpS+z46m1eZQYqiupjjLlm/Tv1plSGIpy7s6SmdWF6FOYYW4ILPks/v8anr4NqH1KTXiHmD53YkXKr83nZSJCPcL7HA7jeVEN7g0lw/1TIkrHmqypIOBr8sszPYrB/XSca6KLhoCea3iF6f71dt+dlOQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787095234; c=relaxed/simple;
	bh=SOPLkcWbh4rIayEJlP2tMcJgYc4bF1iBP5L0ji56xt8=;
	h=To:Subject:From:Message-Id:Date; b=MlIymeLs53f0AKTQrvTFM//qGUtKoMe/NoA3xNsPI3HeBpOZgnycq0tLIrAQ9Wao1rIn5wPmQN1IKCR7sHxhnmy7i81Kw25ffO/Y521PbPn9yy3z9og77q0tbKlkSO3/YOUWrHNTHu/5uwE4NwXxf5762VZCsuHiSlGwP8gQMA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8fJ7YE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8fJ7YE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D254FC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787095233;
	bh=SOPLkcWbh4rIayEJlP2tMcJgYc4bF1iBP5L0ji56xt8=;
	h=To:Subject:From:Date:From;
	b=t8fJ7YE77MmVwXZN7C3PQPEEhGkAJCo7+r6ytvmf4xfITniQuaUvdHINuoVAql8pn
	 8qZJLJxG2h8JMgqKc/h77Rkhl6luW48PCvcVEsNTKW87KLoWxyrImxOgraxWh0JFaN
	 h38cm1S35e6oOqF36mhofXSqMVOD/fucZq+mmmDtzuGXUcqwracbqja/dCer4hovMo
	 MpRJLdJv30WsFOmW7iJoV3mzTH5UugteyhP0w2cT7zSonEi2JrGNbzDKU2eHOpQlUD
	 WYPUtiCcdm2xwUFB/T2o5M4XlO6suVb+TVK7ZMDkE02UUBOUo0Li7Wv4lv532iDUpr
	 MQUWX59HrfPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE7C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709523368.30846.5636304354183636045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234aca9ce12c81bc5ab3dbd8160e39fc7763cc5068fb60384195cc98d3856afe
Date: Tue, 18 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787095233
