Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193992C3242
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756372194; cv=none; b=o3tPrPTpbT8H7KKkDMAnLmtypJ5/OI2Bcn0RCYoWcRjUOuLHtSUSmbl7hzoRvW23LqAXMiAhoGaj7pjW+04Uf9wkR1uOjze0M+xDOJ2zLOeEjOqZIcVKf2d8MxW0kEDhkKOSJjwD1knidYlI5BOcue3T9hxQpvoeipSADcz4GUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756372194; c=relaxed/simple;
	bh=R0TSyE+R74mDgtItKSmW+pjwNbpuPXsBGkQRc+v8Oc4=;
	h=To:Subject:From:Message-Id:Date; b=f3ZIyKch8Bz8cKwZQ4tCwGmlnYDQqbMKp+XIAgRF0vLr9KZAHDw+2YbJVC3lIw5A+h4YojSI/PbGLELmdcuCccnbHMK1RCf5wglZ+cS/UAbSFjLjiFXf/F2RONg5kZEVgVdM5kwylw60Qnl5yG65NKlSa1VlDFh4JRCFFLTMrno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGBOFmnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGBOFmnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756372193;
	bh=R0TSyE+R74mDgtItKSmW+pjwNbpuPXsBGkQRc+v8Oc4=;
	h=To:Subject:From:Date:From;
	b=qGBOFmnCebjAo+nJPGHXRQp/Zp+BIq3+OntVFLDspqtJ2hETsd5/Mw+ToQ1XEsPLB
	 rZz91Z9OK7GiyJ4PS0q9TDI62gt+4OzHFev2NBYz54Mo0CuPnVIyhLIcjy2Pi8OvOE
	 cu0IgnASZsig/yf2v8mpy5wAGUJs6DHEqISQ/+mNjEVjjK1WVXoZ/OayCTx+N01s9p
	 V14nytWL0ubTtoCTy3QC7Ax8YK24moX8eI1yffqGkwe0viwqJknUXlrLlbgLSzfZoA
	 Trz7Z9taDkt3PMKlHAkDgmbWqaTnusBIRm6b/zJcO3AStqPJByU8z/i6zf6npTwKcN
	 6ITs1ol78+YSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F399C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637219357.28989.2081750744215127618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b6c4b8822e523c2ec9b33cdd5b272921ab08bb5c313b5bf17ffe15ba6c7072
Date: Thu, 28 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756372193
