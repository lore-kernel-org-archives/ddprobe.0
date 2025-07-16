Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC42EF66C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752707994; cv=none; b=dma7+B9g1yDOjQLlVUM6Ttpubn4pSMk0I48LVGVmyaEVipaqeD9KFbFDsCUHIJlLrm4K1pyB19pbBDTGOfhl1057WHNnJL5SBQqSXsoiIkoj/NTKssTdSjQF3emXUeIY3L3rpUqpo8NC3SkKmzkd4nxl/GT0dZj/9v5C8hgEoo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752707994; c=relaxed/simple;
	bh=nNNLQPbXodcmtvBmfBApO0S/7u2VBov/ALjbu0cfpI0=;
	h=To:Subject:From:Message-Id:Date; b=urnHl1QxhSiEYWdzlb/8MLnOoQr2suLIA+Nzu+1vrEqfVeI83P+sgTeGP8peys7c17Gj3jlyp6Zv6C//4KWmZA0y+9kQVXPljTyQis1GHhjrSzZE0hsVcE/WVF9TpnY4IfJhunYZ7yJtMCze+gP57p/pvcsIhz0sXUjMHQngPoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvbpJetO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvbpJetO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752707993;
	bh=nNNLQPbXodcmtvBmfBApO0S/7u2VBov/ALjbu0cfpI0=;
	h=To:Subject:From:Date:From;
	b=hvbpJetOdK+BXltYTCMztDFik5lIxem04TpUgsZperGT5P/eEcJhWHH4ZJcIlspyn
	 KVJtQ0Vnz6m7ZUGQ0vL/h4LXqclmcbCbZKo38jqVEzlQQe0VVSW4R+LOqG+8KzKdQj
	 /8KGCnLxKvRSa/kWrE52ofnBK764cDEaQ6zYpEfoqVVaI1E+PSCDfHotsYDFYYbGQU
	 h9/bKfAs4MbBq2jdrXiL+Uc4o6KPz0CI0jR9yEE5xdYUHjcq/Vo8Fvo64BkqicKKBr
	 +f+/+SN/kgGbOAJzXF+CvJtLf6ggRkEe39CVqT9/13EhlHBsPvceoCRrkI8dVB8XKA
	 lHspE1miBYtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194FC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270799357.11853.16562796314015931557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecf19e7eaa11aac16d5f5960b288cbfb078cc78dd902f42e914c420755bec05
Date: Wed, 16 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752707993
