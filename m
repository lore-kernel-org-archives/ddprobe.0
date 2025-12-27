Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A6BC8CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766862834; cv=none; b=A+CY67EeEwZQrNMona13GAtO2Kqs+MJ59KyFQ61Yw9hOC5BQYajuf05E6UGuoOyMfq3W6qepobmKZSfz5VwaAoyqFF5/86S3BIlAMF5bQAnymbjjePVVP8fNsUfdUQKSJhpMFbXeDmCJuAD+MVDcmGcjRoL+rQVgEO0tE7n9ZU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766862834; c=relaxed/simple;
	bh=0M7nzbOvRAd5sjReAjKHg94d1X2iFtzXRAXTOR2N2yA=;
	h=To:Subject:From:Message-Id:Date; b=sJynTUGll/UXXXJWHqC+e4oPBeEL6KSrf0Eo6gWH7/D+NUd3jEVIRVt9L3uSe/JcKK6j4OMfoJZojTnZFm+B5dbWAB9GYJiWGmvzbopFwepyWtDysG0+iW8h8DpVzqcXP4kHMBXwXhyTAvVNDH/72SJMkFJfn+A1kwBuoInDK0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5gyS02x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5gyS02x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC253C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766862833;
	bh=0M7nzbOvRAd5sjReAjKHg94d1X2iFtzXRAXTOR2N2yA=;
	h=To:Subject:From:Date:From;
	b=q5gyS02x2ny92+DsjLnPnAKaiEbgNHrEKGEAUsvt91xh2aK1+43SZGx8K2/8lOhX3
	 3YfKL+S+PDQsUWDIJzei93jER1ZwY0hM83IhFRhjJcQ/L6pgbXpb2fCsCpIDh9LsZi
	 ooRcQ9+CT9TwY/a7Oqn2AYgRZKZMcC35nVJSiqtTqEzvwhHukDjWuxTd+5vVCFdZ4U
	 sWstn4xlBP8xaCplPxhOXXUQQLzvujjEPs2oe6HyId+8F43t+nBy4JxLgGLR5ci1It
	 bHxKO0lpVf9IvMlMQP2mkgk1n+DXYFP1GGzFIGFyJOuKPkLuZMSJ75iiDBaOZQTtyp
	 /VazlLeL6QveQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970ACE92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686283359.3514.10080520577879736634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e747fcdb68c1247b4c7430c1e209f76fe2e22c5acb5cff8c958fa358e0edaf
Date: Sat, 27 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766862833
