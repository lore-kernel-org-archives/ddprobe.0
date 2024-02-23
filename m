Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AC0125A7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708669697; cv=none; b=NcPrWP9bfCiKigz/X85BCL2ld/mUnbvSlZ1M8GDQGdAlxpn71jIklU3YhFuQel/Wsvjwrki3lNUaZiBtXMgHT3+94IH+vtMmh8PEoE86emEwrjmAyGVFQKgbd7E1i/lBlYpMAne8P+ZBR0uW+7EoOU3bINR02oHOhjxRIeNIr20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708669697; c=relaxed/simple;
	bh=+b4cNnhxv17/nu9elmiLi1/X7v0HYSeLYtQjRpY38XE=;
	h=To:Subject:From:Message-Id:Date; b=PHxqs4O2FOW3bw+9+s7CW2SiNXmGlgUMOGX4tXsv6L4trO/WfSZxaMQCdU3kVTwsN7YdZ/gvrAyPIoUJDlYHqrmxGkh3ENRCfvg4shdRKeW9Bo53WOt4yQqfUCbXOuvuuOK7jSQVvuf/8cigzMlecrw7Ul475NN5OnS+BDYbmBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP/gvhM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP/gvhM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF9CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708669696;
	bh=+b4cNnhxv17/nu9elmiLi1/X7v0HYSeLYtQjRpY38XE=;
	h=To:Subject:From:Date:From;
	b=MP/gvhM0Dfev24b5ZEsw+TANPzipi8g9nij8xWfmogloa84C65BuOUIYRzyQ6KKd8
	 D9ojVVbtWwbUjzmLlvShepQckgBH/0Qvbm+m8zQr47iqF1brQ0NgSYWdG4jH6uk5t/
	 xBoFvdy34CF+1cJsP+oW0C3OmD84aNI+tahB6LDKJRxPhvUquZMeqtbyn+wt2+wQYl
	 jL2gLugmdxFj4mq5mSp/JJiLdUkUIBuu1fpAiGIswwEqxvVY7iwofDmwiZRQV3rEz4
	 pl7u3eglOAQ6ZQmW1Wtyjk1MaKzkG0zYe0N22vvlKxx+P81sbJxxwK2dO9KZpfP2eX
	 wWbC77TLXSRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E945C48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170866969637.7344.12802060569816376547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6529a346dae496b185b6bf23de7b367a5f8cd1061f19b57fc25ba731b058753
Date: Fri, 23 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708669696
