Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0431E9B1C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747117794; cv=none; b=NAjsTme6IIXB7JV1sQ5dPjUV68wFl6N5OSpV5vde4g7tbdWfkTohoe+UF9d8DfAtdF6Bww7cxvGeR0WsSnflZ6auWGXnmb4lStHUBawD+ikPuPi+s70rORkjDZxeOAaoL0RUTD8ozJCuZNlK+3lnUOwQosmau6KyT6ubuhBL1Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747117794; c=relaxed/simple;
	bh=b+u+7KM1rgxRkH3s7LphLiXlyITC0FOqXqUJ6gwMu+k=;
	h=To:Subject:From:Message-Id:Date; b=sRl8fLoqzgOpOSAU19aPJsaUxooWZzbQJ/FDP6IMumY41zdtGBn/ddJoq+Sd5mSewrV3VJ6W0+YJApHcVnLdU41mRPxRbJXbnZZaKQ7FWTh9P4UEiRgCFP4BS+BVSYgF2bHTbv3S90Ns+CwqobTH4R2DU1JU7CFiQsGcL954YvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXqttBUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXqttBUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A835C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747117793;
	bh=b+u+7KM1rgxRkH3s7LphLiXlyITC0FOqXqUJ6gwMu+k=;
	h=To:Subject:From:Date:From;
	b=EXqttBUWndVVYjpfLQWpVqXMr+3R6WxgP3Eazorf/cz3qxh6QmxjgjxUeci9uYKIc
	 /unZsaYu3Zxw3XEjC6BOcq6R5y250aqyOL2+SImQIvK2YqtN7k336V2lwbunjrD7mE
	 Mw2J+wAaQE5qyhC71l3f0CtzQdDuytoSRTSYUEPNrmbienaKBoaErWNkMIonVCIaHr
	 h5wFRdZGM9znhfBtBTRQOgCdbL2eMTmhnwri0g536AyXok3vqvm3KtK4D8XFrsyOZ/
	 JrbHykahfxstrJSDZKvcBG6OUxuuKtZsgHKDxoRC66lSYDGiu01b46ZWUJZ/1v03q8
	 UM1W/9I43OWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E899C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711779357.32082.4411484834959069086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e0879ca12d94e34bf606c469649a0370973ff42c65f384d20be494b2b8e6e6
Date: Tue, 13 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747117793
