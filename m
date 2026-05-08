Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEFF35836E
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778222254; cv=none; b=JwR46qqtbRF+I0u30pDjaQDoZY1ELizNX8m95HpQ8l3fE07xo7GrkRxRckzKPzZRI9tC8MFb0tXMfYvAtO65iq7D38Z6zaNyJZsaWHkti/zPrQrWn8Ku5Bn3d0TrQZ2+lKFzBoKrnuU2jy8pkohdW7wvey5sbNkcL5Cnd31eOKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778222254; c=relaxed/simple;
	bh=gkTXcfCkWYftO0ueEZ3y+9oTHxhS6FIanwqkGycS2tA=;
	h=To:Subject:From:Message-Id:Date; b=VTITvGjwaw8HMlUUXxR//FGEsZRvvc/ruaNq+6Kc8DtfufK3ibN3YYhvubXx225tsDXNF8ePxIif6CJ63Xk4Zji/p448TjxEamQHz8pM+i9R6/Snb1e+C8DdF0JjTsVMxA9SZQ5ynyLCQfyfQCGe8D6aVAbJC4FeFNQ8eMP7AFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fd7xO7hY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fd7xO7hY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BF7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778222253;
	bh=gkTXcfCkWYftO0ueEZ3y+9oTHxhS6FIanwqkGycS2tA=;
	h=To:Subject:From:Date:From;
	b=fd7xO7hYd3Vvp7KWxATBctNBufvfK9UUJJz7zBx4/LO+ZeeFxfX+krkENGSAf2z4z
	 LT8ifbpW8fPIIkQVE6Htx5j5aeZZW38hPP1ayJRVahT8DrgJ+IbZYwKLANHcjYQKqR
	 2kcCl5ppSL4gA59LGQXDZ4GvxIaDoON/5zRfaZ6eqysUqeIHj5Wif5XTCfBI1ol/Tl
	 9gg9Pfc3IsCcpwHdQ3BE8CWsj+tkYRXffRgyvEDqdXyZo84CZdvZxTKpUQc9oaigKe
	 eqZMO3yJ7wTkZVaI1scjVZHrgEzBWxXEQZ8wIiUaUpmB9yCwE7oHsPirsEz3yB/F1e
	 Cxx+jiEyNizlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EB8CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822225372.885.16677470041142003963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0ad405a131bcfa991291ab118bb799977ef1f61d5832cd9a35cc91f71b55d1
Date: Fri, 08 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778222253
