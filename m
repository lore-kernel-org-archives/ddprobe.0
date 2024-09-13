Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C11446AF
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726250754; cv=none; b=fq46GsJnh4v/zh+D9MlUZ7mcwRs6NETptCCSxS9rF35iYMQz2KVFcgaZJJVPsCtVIyueNlQOkiwOMSil4e9XxoTOC/I9luS9JlYtB/xufdy8cJa2YZsbsW6pxpdrWmKeLT+if6Rv/7UMbPN/0D2qeavmFHuZyCsfd/BqqGzSq9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726250754; c=relaxed/simple;
	bh=75vlTkMNSTxGJ7pYJ8PHhWcixol/56w4VKWf+B9aafw=;
	h=To:Subject:From:Message-Id:Date; b=Oj4/qq8Rw8IfYWSTExsdwk+vKpNCr7WeCh9VFZt4gIyAZNDnmpf/3xt4OXLvHIeKNKbz8Ysov+7tN1fTW1/60MDCv3WgYGc5VFZa8bbxMg1ImLjTwXNSyKvvqanwenuXBoMjRzG3Gao6NGUjpCBwbR8cNMR6r7cxo/4PnPXK9+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R894eiyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R894eiyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE43BC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726250753;
	bh=75vlTkMNSTxGJ7pYJ8PHhWcixol/56w4VKWf+B9aafw=;
	h=To:Subject:From:Date:From;
	b=R894eiyCwx63f0ryrn5bdz+qaIWRblv3SJODcCebtvZHeAYws3r2Vsx/C6U/aeLvz
	 RKv5KAMs4sGAzKIvat1SxngBArWnZAPT9j2jxB7Knc7dYoiCplnMu/5jsq9a2aQ4wL
	 NVAnFOr1YVL0yE0MiYCpiIhyXO3Vw8Lr0qXOA/hN37yMx94jmBVgpDqNHT9ocIs6N6
	 4mwPrhi0keAez6rVKuGJ2VEjRR+Gy+haeERR6rHFzAoqwfv6bNV6X4OYKArIV4gAZl
	 dje9ZZCB73feW3SMvdvcyqJc038YT3QGJ0hnlyoAXiu6o0Mc2Q9HUs4m6rLpl9vUms
	 FF8o9q86mOkkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E531FC616C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625075363.10648.771963076176005602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389830b40afd4ff00b82df0c1b0187a28731a11d4aab1156d490133662f935a8
Date: Fri, 13 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726250753
