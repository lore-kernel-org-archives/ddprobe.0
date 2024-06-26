Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DB614885C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719444803; cv=none; b=C/PW62sXnC1A3YVhZCmj4DpZ8KPHWfHznBtyp8EU9omeVpO/4QfVXNV71JQkXIgwesboQyR8HBskVpv6niVio2P0pKPrA2VxLK2M7aMwFUr1JL0yVyNR595wTzYWWbPUsv/KRiOsDIxlayX8C7Qx+3gBNQs+sg1luhevLhjFGUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719444803; c=relaxed/simple;
	bh=GDGC63Gl+YwoMA8GznYDqPXmhnA/0VYLwAF5udMpslY=;
	h=To:Subject:From:Message-Id:Date; b=D7cmCI2/nbzsbD2fxiffAQmRmUB4UOAZZ9dP/iQIbTDAJ1+zwLaUNiTXznBqPbnKNTHQmikPoL081kBu3cScrIf7tUskE8ZC6gmr4GwbpS0JFzxfGtCYoYRLw6oXWtjXcYNC90so2NL0ShaLRDOqA6/SbwCsqRQ6CX3QExf9D78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMVBxiva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMVBxiva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02985C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719444803;
	bh=GDGC63Gl+YwoMA8GznYDqPXmhnA/0VYLwAF5udMpslY=;
	h=To:Subject:From:Date:From;
	b=oMVBxiva0HjN+C3sZkd2FXPuT2kBAgxK8rPnEllf7EVlwwPlwJ/NFH6EKwFD5yRNa
	 xqzmyLRvMWXuzxvSjHjzN8LjoD4sgdepVabvHebVs1YrcIe9JoGSb0SdhkVHm17dFk
	 uB70BVKMoP1P1utcLIIF5HWWsZmURpimVQbQd24wmCJ2ImAW9DAGNnYV2p2jPM9aSA
	 HL/7IJVTcNNwergxoAYtjDuYhYIZ0rKEfPZ45Db3igPdz0JboIFO6xcPYH6Nl1sxXb
	 YfWauf76rMOubr5fi+jO/2/y/Sk2FhUnKix7o3RkBWa0DT55DWTZ1PBHzdOhaFDSI9
	 WCgr64HRgjN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC80C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944480284.4490.15688817536892433021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57c09adffe1db5bc1f3bff06014b79a842e6e457c0a8d205b17a9ea9e4396c1
Date: Wed, 26 Jun 2024 23:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719444802
