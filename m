Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342FA4C7E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723397154; cv=none; b=SOUm7NG9Cpx1OqmgXicIOUxNqS8mAlEbhiaCYWNOAoQtmkFeRvkH4eYl9UbQi13FYibJ0fbuMdXgCWJVQAgUJjG8t9X0tHaPKS1GtlSxBD1/yvwSafAQCwltVwpQfWdXmaMV1rO8gVJkDRv12V/lnHgew5ohjlwxdIa5TVcvL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723397154; c=relaxed/simple;
	bh=Hu1Sm0WXNLrdXSYMDj7+/eh0squEBojhuPCBPP+x6ck=;
	h=To:Subject:From:Message-Id:Date; b=VNZNaFTA2/1cRSV5HGBzRqV4oAaCyDn/ACBjLN43WYIjoSlVx9p9ZNXb/IEM32P7EaWfds+x2S/GEvSacnilT9ZtpsNM97VeneaknAtDK5HJ8LW12u11wxyMeOGulsJ0c/5W7qTvxWcX5kHPI+OPMAdmbizLkZLSib+Rz4/tyxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m76VkMIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m76VkMIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952CC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723397153;
	bh=Hu1Sm0WXNLrdXSYMDj7+/eh0squEBojhuPCBPP+x6ck=;
	h=To:Subject:From:Date:From;
	b=m76VkMIP/AhQ0UOLKScC/dWtFROY3pnY6m3ojIQ2cledqnI6eeM0qFDujrzPGUS+G
	 5mP6/JlBKlhe+kMJ6hL4hyJyH6TGU3pjuwsN6YBU8QUnHOD5jDNGu9Tbl/4YfAbxe4
	 umrBBaSiAdSgTzdns1lxuLsFLDIExu5Hi3jSK9EpVO7EHrmhWfIAqYCoDXnIDR8HLc
	 QBefajNDETs2MYYcYl5U3dfSWo9P+zLW4J8kfIypHXUE9Pqfk2r0P2serUg/EcfA9n
	 9tQxIkfsWrVO9kz74upfxrkKGXUgp1BJjR/IMwUirVCSf49p7pWvpSKg6x9UgNDvoS
	 kmzYh0Z4xxqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BBBC52D7B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172339715360.30225.9854891344156214494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7822e71cc8f2a3f3422ac0f6b6cc17950cabf402e3d34452b579cdc9bbf31c0d
Date: Sun, 11 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723397153
