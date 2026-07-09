Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D2A3A784A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783575514; cv=none; b=C4RWEtPc+TjNio4L+7156Rc19FdbCgyHBDat5S7gYrPuR9uQSwWfn1TPOVYC1RMJwV1PaM381yKXmrTWqwa1W7z9zPucmA0mk3k2vqxYBQoLgI+6AW3C+bU/sMZA3Frk8m6lp5CIuGcYfwZHN92WNauqIoHOmWXrnTRMaApwc/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783575514; c=relaxed/simple;
	bh=1ZVaKyvrzK/HeCtGs9h1SA5YHKNRLFPgUCfsAkeE3O4=;
	h=To:Subject:From:Message-Id:Date; b=UWjWlWJzXihL8Vnt39ckAXLKVUpBEQWS0gafJ6bS7jBtYwgXOtLKKZq9yPvE2awGcCrGnzUE6oddDzM/rjuS8qqjs2Otj09OsKAPTk3Js8iODlM3inxCrpX8AvwEhUxImakfughUmcZcLgbnBYLoKj1rMvAdYaIDQ4fWMGU6rks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV1wwWLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV1wwWLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEEFC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783575513;
	bh=1ZVaKyvrzK/HeCtGs9h1SA5YHKNRLFPgUCfsAkeE3O4=;
	h=To:Subject:From:Date:From;
	b=NV1wwWLdBQXYdjl2hpKZOTaphnFX7+FWUuKR1w+SX0EVfUyynVV1pxvXDtuHHXIlb
	 oMTeMAmCK0RNJsWtblWSsPZfe3DXtfFXDoQSncli5Q9jidkQbAXUp/KvRPbGSEzV1q
	 ar34kXEMZ3U6REOqLz+89UeW5SWTQUZskCRbAD+NFX6itbmaHQWP9x9ZrnZ9qsAqcJ
	 1ta35jzGSRzuv60g+FycbX1kLDpXDalXzNXwLOfd+nYjRuwhhykvRRjEpaX4FWUd8Y
	 tit89JgMmXO0zNkbCRXNC7iue80Rq95iNuN2Ct+qJ5JJZ2BgFqvptyF8QHLBn03gEh
	 ts2l/VvkNyZmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9408C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357551374.26711.14177943350704863219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2870689a5005632e2d035bd0dad5dee9600e492e19d836b3f6bb433c380f5db
Date: Thu, 09 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783575513
