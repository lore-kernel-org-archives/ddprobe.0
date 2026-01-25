Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452C26E6F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769337834; cv=none; b=K2OhRj5uOAqSt08Gy2JyFOCiqHZjPnW4noSd1IexW1q15Tp3COFmggK2LuK7rDljs0SLwERGNBBj4APw/TpQ3H7uh12A05q08p9KLNiHJ3u+OLiaLm9JcWooYXaUnTotEIH0VHQlPwE4SX4AmlkfkDzWrgA8HTA6qAAzVZPjDH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769337834; c=relaxed/simple;
	bh=hegf4go5NEyhr4xnCcllfcBh1hi/s07p9ePi46o7TI0=;
	h=To:Subject:From:Message-Id:Date; b=kOZOxRl9rzmNnArhjIclX85126HM+k8z7B+6vBtZ6xX5vuPoq2qdTDyDFhylrUsxR1lZ2tsnpsCY4XaWWmFqINb2XEJxoGRfJOZbbQ1p9cipCpiifp1UVoZOlBTYryp82b0V3iQOvYbAUwseFWWlBHfI6NsEQlDCdJ0sazOd3Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iolyo7Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iolyo7Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F33C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769337833;
	bh=hegf4go5NEyhr4xnCcllfcBh1hi/s07p9ePi46o7TI0=;
	h=To:Subject:From:Date:From;
	b=iolyo7IeuWBR2HmbGuEqjkbSYLqC80TwiIlJbOhHFcaubEdLsgMvRCQNNr+jLlOZH
	 LlpGyvTtXam05fBeN513b7JQMjrz5WG/3tIVvG9QslVM4tm/XYm9o2XxQ1wbwhNrpR
	 ALsMC28ZRD+Gwb70f+fqLV2x5DvsIfA+RsCIe/dYQsQtZUgZZCTz7BOEEWQvl0F4H7
	 VO+FnYy2nYUAUs+eUALiCPPQf/uc3gvortpU/PfHCnjEiy95ItQ+CeNKeYPn0DTmKS
	 8/3GsviQZuuDM26v0BZwNJaibu2S1F5rIItqNENlHwG8nXPRLZPAyZz21ENvjiF6bF
	 W4rBJxbxmOvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91283E63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933783358.11589.18417184896914592893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322fcb0403089f3fb9b407e2ac407538688041ffc3759eaa8bd1b4d8d7c0bca
Date: Sun, 25 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769337833
