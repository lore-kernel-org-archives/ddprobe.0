Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C6E380
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717185263; cv=none; b=Bs7W1wPVbWCcRyVYbFO6rT3spYkFdOa0gyY3y60SyAUCTrjdMdlulKVfq3cN5eqKV60EL7Mo5STW/xb/WvGhRmYrJNUnTZymneGNKvFIkA4cHiFyxJzL0/5jBWL1J1zpYlXHjeo/5hHq9rtlBuHRqXsV9dk99wgcI3j2HWSPck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717185263; c=relaxed/simple;
	bh=pMJLvTodLJEoZB0dDVAoJQqz6NTkyTSHSFoKeNao9+8=;
	h=To:Subject:From:Message-Id:Date; b=M7hnOuzwJi1is4yXKUoJYcJQYfaE0tmieQj50zyodX/wLd7+56YpoytI3xqFRrxBUXfo1X4uKyWBq3jlwum9QizQIgu1I/u3aXXg7gQQBc2m/1s98KxAKyvOkjtc3nJ85KhNPHuDVZ8mNxVgA9oAXeUj4OwfKs8ylmJmL0VOq/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orGEjp7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orGEjp7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2683C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717185262;
	bh=pMJLvTodLJEoZB0dDVAoJQqz6NTkyTSHSFoKeNao9+8=;
	h=To:Subject:From:Date:From;
	b=orGEjp7TNFsMlHHeAitGReUC83RlkhY28cBv4XeK0HqNUQNbGr1OUEKlkm3cLJBGF
	 lk0bXrFc3cB4iwLHPUrScISpsBOgn19flrSggTWLkC9NUZg9WC1/1M/Ja2HrS3TVyr
	 ZbENi0BDWml6LSDYO6eaMJnYFpXRYXpGed0xGm01MTkR8xjan3cXuz8DC0aoFG/L/+
	 UzddUw1zl6wbWhcj9WpkpSKBZYImsAMiwuo3fsDwAGLSg6Mgh1gAjU6BQx2HNNsYsa
	 vQhAOlu7GQfcWT9uyyeQ1ko6BOd44SNLaTliOXbMAZGR6V4jA/0Nm6ptHg8A0RR9Lg
	 FsXJY+S+gndHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C148DC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718526278.23946.16909052287357045771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a653c4ab99a129753e7aba011ea603607ed0c9a478f94cc1846bc5c5f6bafb2c
Date: Fri, 31 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717185262
