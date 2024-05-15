Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542DB381B9
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715762543; cv=none; b=Z7rqBuvOlOXgizEEtshCNQs1r4b2O/MgtY8W9V910m/fX9lywWgAdGv+nxQ9AYLzPpYEQLmurrt5GcA7hM7/AXicMuGZ50vJBCU2pRch+1wqHGMl6JKdYOzuIg0OU59hjVYKiLXS6EmN9UwL2PTxk/ta+cDBtEGpQXv0NqkWcLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715762543; c=relaxed/simple;
	bh=5ZpoLYqZUA+4aQGO/0pZh2BjYR3xTg7WHZ39BuP3ndM=;
	h=To:Subject:From:Message-Id:Date; b=MPQNdMeGW+SM4WGcVO8+445E+adnb4+Aa6yswgt08rnn6o/qnGGoMJ5i6/AV7cfri3Zo+Pve3JL8e6v9P9mD0/T2eoUu/rpCiA4IuxlQfHS0RCJcKHvNVvZM9YfXOfLKVQHmr05e+lJBUmCx/OiANcsHjG3KHEXJFX8WcLldBIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGNVfv1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGNVfv1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00A0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715762542;
	bh=5ZpoLYqZUA+4aQGO/0pZh2BjYR3xTg7WHZ39BuP3ndM=;
	h=To:Subject:From:Date:From;
	b=mGNVfv1oCBg64N3/KCqWrLuUn2gYWwlPMnpbIY6eg+qQ14/JfIhKg/WH64rVdHi8V
	 Z18pSGxsjzWUlpxxaNNv/fCZfgistDg/6Cam246yurKKvWxhFvAinFyuqNvwDTaESx
	 gelPzH/90ZAbew/ZHN9eMFtvDQPwTwBzems7/wfGXjbOChXMyDIgYQNwzyd8mbRm5d
	 EML0gR0pTxf41lpH0J2VmC6B/uiVsVj2trHRlw1cWPvgPstR8MfEQ9cNh1rlhy8iH2
	 vrSB7JCIb0r0a98zD1lNFklYsfizkbKveM7TUxJuddCg5Ia4ru57R1RDF/uvJplkS2
	 B2G1VBtg+oM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF734C25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576254277.2394.12875950553020719674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eece51c91d3151481d88e1830149386a5d78e285f14e580e7539850e9c88a144
Date: Wed, 15 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715762542
