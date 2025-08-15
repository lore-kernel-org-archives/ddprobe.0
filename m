Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F50426CE2F
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755263995; cv=none; b=hhORoaQQ3/Vg/VDXiFaBH00uuzQuge8yqNs68IYjOA5jhvmTBUZVBe5zbw8fqJ0ksmQ8cJBanhJtT4lrGDL9mQNu8gBqYA8z73HJj1FAMJhUsDhMSEVpF7D7yAgu4h4QnV/upnxezIAjGWDQZNsA6L+kGpXjXG8okWS9ipiCUBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755263995; c=relaxed/simple;
	bh=OAtfjl6mi0w/6/WPXvQr87HIDA0C6AaT72WDXHpZR/4=;
	h=To:Subject:From:Message-Id:Date; b=pJ9HERuGOY1++8V8SllMadJqU22+Q51vXqSzeQFp2LRUxXB7dtAb+2uewgqqHnwclUyCo0EYzO4/PsW5vl/8Gx/bumtiLF4LpXb98WfDeHYZntSa0ZCU3GStKs1zC13OQbeWoYJsSw9NGcWGkFjd3Xvaa9/TtArez5RboWjIq0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcOY+pwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcOY+pwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755263993;
	bh=OAtfjl6mi0w/6/WPXvQr87HIDA0C6AaT72WDXHpZR/4=;
	h=To:Subject:From:Date:From;
	b=JcOY+pwvYH3TGONWJdi9YmvLZqsChy4Y3T2QAPRuS3o/QcQ5lvmzd/5hfoCBOvAC2
	 YdAFVIoXdWKH8Xzx8fx4kUOupL1Ygr+WVLr+At0UxsiIu23/EbO0QZCKBflKUvc4oP
	 yM5txP1DsGGSpB2Bc17T8UHeCUcUg34WCmH4g8FRvxTmTEK+3lmS310fiXBOff9TWQ
	 mviniZiHqifaYwhk0VOiLRhz/U7A5GqZyrMSYaJuuusE3upas9Kb1tMC7OZydvpPCt
	 TR25d53O+0Hdmoq/t/bd+lV6mnGNRfRMBeTd85ICKPGuwV+R8sWNGQqJPpd6SwQOHJ
	 u3dOOEyvn757g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F69CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526399358.20200.14746404004016286721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9208318a44fd69e76ee603c0c55b056b69182443f1e445b40250c634e76aa5
Date: Fri, 15 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755263993
