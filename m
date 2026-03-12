Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A9E30E857
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773319494; cv=none; b=pUIHTbe+XWiWAkwL8cThL05JuescDZ9+1TWqXMv8tc9j87hm2/+Vl7bvH6/oDMDh+UMONj26UbZBWvulN6byekZ+syxQnlu6Q8y02uJ6ukB+v4mvK09+uEvAueSiMxXiJBr+Z1nltXPyN7NNMnIJSz/diNSEeJWRREk+27JLwRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773319494; c=relaxed/simple;
	bh=JjcMd9hKc52OxGHRBDhIZ0mop6YwlFPTY4OnmFAg1Rw=;
	h=To:Subject:From:Message-Id:Date; b=tqrihcPbLEJG6iO2uxAwQPPsALY5ka2UryofGVLYxsTAiEgxUKwGJsMV+Xt2mpsBx3ZTz0Azmz70w/JzvHWKLR9x5uSXxBfT32L7GXaa5iwaJ2tswjCCjpvsOuf0Ex1lHfxjnzgy3ZOrJopyA7+TyQRzvVWZGl/4DMyQcBnK9MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Npbzite0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Npbzite0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF03C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773319493;
	bh=JjcMd9hKc52OxGHRBDhIZ0mop6YwlFPTY4OnmFAg1Rw=;
	h=To:Subject:From:Date:From;
	b=Npbzite0GyGmZGfVZUZ9a20mz/oNHCce7NNFfieY9uGtlcXqIej2nLIQvt+WCu8Sg
	 g+le/jax+1olzEuDJdeZU8h0M0gEj3Tto9+hFn15n9zeAidHEfwluv4GXvsxzSaYC1
	 6xiV+WU3PU4pr6bHKEQa3gBSFI8m4xIycxxdEURR6RXYYpw9XYpUP8Ojcmqkf3Cne5
	 0yl0Curhnb1CU166pOL/32R0s44X10bDITFfJuLGK13Z18Y5VBNN+cptuXy9ajDNFo
	 fP/ttE96s9ofMt37EahN3uNpJZpoYCVj2Vvru0KsPtClFgwM4XdALynMRDiOf2dVbu
	 YBpLHleftZ4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90108105A594
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331949358.11472.13063553725602009245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa50a31cc1bac37d22ac7d23115bcdbc8f8509bca30cd27bd14390ae4d20bafd
Date: Thu, 12 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773319493
