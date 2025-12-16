Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5D2EFD91
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765929234; cv=none; b=oQ2j7uGtLEbEtSTEqI6FtwRz+4QpWZxfmu8L8kcysvUmq2kR0FLbO50VLz1xa0w96JFWJm0uUUrKnp0IbYQI+8iArryXQ2OTMnNViYu2tt4GxQ7xNgq5gXfZxUGDQZ5tFrLnBWpzX/bpXaNCU2uhFKeZvL6KPbSsW4OJa1K2hYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765929234; c=relaxed/simple;
	bh=vCRiwBjzyGiReRBOmOEOZUesNSf2ZiKT7/GpCxeGXD0=;
	h=To:Subject:From:Message-Id:Date; b=lIkAdZ0kE4TbiRafpEncJo+z6gI3RWKJAFb4S9PKxfzrDd+UXxj9CYfwF7SJRJXCZiJc7ILToUlH4GknLU84Gu2PSFYGlOeH3GZ0sxO5+99wNT2CEQS4MxATIJvEQbqXHePTo1kGhfKXmnF1Icx3zg9OnEHztsxttHwYAH2xvOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rh0j6Boq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rh0j6Boq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765929233;
	bh=vCRiwBjzyGiReRBOmOEOZUesNSf2ZiKT7/GpCxeGXD0=;
	h=To:Subject:From:Date:From;
	b=Rh0j6Boq44LZZVgJsRqwshnLeHlpMRaRbK/pKaTHq20aEDnsHm2u724Rn7WDw383R
	 neMf9unmgqLWQotpXy2lNYeRyNRgPUXXKaxpE6troi50jZWTLOFL8RjBHXSUAxny7i
	 WfSNtqsxap79CHm7geucRzjUV7qu4Fe5br9kNGYH9wYM1VKJj8iQ/W8YLSnpAed6K/
	 iRHvsugmALdJFDNWXzf1XmWuAuCJezk2jWZPJsrVpd6pz0N6gWT4a99FXmaXvVcwOU
	 rvoJWMndGvCNobBU5X4VGIa9DAVvPEdXIwoKBFR5q5xZg9KG1Z88EgutcBzypgudl6
	 eBE3P6h9AcpYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A413D637B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592923362.9239.6916988006121453071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e545f8559ab6765565e3fc31083d0705585a9311cf790ee8fe3f79bfc74539
Date: Tue, 16 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765929233
