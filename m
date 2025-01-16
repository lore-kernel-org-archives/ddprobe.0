Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324344414
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737052554; cv=none; b=EaNdBQDZv9gAwyJj3MexKZpt61CTa8sfZqKoI3UivqC2ExIimd7dfj8j3i2bnSbYA/5LnybdA1OPSYg+X8H7Gvau5kwQN+zpW95+Vda2C4QgfnhiDg7L9hnqHJGB7LQ0es2Xb++WRjkgK3wIDqRSTao6O2CqynQRl+WdZmvqUjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737052554; c=relaxed/simple;
	bh=MGi0JYwaacFBkumzy9dMlKa5fovd1wrY+ndfFTCUtVQ=;
	h=To:Subject:From:Message-Id:Date; b=JX00+4b0CbdIWqWgyjmOpd5RW1aq/IVQYz73PPaUhkx5MNXuCha9lqGNh+Xjh1lgqBVJazMlI0cfDJA94N/wnIRBm3Rx1Ly7sGqmMwrhjHhTqnoA2qHxuNCb6KU1esAD4juxp7boTQroQeo56I36W14sMleVF7odyyV9JKy6eK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm/O6+ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm/O6+ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2095C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737052553;
	bh=MGi0JYwaacFBkumzy9dMlKa5fovd1wrY+ndfFTCUtVQ=;
	h=To:Subject:From:Date:From;
	b=fm/O6+phInG6SR+CRdtj0sijmzhjB0Zor9LI39LCjo3n6kmPPRGUxoyG1u4g9F01w
	 Z+GnpP+6Q5zOsPafc2GDDUwcKH+y9pqUPlEkjX8Yr+luXezQ1w06gPd72AUIzCbrsP
	 T8FfF63c1/kAqgw61U6dWfYKrVtPv8pBgw28VVMlEEz9hsjEMg38TLAX6YdHKT1Eb2
	 yjIPc9CcMBFk8GcGMq0mlHqdi4Ov6gE2+XSIh1x4EuhbtbS3LqgGIUYa5jDLKEQIXH
	 l3cYW4KAuDPTDP7aZDI5usHzFRars5gjVVgFG7TM0AE3tNTxwnswhBGZogv6/Oggp8
	 pKrvIqQvzU43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A6C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705255359.5540.5272306313362522768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683a47633107e5a59b6af5da962a8b778985a42c4976413d06ffeb9c606c7a30
Date: Thu, 16 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737052553
