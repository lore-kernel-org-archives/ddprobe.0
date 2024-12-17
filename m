Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3206A4C74
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734397554; cv=none; b=DlazdBC2j3W0jLyDaqbagxoSVW8RUWzLv0nLhjce1P3yiTxetcka6BwD+Ds0925X5DtsWKjE+pCvrxii9W4ZEYpGRv2JfQb8cAhTx9Yg4LjyPlh9dWlnkE/h9lQ9IHjCT6lBjsVKCTHvAQ1F9g4M4GjX/KTXueTpI75aa6sIaOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734397554; c=relaxed/simple;
	bh=79TmXOYiJviWMWaPkZcnpy7WsSvlnDt17p2XTauawRg=;
	h=To:Subject:From:Message-Id:Date; b=OpphGSVpaBJgrj79RTgy65AIIHwD6djjkKeimPWCHVZi245lvHhfWEj6JO01w/IcgYqMpqCwdqOEC2vTcoo/rX76G2LEWavP8dpKQqxCVkb4nTUVfrfiKMLlnWnW0VY7ehVNB6FzOG9GsU+Ue8yVPMC8vLEf/XLuhWG3BZn790E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6oiSmKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6oiSmKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF856C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734397553;
	bh=79TmXOYiJviWMWaPkZcnpy7WsSvlnDt17p2XTauawRg=;
	h=To:Subject:From:Date:From;
	b=N6oiSmKBFVO85Mw4I0zVA8et4ZfOcI5NN6SXmPJr37Th2wlhqY8z/nRmnz+7v2By9
	 wp9C9Tlqqnof1V6NrnSRzFrdB7sCex6hmt5+l7kcumj2NLs78DLSG99chJ8IsrKsj4
	 3Hwx+GpCSUjDQR5XeIP9IFUD3r5/fMvxaogQWp81wgXGtrOLKtJOpneoZgUtiD1Nfg
	 YI9BS2sJBHvGRdtlOzFL+fxjsuYXoMiW2VEqXadBh2y88vx9wWhGYDmen+yHlQTJVf
	 c3rYbSIVI0Qz81Ubx8Et9A0GYiZywBHQrlx5n1ALxfZuNDksiHWIU/8ehvxAzUbIW9
	 tQSuMqPd4sitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AE8E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439755362.6940.18211090435397183215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb65de461d3115bea30ca6fa32f8cdbe0b7b117fcd1a5af96deb31d91abf7ec
Date: Tue, 17 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734397553
