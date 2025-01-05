Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785415A864
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736097354; cv=none; b=Uh0S93yB4uKzZ3A9f4Nv7rBTI6PXt6aCBxDd2avNr5b3QsYoZ2exheqX7MYa3USQ2uE+hD/8OLXJKMqY+C2Ff2yWgp1naFi8eeTXKEInClpxKG/oudV9qLnktixGEHXAXsc1mc6JXeyEhcS3N5LbyL2+WKwCimLSMg80y8KrsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736097354; c=relaxed/simple;
	bh=GxeSU5PTDBofa9ma8eU/n8cU+OEPOxN9MbrvUFlzlFw=;
	h=To:Subject:From:Message-Id:Date; b=h/VRJWOIvNeRPrd/9/2P2L0RtVtmNiqelhIH2cp9x2TI2r+AAUfHrkua9YJBk8fSxOoBgcnpsDZQOXh7jrSkIpnRI1XiAZRp6ojLh67hlyNfcuVmURdu2OeAAjS/QfnNC3GK2EWNpGYe2dkSrxpxJjom3SQ1csNIaqCwR+1nsnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgBCR9rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgBCR9rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD227C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736097353;
	bh=GxeSU5PTDBofa9ma8eU/n8cU+OEPOxN9MbrvUFlzlFw=;
	h=To:Subject:From:Date:From;
	b=QgBCR9rnaWefTKXH82DAlkxqNGPX1fbIWB5fNQlc4rH6EmqXe3gpI2SB01E7V622D
	 TrkiEZ+bAwxMZbm4sVSicwzJX9zc1o6HACANJ86ISmVX5zi0aNaiwpVt8DAlBl15An
	 yj5NPoWE9PD5gkqBg7JbB8VtEVZmhCnUZWORwr+GG+4TYGUuTDrpTf08RF94IdvBYW
	 PmvhY5xUisE5sI8AXJ9LPngxFYMuSoyqvtK0rZCW1FhL/3PsWQwV9ZYuWdnUHUymb6
	 oVyLNXQMo37aM1HrtCx1ZvykBXRxwScQhAkUgOHLuYrQrahhVOWUeb/z4muO56Uxzu
	 Gz5yE9KVIIkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993BBE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609735358.27308.17172877553892917799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b9c24b4f61b5ba741556416f6604d30c072423006c5fc107bbc36889b4860e
Date: Sun, 05 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736097353
