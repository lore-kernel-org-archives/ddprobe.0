Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3796212C475
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735332354; cv=none; b=sD2XC5QUPDcNxvgX4qc0U8A4YODPo6uVxjK7FqG2kd6IXYnW2r/WNuw0Uy1c1LawzPsjmDEdiD5GQdBvHS8CaN+nkeH8hVcvjqa3CR6LZBs/n6bbhJFMBI8RZ1xnc37ng0dkNpDRG3enKL68PjcdWP2vRbLVAX6IrIgNIk1u3Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735332354; c=relaxed/simple;
	bh=4FtAA6rAKRaEm9IC59vjJTiUnfhiVSdcu0HjZuSTiSM=;
	h=To:Subject:From:Message-Id:Date; b=XsbHZLDtzWUAJ8YY2cj2EQSi9AQ7PjMPncetx6FnNrfqI/8HDTNdD2GBE9gIshxAW4jZPymeAn+wLJ4f1I+2oPmywTo7+00SDUQpzVAnzYMCyDfSVja7BL+/REty+dUQOpDhVHG1KHrU4PuSAnQSnURYbfYnPQG2WOsp2hqUaUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK6wWffr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK6wWffr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3196C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735332353;
	bh=4FtAA6rAKRaEm9IC59vjJTiUnfhiVSdcu0HjZuSTiSM=;
	h=To:Subject:From:Date:From;
	b=XK6wWffr/K2jn7M0kNMH8WUiOPOWPOi/joVjxCYhM9SrP3FcoWkf459/Gk4mZvsZy
	 lZr06KMNmJrWPAfLDFqXfNfoQoAkdlYucI2tjD2M1ExlwBTw108DoQ9gBqJLklvptv
	 Iewn2Um/iba/Fq3uOTxFzMJDBYJqHm4x+K3M8kuFTqWWtEm0j2PS9VbV5jLiWQpX8J
	 lOPgbARfvpUiZ9L4RE1hkDl25K/VRMAZQDDiL7oR2QcAy3nvSSL6t9bcUJC6wV0y8H
	 k1557t2U6VvZVQadm510MWpJj41GsSOIE5E6+Pz4IlUXAHer9KcE7sDOPdFoXP0hXw
	 njkY973oWpZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB0E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533235363.4693.7731179867569175401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb65f17d73f7dea886ae12c1e7f8ddf7ddbf566a71c9e986c340e86fce315b1
Date: Fri, 27 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735332353
