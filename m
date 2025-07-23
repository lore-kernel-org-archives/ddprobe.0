Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A54922D795
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753297794; cv=none; b=OyYyER6dWBeGq3CrW+nQ006jg5aAgdGWfs0NjlxO5QMEssx2tYIuhdSh9h9ZNgV/6KHu+cv8K5nh4vfhsuAtMcYTvHxjx5nvvl//o4sMqwagTdMTEHMdCbKxRSgzyWwfXYTkaKtjcedNw7bCZC6tlpUucW908DKRGOojjOCaiPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753297794; c=relaxed/simple;
	bh=NogKvs9lf3eIIAfkBl7aIyoonHRas14inanxq2L0TMU=;
	h=To:Subject:From:Message-Id:Date; b=sj4GieH6ta6ceFgdTbwxZ6DE/2AtXzd+L1xN3fxIq7EQiqWLfCw/HSP8U4REK31wZX4i6JUPht8oWxpqTw6ow4zU4g47fta/fPvTDevYmBdKqSnD3HQqX/of4ehXb/PqH5uQHXJQxEEZlkyEE6I/UPtFzJUBGv0fMGs0K8DNMgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SywB7Ox2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SywB7Ox2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB1AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753297793;
	bh=NogKvs9lf3eIIAfkBl7aIyoonHRas14inanxq2L0TMU=;
	h=To:Subject:From:Date:From;
	b=SywB7Ox2VQbmR25OFcGHXHQ4o4pv1aEv2sE3KyQagtzA0I2wTPMvNenPU1rcKqs5O
	 rcr/FkltqelYOxxcGkmDNcNVKoqIFG56Fcsf9vudp/be/Kr3p4Yl49SgfxP0IUzzCi
	 R/+fHnfEfVKc9XUnvv3vm2eyrOOEoATpNjShKJbMwYQHUdLTadQeisqVzaJnzhJCIo
	 7svkJjFT3lUR7qI8k9SU4eT10La7B8lLw2fO1ORgXG2UCCRmWq+O6DJ1BgJxhu2c05
	 A9YyFS3S2TqWHbqx70gIYf0u+C+0MyhyYwP9aHDqOwDwpTBioI6mOl7zVaKPb550BJ
	 yAk5ODnC5g31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329779357.17379.5729626784542857097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae303e2f3285d8b1de1adffd20bc59b83dceba952f7a28ae1d65ba17020f4290
Date: Wed, 23 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753297793
