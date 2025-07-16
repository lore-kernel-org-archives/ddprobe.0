Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF0317D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752645594; cv=none; b=DJeCCkorBUcEg9BY2nei4v++8jYYweJni1YCGE5e7YmmDfLK2P4Vjpxlz+51ZFCPPbBSWp3qeTP+aEM7+aq1O/GF48Lo3EyVhXnNTpZbGaCiuxRmcpipfwWw89yurQc66KyHo4fdZVnSTHTir1ij48wZ2dpiHfv16ySRG4DCU2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752645594; c=relaxed/simple;
	bh=3SoHtDg0ogbOqJWcGp4+xI+oQpfEE3vbw1hy1dTtr7w=;
	h=To:Subject:From:Message-Id:Date; b=Hf8IBg6TCZP8J7IMafHtMfAcdNJVXQm/5Y1YPw8Uci25Ug+RIypsxIHeSNtDkVe/2vXgdgZxVEq5HdDzO8TWSAdU/S/PSOR8SAAQvU3Jvr+PFmXOKZuEXBL5276pBIF7fTCl8sEr/YIItDRoSO/2CDx8CGWM2Aukq5CDhowXiXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz1YhrJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz1YhrJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3017C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752645593;
	bh=3SoHtDg0ogbOqJWcGp4+xI+oQpfEE3vbw1hy1dTtr7w=;
	h=To:Subject:From:Date:From;
	b=gz1YhrJxrr4fHIfGJSJu/9rNpoLK6FjMYpFpMnjtYHV/PhBNtkjEb8Tgd38hJEdkw
	 bUFGhhXPppgxz640fJ8ybksye5tQj6eXmXrMiS9UharwczZo9rd0AXpQYVc6TXZH10
	 jAGIGWvqZv8EihoHwJpMVqu0ibiCOUCEFgmJiOJKtnsZMZdm+D/gMcg0E2JIqXn30m
	 NAyCSik+oBRu6NN+cwMGfeV/JwWthsU+VzuQQ1PTM96/JlZ3J5VVNJtL14cVyY+TcW
	 XKB4kZSGyPnq8hI6c31laF3JlrK0UMHILCGaQhVNZlYd+0aUIYfgtQWbidgk2C5AxW
	 vKqmSz80UCYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95522C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264559358.7126.9566228890920336238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a521a56ba16270cb800ffd6a3321f879b942066439482a091d0b98af7be14a
Date: Wed, 16 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752645593
