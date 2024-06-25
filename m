Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4472F2572
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719312203; cv=none; b=oSOe5rO7DXUye1zA/JwTUfjt588ZEQiqkkw6s4VzPKxwyFeTteTpCfq6Ygd9Xzrw/KoPYVJINnNqOQ9xsD+Gd4TsiiWwpcj7s2EyEIfpi13/y4gzjduRn9s9rAKfLQoMlOeawek4B1MkNgBOVhvLH8EaoW/f0ZesG7dJLw0Y+1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719312203; c=relaxed/simple;
	bh=cMD9TLPl8lBtC080ss1adtM/Fg4WRcrHgyoYiJBYKjk=;
	h=To:Subject:From:Message-Id:Date; b=dIR08uZjeSNRNemaQ1xyfvpYbRtve/RoqL2FJLtnF9F8PIOwmxwPR1au+yI6sOKJ4j3D/Y5jnF0sNXQrfeMBqYZgQudjDsfaSUFIzeok48WsPC3acmmdfGG9/TTdgRJ3kX+3aAr+PDJhN8A8639V50hwhw9ckNBD+6dRphUrk3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=les7QcTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="les7QcTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE21C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719312202;
	bh=cMD9TLPl8lBtC080ss1adtM/Fg4WRcrHgyoYiJBYKjk=;
	h=To:Subject:From:Date:From;
	b=les7QcTiZ7ClVpDYhIbiJxAg3VLFoUCFEGQMyIVwrf/3TuMcx/OLQEbhfNuyX21hu
	 JnaiGsjlPXIW2N+1kgskrYthpePusLzNZPJAdk0LY6SUv4d8V8RVAX3UMYw0LPsmVB
	 5Ihp3FgJsHUsBb2KbmhkSd8fAiV2NJlv3RSRjHk3cqAnp8a8oBIwVJWv7juruIx6vI
	 k035o71jC7GpEPg0RopTSaz+6XJHUgukYQj/fC2+1LtIJDtbXaCrd2fc4Uesk+i7zb
	 x/NJUX49mLL4li5D1WI0a7AKjQyEyLg17uKFGtJexqhcywZ8JIkTtUi9vEfthAXaEz
	 kUHaRutlHoDHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE304C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931220277.23345.13351533085887094178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26a3b52d6dd6499cd28ebe643552b3ee7e8b57f390e4896ac7ca6b52e42c76a
Date: Tue, 25 Jun 2024 10:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719312202
