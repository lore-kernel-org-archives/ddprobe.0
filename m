Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111DC338906
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771455294; cv=none; b=C5Vr6lEqvrqsj+6fcCiLeR39cADyJVhPCxQ7gA06foQCOrVN3VvGTI8+70VGmO5Ou7jResC8Xx7/sL5OxtvVSKbGeNiEYyG2l2wvX6tImSzEbrsX3gShLxMAW2poBg6vgCL3OBgxPCGgIbpSELiPP4ow9oqKQnxocLxLCqpF+CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771455294; c=relaxed/simple;
	bh=LA8GtrWkymTBE98nN0+SwkvGPT9jmNinfmm3bjp95kY=;
	h=To:Subject:From:Message-Id:Date; b=gIfpYGh7HOAgE7i4wSxBX5WLbgz3hljKuTgwsVFg8iXi1Q6G0Q7B4C6YmGj09G3Xt1COJCpInZAgvl3fCUplBQVNl+FrtBHX2k654UHSLL5cVWj37n+kUP8Cqj6aSt/dzGwhFCgRIz4EOf6FSEMNr3NtGIiY5I0ZusMufrqCQSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cN1zg1+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cN1zg1+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EDCC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771455293;
	bh=LA8GtrWkymTBE98nN0+SwkvGPT9jmNinfmm3bjp95kY=;
	h=To:Subject:From:Date:From;
	b=cN1zg1+0LD/HIHS6LBdBbUEamYLolNJk3UqOXpXpKOBXM6bL5wtrB+ZvvvhU43wbE
	 kPyrT0/64zXERozYQIogrMHfXTMr8fdPpB+YCOwp+nHkzFVOUYteIgNMK3m6+/nsuc
	 E4k43RORGZ/RUY5foYKWAUR14Y4kQRG18+L0lsXQVZb7SUZDYMlqBk5WDYWjHVJHCF
	 YEeKOaMtVTzbNNtSO67MypEf+2FzKCbzxWMDMyxo3aEmq1Hv/CB9kgg1Lkr7f1pK92
	 eYWkCNHq2JTMZ5551/j4YofiCBjSG9+u/VGnpgbCVDsmL3kZu4/3soDauXxAYReR5q
	 FB/YhwwPW6CKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCEE9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145529359.1828.6159803885264768379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4986eadafc3f6b77a6a02093aa5b4bb4ce68b206db1c4fad8f008c46158644ae
Date: Wed, 18 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771455293
