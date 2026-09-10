Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D812275B03
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789072834; cv=none; b=hwTLnLmcBFYzVUbhqoSsMGRwzv9gIB61tKX5vSzSwySZTyBv6Kus+XX6qAI9xpnLVFwgrqDNYsjdjb2xzYPh1zGEwVc/JAXjtFJodEQCLKvZ66YL6tir4FowAMN7q4WwzEK6AYdR2pUgs6WOH4gOussHPbvFUFBmTaCarG0TapE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789072834; c=relaxed/simple;
	bh=r4zNMqPDViSWnGl45Gpo9GG+0y7VZMczkIPE4a+emZk=;
	h=To:Subject:From:Message-Id:Date; b=dv2DYoUVzZN8QpPSppjKBn1qfmx7tILposQsYo/qk2mVDmRAPD7pB3AlupPj/KkGZ9eaommRNy4em3O9v/GB2L909xgdnSHL0bEbd7mc4QyZ5/FL/t5404zCa2NtzB/4DxZKCH03qxXln0mm6phgwL6IOH3rWUXusGFI16+rhdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFolqybV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFolqybV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D200DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789072833;
	bh=r4zNMqPDViSWnGl45Gpo9GG+0y7VZMczkIPE4a+emZk=;
	h=To:Subject:From:Date:From;
	b=RFolqybVs8EpHzk2N6EjZCV0uMB5z8d6Kp0hLfnc0WKoRjswlJhNvSOD2RqXuI9VN
	 eQFmG2CNCw6umdtpEKe6KGdX4S4JBIpPjrIFaDgxOxmnwMS2SBXTr11K4BUpGWRcNv
	 OS59LDBpIwA2KGboQohP5bN+yKgU2DlIS76PYPDkukdcyyDYxh9wCG199ZMTCdcSYg
	 zZu+e9yHyEs2QjI6yQ0wTlPXBkiEXq7PiYgDVoPWRbBLj1qQV/65H15qFUgUGFhqR7
	 YUvPgfDJVNNV9mUNzMg4UiXb7zn/DJVAvtsLZ/YAS3pt7Iq/ZkxSlBCH8iXUoAyKjR
	 CSvO6a76a/uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BEC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907283370.25603.9149210556811681454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa2b2ff366ed949502d80cb356eaea5680ffc8584beb79c1b68685063096f72
Date: Thu, 10 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789072833
