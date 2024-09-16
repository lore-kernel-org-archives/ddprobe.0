Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1091413A89B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726484754; cv=none; b=FEYddXAWaeqqiql75OaA3wJ23hmGyxOIFwqBcYeYAmdoRJNeMfzJPw+fBtvGD9TrHdlPNPZ8koKLadaYVQXCZ3v0dZxt3AP2VdrGaVzxfg9oCohXf5oR4pO263iRxcEmzAq3JBrEwNsyQ2xwTynktcBdlkrgTXsZDBPhMwMhJtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726484754; c=relaxed/simple;
	bh=BX4lgx1L7jE3CHKQxNRwj6XjSsPpCAW9hLFibMZuNEI=;
	h=To:Subject:From:Message-Id:Date; b=cxoBYXNMB5fbP7XXcFPvPphCfdXoDMxi+bBEH4M7ngDlK7g8HTB+VO3THP9O5tnnsal17Z71aIO1lXIkDGNziOX1izkN7EW3zTztehRzZNsNXFDig+yqFjCUpX5tPt0iRhvVuipbwV0yDurOv0ESVIiLaqif6RawC0KxcDeTNRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgyWc4vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgyWc4vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FBC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726484753;
	bh=BX4lgx1L7jE3CHKQxNRwj6XjSsPpCAW9hLFibMZuNEI=;
	h=To:Subject:From:Date:From;
	b=YgyWc4vhHgByIpyfsa8zPQSlwMEE+1uMExJzr26NrTXaGMGlslP6BkJWbipRuQd7y
	 S+7IZTCNeL1c+haE4FPzoPAjLaXmpicdMgbyrh9W0a6jyMtECvbCUEe8iFku+U2f6d
	 sF/N/P8r3YF8YSeJp+QlPeqfZRhQDqu109+ulrVg73AJpDheHCwm1BLOaF5CuwrjI6
	 8BcFP7qBdvU1MFAeQ7QTO9Ao3NocnrSdjCeVvMZCK5YHqdDMikXYvxzQYIFRl5eM9E
	 naTdWa9yhwKgHT2CXaOeTKa7DUUkuKyN8S5FH0b4kdeC74jiT8RcBGuhjbd6/OF/GA
	 iO8WK42SZQbvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F814C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648475357.16509.766870320642140903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362b23bdf4fbdf8ec2e1b463688079df84d0de7d1e8ed8d7b4b897ad4db46ecc
Date: Mon, 16 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726484753
