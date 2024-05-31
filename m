Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2AB78C89
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717190063; cv=none; b=k71WPGGTfLCw9A5GG2EPXr6X6OChuZ996xBGXVylglYRHHoQp5K/5xDCXqI3bNzZqE6Nt99Yyhf6g1tDLObmW5nqYaE//DoGpK3+Fj6cjDKRdS7KZghIR6eh0QzUt0gaPlXqd+geiQuPdtCazxCdI+G7NFs9n0oOF60ktVcENGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717190063; c=relaxed/simple;
	bh=eNNfn5aL4586klPhuJg+XuNFzDYZs708KASSVQ2zX2M=;
	h=To:Subject:From:Message-Id:Date; b=HLvvXOkhtU35H1J+/5JmsQR0O7ZB6V8m7yUfJgid8UIZKVB4/htdCXkSzMlyXV0AHWuxOTos1KZippVXHNC1/tGIaZnm8Haq1o3tcos5lqFAQaPD8zVVu8ScWgMQ/UWHK6NsU2ADs0BCUo3VBlINGHBze7rHA1/0xmP8xFETF/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dt3O6tz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dt3O6tz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F8E8C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717190063;
	bh=eNNfn5aL4586klPhuJg+XuNFzDYZs708KASSVQ2zX2M=;
	h=To:Subject:From:Date:From;
	b=dt3O6tz3hdneOJdPwxAaSGMKZST63hV9zNmCInTWKD+8csJkLDe9btgyFrE0ZHuzo
	 xRMy/ZR/d/eOSS+tXXhuOanek+k6XqjTLMNgBnj7X/Jz0eqDI62v1SSFTln493MQcY
	 HIDLIiOL6vHFLlq2BteJxp+fiUhJxeLQ9QjbX+LOKDrYbDrnCzZfXssy7f9scQV147
	 Q48inUn0l/+PWoozc07IJ7vSPvIT9rzfdrysVWITfIr7R72m0AJnSbsPfB1rYSjxj0
	 KJkZByzROeBaezfFoT9wG3MpQ4WopaLYhrKMYgclRvGEaqRrt7UTX2UfRWy2KnIiXU
	 M1QXOIK5h1w+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E53A6C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719006283.15055.11536575974036443366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000e81ca12697182f9ca7e1d14f0e5ab3e5d919c81d6543631ac8b58cb05aafb
Date: Fri, 31 May 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717190062
