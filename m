Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BA635894
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723673754; cv=none; b=XPU5gqWmu2atikgIZojpprUvgoDLJDvUD6CITDut9vUEZT0EPI9d1s9X3sYb/qbbwRR6y/3c0brhg/bOB3sMqH+JNDdx+YM17hnLOUlTDMyr2XG5b7v58zRxs1CNRlon357GtJP4Vg+gMQbCxRpj9XsiOx3TE/1KCbGIHLY25I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723673754; c=relaxed/simple;
	bh=QXH1E4TIy5J6v+mbHdTnjogw5SiJGFpI0DO7+RDtrTU=;
	h=To:Subject:From:Message-Id:Date; b=X7xE/YT+XJYGawPNekfilSE9zVzEAVNzXS43EODUz/c5nRzgZVmxeVC8yJGRphXBzc3ZhdOjqJcdYu7JV5wI73LGfqWKcdYexq5+I9obn1IsGsZIDCjaJ3Lr+v8EZwY7VQbrMCYrbf9xvJef4mpG2CXnW1O7FJwUN1ZvqXwp0bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AILclmBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AILclmBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DDAC4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723673753;
	bh=QXH1E4TIy5J6v+mbHdTnjogw5SiJGFpI0DO7+RDtrTU=;
	h=To:Subject:From:Date:From;
	b=AILclmBcE646+wyy3oQHLw+h25x+F6d3RaOJTNneBJbLuEa4x67/R8YcrO23KjCMT
	 +5pRRc2oZ2bNj2Vk97wb7q27PZnb4DZ2OafsOncudmpN4BlD7IluQd6faOv2iN99Kt
	 17RFjY4XhLnP7Wy7Yrj4wfPcGl9yZcuXIbber1RrknQ1o0USG08g5Ic+kjQKjs2ZVU
	 S/QAz50WVTEWUfENLivsrgHI7qu9jlgLxuD5i8MTAnfXG24WO3PqTMNFukqY/oVmcy
	 dbfk9WoUbk9xjPvzCZbJvOqYI5xmtOpIFgJ99eX3PWbNoqKH+r14rPQLTdga2jWZf+
	 FCtABUisWKSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A948C531DC
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367375362.27488.5239755318987551846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9659f6cc2227aa37cdd3675f4df80a387ef7bfcf34756d26354239d765ad5c46
Date: Wed, 14 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723673753
