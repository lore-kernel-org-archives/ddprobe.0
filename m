Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398D421F08
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913634; cv=none; b=GRPX/rF/JiisVhG+rwdDh8cYo/XAjY3ixCJGbszwPmigzfTJrg5DjTNGvQHEpXJHlXl86F+hWIX6JPN3bSy4pKeKQ7WMv66+5GBPLeeX512CyNNAPBzTCqEIzJKLLmWBN69CxYvz8frJRWbz2TA++RNO//sYLcwaaIxwMIpH6UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913634; c=relaxed/simple;
	bh=kQKctOGDbg+oD38/U98VhTszcRz2mnaWCm9o6SuINvY=;
	h=To:Subject:From:Message-Id:Date; b=Tkpm9iWDtzbiT/ATX6GTWW3nRkBS2c3Qsp1t0ZP+t/phPZD7CkO9/zWr4CmOG6H+1VUB3muBompBQdzkQr+tPv2Z26QOpNbnEhUnSfcNB0uYp+fahc5umPh+IolcQ6/TeVq6QGqx6kYp3/q6rz8gLcXaPISBr5LhvmWgbTJ6s64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJDXck18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJDXck18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CA2C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768913633;
	bh=kQKctOGDbg+oD38/U98VhTszcRz2mnaWCm9o6SuINvY=;
	h=To:Subject:From:Date:From;
	b=ZJDXck18ePaaZLwgm071YlpBWQMC/jI8Raiz+8VUDKcySWnUF9mWvPvp8u5QifTwr
	 cXswrbMu98IXfvGwFJBPSSrxBetNSZtmuRnBXWoJqrzaPc2MUKGLZ6OU6VPpjb1zw0
	 +4VzFMNWNUZL0G6ODWnwwblTiBBtnKYK/UtlgnRt2/5zYrIxBhyCzGNOJsErrVi+wQ
	 q0S4zs3fpblbCA/yOlx4NqcKo9dqjOwHZRsZXV7I7tusu4V6quPHt2GQhR70uMssmj
	 FBwyv7s/PNs4okq3FvdX9DoSTkND2YKVAuPt0JOmrwvscNPPOcg2ZlLeIz4U5g1YTO
	 WOEEXB2z/Uo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E2D2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891363361.5084.2497882604761634196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f0d059d6816c08dc5788b4c62e5f3ef51e3e75e7296884cb7251a71307ab63
Date: Tue, 20 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768913633
