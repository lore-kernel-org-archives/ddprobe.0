Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267F73FBA7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770871494; cv=none; b=sMoOntAzazwQg9V5EcIzp460kFdE6OQDam5jJu37dzQCOIZbmBuAKF+wdwmNRuwffjJDOESxuc3QQu3fh0MaItEUgKgbKbDd/BZIH9BTPQGgJ6vt2MfmoQekWLTS3w/VPGfVeiZ1g+LigTNfZ/OFDct9YZVsRv/Wh9eR6MYSvww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770871494; c=relaxed/simple;
	bh=mQ8PcPu67MIyY/1khvZsU4Qlfn9ww1hvcFeFYNmlzsM=;
	h=To:Subject:From:Message-Id:Date; b=lz78HQ5eCUWD09tCtOSZNOsJhDQW7cXdPXadULDeqQKaBJ72sE83IqhCbWC+7mg7bJJe4W9fwaqxQU/bOb8Dwt6qnEhSEfIRSeUzEdIucrDx4pT0GtxAfx4U77J+XfOvVJktvbKMhEZu6XOLR/tytxUNkcvoqbAcnNXA8MpjdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzOkk8i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzOkk8i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6497C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770871493;
	bh=mQ8PcPu67MIyY/1khvZsU4Qlfn9ww1hvcFeFYNmlzsM=;
	h=To:Subject:From:Date:From;
	b=ZzOkk8i3EwemjuzXVlv51JSPQbhiHpn+uGIAA3MxVfiSu6O0CfpTYoPX9FwQtMb8X
	 Suf38h+dDnsIZxpdaVX3ho0FHkD/hR25+UZk/r4YcS3aXAhoPEEOONQiGMN7/gjdpU
	 AM0jhgAU0a+jiq/eX8k6mwjDL6xLzDNct6/27b8SEjlre2wiurbV4CdbGTS8f2Cg92
	 6BKsLNzs+7lqY8uCOCBaUlAvZ6laIPLurGoGrNccWNYsEgOjkRgGpaicWELNZyyMaK
	 iQciq+2dsvYYSFW7WNPZw6DJj5HeTiU35hQ33EY5iPxXoxPb/51bc/UZ6PkXDVYbQO
	 SDgauL8mGc9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B277BEDF031
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087149367.16134.9579144788424184099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6382d54c2e1c9a83ab83ccb39b8629eb8818eadd2df3b1aac46b86b7bc6965a3
Date: Thu, 12 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770871493
