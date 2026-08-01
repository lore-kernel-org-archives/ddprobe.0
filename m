Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C6516A956
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785592834; cv=none; b=CaeZvNH28EtAcoapEwZD0+NW7sjRlffWZw5NeTYwboBcHanFVNWG+zk8eQWFXYA9lI3676TEn5LG3YXhCTKoa1ENLI3iSB6vDUg5yqDERIsW7Boih8/OTNlVwJ3yyRjr3yTj9J1dtbA15+wFn1QHhvdeErlha/v0DC76wJ+j5oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785592834; c=relaxed/simple;
	bh=Ajeo7IDx5HjAmFyeI4VjLCh1JZHO93oAZhXFX9quORE=;
	h=To:Subject:From:Message-Id:Date; b=VAuTzRlQ1rrgpwRYPPMuICKN7JiWP2hdMEi8zy74OO60gUiRKK7JCd9LeLMvdvooiWEygMI15STTqJbbzPDYERozK5bHg93Sklr9vAlzlwxMEE31dFjBZMoCqqtODbbNBLdvzeJfYjGJuyhJYNhOEllzVMt9uBiJNz3eD50+DbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaftiKDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaftiKDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE29C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785592833;
	bh=Ajeo7IDx5HjAmFyeI4VjLCh1JZHO93oAZhXFX9quORE=;
	h=To:Subject:From:Date:From;
	b=PaftiKDLFUrL94/Y368JOGU54muD5LM/703hgGMBAzPqnDPB37sw1jYWbN1fz8CqF
	 oH9H4mkaMVtPMGOcUhvZ67BGuPglo5KSBh3NSVIw5rlzK5CO60ypW8MvvyqAxywFnk
	 +Lc/Uh4khipQJnrV2K5htJ+1iey+dTrtt02OU3kXLBROuUnX0OW/n1OnhbFencf5A7
	 2f2LiDI6XvINIz7TiGSKGX2luRMa4GhzcafqTNW/XUvclwcKeefuDzuUnwE2BFn0vz
	 wY7dq/7umwAcZQib7AmBzQEZEtR+EQe2pchaekuw1OERBF8hIlBZtFalK7oWlXfFmn
	 g5LiwZoKoVeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D2DC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559283372.13461.995507924589708926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a617c472dfedd5a54ec86a15321c5a3df362ed16c04d1fffe5c015b9fa3ac3
Date: Sat, 01 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785592833
