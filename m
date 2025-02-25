Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4858419B5B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740503936; cv=none; b=gVIL50EC4J85T0g+0dmwFXFGWfia/qwaoZrDqpEEN1lQ9iRXUKdvvYEHg9xIIwmLkEBxP4IdkWOPS0WylWuXnbtbgv+PlvILXLrBWwAFlRxnhehC1FWUYL8FOpdy1+l++gbvOymFjkgq7CZd9AIIaI4+01VlRnOiyROFcktZR10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740503936; c=relaxed/simple;
	bh=ac+xT7RZEdobIsrGJA66K8etmyHxGXYD7f7FO/yeuqk=;
	h=To:Subject:From:Message-Id:Date; b=nl0ozTobFFir+evVFjcm6vriWRX621NN+/sdp/WMt2/XNBkf1StEANHRsaugVKnxdDjAkj62i+l/ABhVHjaeF269qOrtYoTsW5tPWhEIAuHRh1JTWLJZhYcpbBZiF6ltfNwrWwFx2Wqabmff0hvOqNRSla7WTJHaecT7ulkyiKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVq4kPRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVq4kPRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A2FC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740503933;
	bh=ac+xT7RZEdobIsrGJA66K8etmyHxGXYD7f7FO/yeuqk=;
	h=To:Subject:From:Date:From;
	b=QVq4kPRGnL3xZKjdT5DIYfkQSnB8kbZsQWYOi2vxyP8NW+DlXnO45OFCKbqKQTUeW
	 HQJxIde0/nlTJ76+3ikfaFXJB8Z1XaNuZhYKNGBcOkd7YBMbWHjSUHb19KNymclR4h
	 7sxa2GkuzQk6uost3nfmTRCwm5AhbXZu5ETPP5DyuGwh0J+x+dYrNx8FKmImv0Yqps
	 vZRXc/3zXt9Q2ySm2YnEAPlzP4Pr6myI2WVRQinswJ+XpcMJGNpY/ff1H3xA5WkpQ/
	 33wqCvCPltRFJHGGPCNM2T/aKngvmfTp6eshwMp1Zwh99529rC01nQ37QBbpCUf5+i
	 DFBFhlQYp6ZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AD3C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174050393363.4691.6292305404327562689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b59607836ca31a0fc2667bd97e7521c1ed6ca88cf61bf8a703a05e37a9428f
Date: Tue, 25 Feb 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740503933
