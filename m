Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2873A26B2CE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778035054; cv=none; b=aPbny+WRsLv8Rt94+zffSmT3Um793CGG7XPuIILEKkxLzYZ5zFsWDCyjdNrLvifhJiBJnWdKRyRQT23hMlZbLELRfGBJVi7JM0CtFKQ47ZOTzyZvfmVXNOrso40e+fM5xvfBt2cRYaz/uN9TwMupZdS7JAZRCU5qsiiABPcHiXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778035054; c=relaxed/simple;
	bh=eRy0Ip1E+NKVBHcyBcU8C0vi1xfWIQZdlctpranW0nw=;
	h=To:Subject:From:Message-Id:Date; b=H7OhGZZFesuNl+OswbnTQkmpGjN7lZGdltDRtHjA9WGyJqSsBsPyT//1C9ll46LyercJDd0LD7VuOZry168RBPQKh8FI2uT+CkNB5tHR8dKf49HREuIXsz5KEw8JWwd7BS1aHe33cEVn1gh5fXt6pAxD/VdRl77kZ+r/aBJENmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQJX4lYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQJX4lYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9597C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778035053;
	bh=eRy0Ip1E+NKVBHcyBcU8C0vi1xfWIQZdlctpranW0nw=;
	h=To:Subject:From:Date:From;
	b=LQJX4lYpYy71l8dPy3fTpnbHdXZOdF1JLD60/lU+jBwrkbR2r2FtqvThdPuLUdcTK
	 rh5njvU3Y3tEwhbA8EdSidkzS/VsAnYD7WqtmmnocHGlO5oGK4vZInqz1rsZdFA+lO
	 dk3Q92S28RsMrjj0O8V8Ji21mtYj6znfnErKVx4sCt2fCiA6PeAwCH3Kibh77TMa1E
	 ct3pCMFYchHxt5rEuTH+XsDSi+iqbiwt/L+48he30S2IzzOtC+hAOn0wq5e/oLI5MF
	 HHQEgjd81P/IoowWFHzUu0fwisL3O2qKrwSKomovt7rg0r2WwfK2R4wxeRqbzVaE7m
	 BdMm7HZrU97lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3ABCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803505368.29434.10301857401820679134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa9de52fd2e56af70a589122613ec4895bf85a4e5e48a6212d05512352d0055
Date: Wed, 06 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778035053
