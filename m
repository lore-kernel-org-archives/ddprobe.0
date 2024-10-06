Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EB71A716
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728231354; cv=none; b=H6yB27ZNpxj8XXvAI28WescZfBJPwAMgWjnY5ed9Tp+ds/TD5CEoFjL3XKOLUGa7r7JMymEwMOquLUk0mOQYBnVBF9bO3Ekj1UerN7TRJa7FH8Qt7NXmewFmoJefxYMy0+OI86/iXgB1SbeHj21cFoAi7odXO3VplYzRjM5yFMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728231354; c=relaxed/simple;
	bh=rML/modBY0vDxDdQtw/J9vnc1bC1cUcWAVcjrQQArbQ=;
	h=To:Subject:From:Message-Id:Date; b=OS+B455479iJzrZ8HTBDox/iVE+D6TdEy0bq6ShmDraVas27rUkw0PZVt/HeTgC7iCAlwYlZ+hWSc7bXlGJ0u78UapsShCz+mMoGcc3tIvUaz7GG3nxaEJlrRwxHLLw5zf0kw4hgLeYsBANs547K5Gux//GDRBKkFx9ksDt+m24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnn7Lhsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnn7Lhsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31AAC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728231353;
	bh=rML/modBY0vDxDdQtw/J9vnc1bC1cUcWAVcjrQQArbQ=;
	h=To:Subject:From:Date:From;
	b=nnn7Lhsbo/rbK8OLu1aeUF2oSJk4RKjJ0aegsTKbh4/7Keq6ClL0auIvMJYfv0wSq
	 3gzLpsgxtO87Lo+rQhEwCK8U/BnlFHx0je1CUDoCc+TnkohebHeztEUCSPV2kF/A14
	 gruXBwWwhYvldRPKVQ1XmS3Quy360fqjHILxFLcyIS3z6FYxZNguGrsgSL+bp4NPxd
	 ZzYrGrat7gZk/IfJHpZqTioONqUsTsbTSBNX86LlfBET0PnXwBRpl4Etiun1TkZ08v
	 AV1xUQ9wrmMAkC+3CB/p3Ki36AiNTOO5cHoHddeUa8VPBC3a8uVhqZp76udh7BOQay
	 ohJFVw/2wlA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98555CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823135359.14939.1905542495690326363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d786632abd9dbb1bb95dca031aa9d90ba19492d87d9440fe4c649b6268997e7c
Date: Sun, 06 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728231353
