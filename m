Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4F01EFFA2
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746212994; cv=none; b=AalS8QT10ZGZE7zsd8KI48ThenOh8KA53UPa+IbeieLK8OtMj/tnTwBS/dJc1GDwg/u8yLlHcaOsHRGAeKXfMDAi8dKGBcQdv26vGeCkgOkKuq6OND37tcR3HE+NwcGFNDeoj4FVZ5+zRLFeTxNuvIH+g2W/SYxxFP8jK1XDQQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746212994; c=relaxed/simple;
	bh=LQeicjuKqwMZOPEoYDQKop3ZIT7keWG85U1CNJfMtkI=;
	h=To:Subject:From:Message-Id:Date; b=suFGLr4/yQhAHUNoAqC7X6UwAsBRVY3zjqtrYGB9h0LH2ekOS/613wWG7RPGO8l8YTD4f1jLMVHi8G9Tu4R+4aB3+prwBQPHCm+My7uRhGYRhnoQw8w6bNa8K2baOiVWl8SAEPpKZTvpsgK45U7TaRkyp0kI4uhKhaBnG87bAlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjGCOs7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjGCOs7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746212993;
	bh=LQeicjuKqwMZOPEoYDQKop3ZIT7keWG85U1CNJfMtkI=;
	h=To:Subject:From:Date:From;
	b=XjGCOs7claq7+WqhGIEnh5bgY39hljpN3/elToKtL6ujZy+VahID490xNdbaidXaq
	 GP3TMtDjo1S320RZVGSSqgHW8A2D99i/Uw0rVD7nJ8zLA6YQvOtCo7IXC9XIXfturG
	 dIsAfBLUiOhQtRmZVIiT/BQzOxM1XeGcJFpZNTpunWi2+bF0Fw/UNlZnwExhYz/hHe
	 5YgHqGv1TPepWTEpk4XpblfUuITFvV81ufWCqIf/Jxd0Vo7CCPzZXKZb9b5E4OlmcC
	 493fiipWU/5sfag8lGfaRQoshMoIb6dSFP2MFQNJ/QlhylktSvxbS9iHsOAFDy47xj
	 jX1TAWR6FFuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5EC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621299357.2764.11320384059794015838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f313f9a0c4589cdda2bedd03cd6b207a2a5f6031198f0ccd04844095b75684e9
Date: Fri, 02 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746212993
