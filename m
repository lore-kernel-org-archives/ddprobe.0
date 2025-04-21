Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350F32F37
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745270995; cv=none; b=uJaGDKsOVKhS4f0porMFLzSW4iE1iqujZig7UwO/yAvLbZmAcLScT6fpAblDiBdlk884AmbodIO4ErBRz0LigKfUTIjPeCIE6dr0WkF9CWo4eobXjslDjA2UyOkZeGPZZHlhh90yXIvjViOxyEfghU3dEVACSyATs3uNPH7pooo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745270995; c=relaxed/simple;
	bh=AdiJ/ssnK/SJavetQmvvnDF7lP1O3NUhE/F1VL2nbZ4=;
	h=To:Subject:From:Message-Id:Date; b=KuSQ7WPGCbxJqfK3E8R7OCYuJ6BG9XWeceV4WaWUYukUeWHd3gAlSkTmyHa3IvqfnBMvrTqvGKXwkGuwIdAKfDEgnolqHF6zNTSLs+/pOpyg3C/4450X5o4PlQUKH4gPxNs5xYRv71MjklzFbAIbxt1zUZu3naePN7U22Ee6DwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN3mfYH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN3mfYH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745270993;
	bh=AdiJ/ssnK/SJavetQmvvnDF7lP1O3NUhE/F1VL2nbZ4=;
	h=To:Subject:From:Date:From;
	b=LN3mfYH9DChRG3cQ901Yvn7nQNjwQJeGF5iH7l6iw/3Bxm0HnoWYoV3RHeuYIpasj
	 4l5ZMju9fijriM0GRTbrckrhFd8yeNGH9gBXyNR5yR+E2/bJI6ekrZ8jWgh1RtwLY0
	 dVy1HCWI0NZpIg4rK61yyh19rvYAVaaBvvAGUtTztxVCBIBTylXF5h63XLcH4nQM+k
	 ZKhxJkvWW8lQ7b+72m+bQR3vBCoZEOttfsKg3iBRXaM2YiGuujFelUX+E4beUzE4Vg
	 n1m1/GatJ0RFU7+UZ0b6XHbgWdHfrCWMvSMyULwwy750Ozr4dWa3sdAi3uvpSlo7eU
	 is5MDD3f1Nw4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD6C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527099358.19072.9215368418695971339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e348837c7f7132f37c2509eee17deca86cb0204eb32ee3ed2f071a1a0032aff
Date: Mon, 21 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745270993
