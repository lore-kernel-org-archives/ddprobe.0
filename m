Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150774A32
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773546894; cv=none; b=lEIUXFnSrSolihNXDVFm5+vPeaHuAqLBTTWNJG0tnDpPrHKQoWlERPANQ9EmlaitEnJyExARYvinrLuWFXZaOeMh/VkhhmhfZLaeGXaIXuNteekz+pTomR+DSGjlFhY892j9y6TJuE+eJMZ5YTAdaHllWati2rIx6SHy2dbwuj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773546894; c=relaxed/simple;
	bh=5pfORUPhZXLhPaaFfof1qYBnAUNDkUxq1JNct6YDdDs=;
	h=To:Subject:From:Message-Id:Date; b=OgaME5IUbd8qUz/3AmTJ7ojIYwvagRh0NYdot9qnUCG8UZCyxHiYx35AUYIME/fu6KbQHSRoHIwTqS0apm8vA5ghAT8cdnxU00m56S4y/Mn+0XWg7J5nTRgFeylqbRTI8GfOXizLbAEr3tg4lciEoKYxVgoHKa5Dw09+Vm1FbUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BylpNUHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BylpNUHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773546893;
	bh=5pfORUPhZXLhPaaFfof1qYBnAUNDkUxq1JNct6YDdDs=;
	h=To:Subject:From:Date:From;
	b=BylpNUHqpCiN20v3v9ci2nMgaV6oWLkYr2VRcv/sbOMNthD8cNA7k37rpoDe7whOG
	 ukfPGj3FxyECOlSQ5lz6XiKaNTYXO8IM4iBxnvzWNoqUjVd1StyN+YrBkCZ/7IGSSx
	 ycbgu4ltBeJ4qh9KHfaS9C43uaTb+iFv/8IXqs/6Nn2xpexSqkwxoyhrORI6lbx2Jh
	 cr5y/rfljD458jYOktttxXJsMqGxltk9Kytsx1dth9k/3L2wsMPpwvoim/Tw1NfSpS
	 qRn+eaoST3rtNN+DqNZ/fzJx5Ket9l3FXACW2Hojvvj44xj+E3CioO1G7ASi01BNN2
	 zvPucMyS5A5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B1D58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354689357.2895.3229521017399515923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f475887209c56854739012030a1906349b09f41212f9d5e84810728ffb2740f
Date: Sun, 15 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773546893
