Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C453081D7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777808254; cv=none; b=KO0d5Q4sCPE0FiI5Idju70xguib5I8EzheLUWXXdplGH9wZVc0bFVeiO9bGkhpGUArVP2FN3J1fcFx2iHKOgXs9PheJXte9uxlnSLk6P2iFy8nv8VWePvDF/BQmItNXEIZrqB7SiwmRePAAFcRmo1XkKBzUpEFbd6l8jAcEEUW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777808254; c=relaxed/simple;
	bh=aLej9igTxRK62lceWHhRC24yi3DIiyPs9CpRS6BK9cg=;
	h=To:Subject:From:Message-Id:Date; b=KLps2mYGPVbR+wroiUdEiyB8aE8sdOovWtKuzsof17OwSfHg7+ELv+GF//wKsEkmFIE+/FjWGJYbLPS19Zk/Y70hVy3Gz9keYN4/d/K0zYgwnJnYLjV6u7F4ZCJ4sAOO6od4fGK6wRK98BEPwuQyXorEyx8CX1roRNtF5Udk43U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpJX/W70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpJX/W70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB35DC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777808253;
	bh=aLej9igTxRK62lceWHhRC24yi3DIiyPs9CpRS6BK9cg=;
	h=To:Subject:From:Date:From;
	b=hpJX/W70cVf5D9esdF71kznUumqalKLTDXuFvuKOBgD80YL2BPI4DTWwhMjHlk9Kh
	 HhIk1H+g+tThbaIAVm4gKw7RAtOILncUbOKimWcXfN+b5Yy47KyMM5+wHR0GZWgaCt
	 5PXsewZEV+tXvGgUnB4SCcujUF3nAZ6QAnyhz3QjlwI+HozXrpWNRGoLLOcjQYB74i
	 BD5QPhBfY5cjt8IAqYj62/OlNjDxtMbRAvms64JxHZv7Ut2XxWARP57XkEtSei0dEU
	 IyfXGvyAwfRdZ8SILrkr9NyIJj5Fm6YDIR/nfNFLfMT/nORPfid+EfO6SstCWUGrhb
	 HGJn1of5wvz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBACD342C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780825368.17161.15953471823409693512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498de78f16c41c765f1969a42c4959bc89f668609e66c42a8763f70af732c7cb
Date: Sun, 03 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777808253
