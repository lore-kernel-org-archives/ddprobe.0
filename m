Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147563C2795
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924294; cv=none; b=TXIMyPvG2s0PFUcTJWxwXEadDnsuZQCKmLstVcL5OKo53eZBbK6/wQjGeKmr4GT8hs2LVskR040qYRgnyNyE0yogPWUH1RNrxbE5ZIymos4m/Id4Q/4tvuXPD4irx/6VowWooaoyInpMgo+GHF4xnuaIkdjhLWCe5Fg5AFEdRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924294; c=relaxed/simple;
	bh=IzkN2xlV4YPzFyL/hSXoOYRrVA/O+RJRftwEpst0KSk=;
	h=To:Subject:From:Message-Id:Date; b=ZiDHtM2oESUG06IE6t4NUnc9EjiAnVuporcxXOvebcD4h5ABDk29N+wXxDgSY2qk74dWosoTNQzgyXyU6O1gY2Z2hDuyjr2lHAD6vUz/8eMdF4nfcM9a80CvKCgZXYc9HZHzocNTDG/XsbxTKQT+rCevvpG6aps/P8Zh77rcOlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux5tD4UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux5tD4UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3059C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773924293;
	bh=IzkN2xlV4YPzFyL/hSXoOYRrVA/O+RJRftwEpst0KSk=;
	h=To:Subject:From:Date:From;
	b=ux5tD4UNsSjbagvtzi1aNvkvToTLQQlnWqAJ4a2uHkmW1bagkuhBgtEoLO0gUOMmx
	 L+lov8iMILayN+b4JxEWI+Evm9PuOPyfCHGavABwuNwenwTheolPwjJQq3iHMv2k8f
	 NMawCqV0BCaQpeo4E/GjC72IMBLvDtTSgfgF5HLRP/Dkwj3BvCTDta+F/Srn0Sa4I/
	 erJhKoeJKcg0+11a8aMUib1tOKhkaONqXn2XkOjZpeHtbAUi9i7x324fk6k2U8JDJT
	 p78OGF2e2O5KENHTw/yeLa/P20Lein1LDjhcXz8w6JvfnQoRZLUM9RTCRDnoU19GXU
	 K+mRDp+EIIbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B41090221
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392429358.23743.17245471827053101470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834fa136d951e55f384d6e54c5a7a348d6010d86b6d541a469a8d6f526e62409
Date: Thu, 19 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773924293
