Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC341CFA9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719693263; cv=none; b=rDdibYFgimfX3l9nfk+LVRaSVV+1U9555J/FOabXq/DjUYVKA02GeTZbKcyMAhV8yQ7fUXCUk1SNx6g14EfO4k/UThWOjv+EwZakNUqebxywqyCzZ3XVJbmgF4LSMDtihI8DlyCzVt0Tno0CCl8SKW8fZx+/3+ZUYYokWxCyyVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719693263; c=relaxed/simple;
	bh=wchbJaulCxm9SevFFPS3B7NeleFvg6z6VRYjrhzWHwM=;
	h=To:Subject:From:Message-Id:Date; b=bxnxqnW5R28klu7EEwPOcDfF8pi/QoNLW2PkDSnjvOUde3Nn/vhFNCozzlsgdFZ66uW891m5P/pa17Qc+hfvByfIe/cLFjJXlCEtLFJ0XxWtV6MIbFhPaOG3xyhce85yteXffE5WZteeMDK7mKWYNtDPe/05rGkxgn3Qi7pahtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK+3wmVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK+3wmVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4427C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719693262;
	bh=wchbJaulCxm9SevFFPS3B7NeleFvg6z6VRYjrhzWHwM=;
	h=To:Subject:From:Date:From;
	b=JK+3wmVQskwnqKh+ah62PnixKZMSxyH6W2tTVBIFI+orinwUo6wst61RpQadqz83D
	 Mb0RkR1akOV6hl+UnMGisgPWuDkjrVz0ELtg7Z5poWlbbUI+7A00+Iko/nyWxJzwmz
	 yycKYDYrshYoxHo2OiwMc126YuwmuNqM2PfBd1MXl0xIAVDnrgtmVATQsYrlCg+ZfJ
	 FQKXvB1zzSlhx41mRpg6tUVIKVpzAaB/SO3DB4lMWAh9O/LA2NRLaf/z+7UyB+bA6a
	 PtLnHcz3kBy+agLTlt5fj4zCWdXdvrAIqopVrOQ+T927PzrpdeiAWt+3vhQ0CloG8f
	 3taMO3A26Ahwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCEFC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969326275.17016.15528295077963502611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003e0a067b7be3312cb46bb3ada1764e81b21fb6cd3884c60000ef1dd972d38f
Date: Sat, 29 Jun 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719693262
