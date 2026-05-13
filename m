Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081BD184
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778712034; cv=none; b=hvyFKWjIET+CTm89ksOPxqEK9WfVohtcLeI7B1PnJuknDnOtjIIduBPEhKWb+tAuaRaIW9EK+I/kxx2UavQb4fluUwgJdrik8vbBk4ZDxQD5RHHPnpkYV5lfQQeVAKxSzV5XRQs+JAS7/bAb5KhpTAbGXx5hotML02iKq017NC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778712034; c=relaxed/simple;
	bh=naQ6pVItBzeWplpl2feMAgtTZn06/Ivi1JlyMFHSdnI=;
	h=To:Subject:From:Message-Id:Date; b=ccNB0HAMwsN1bY4iCYkVC5hSfG5B0YSTCshJiU7iGIptMu/hGpiI1JFya8FWQQl4RaBWlIUzuS3A2dOpMepQ/mMC3TOhBsXa8bow95nIeXbe4zuyE9bRZ2UqCE7wbykJ7Qon6265W4taFftAgYJ51nuUGsU7NdVu+Jzc1KJpLJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bc/Fpdrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc/Fpdrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52C1C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778712033;
	bh=naQ6pVItBzeWplpl2feMAgtTZn06/Ivi1JlyMFHSdnI=;
	h=To:Subject:From:Date:From;
	b=Bc/Fpdrqqvp8HonPxSeLb4M6gMEMSe0c5NfZ6u+miQnqy7eeGgkvXJdyOWZo4gLVr
	 9pQDcuSup5j2l3fUINRxYu1V2+qw1OdSp4ITcepGgF8bwI/t7tp+KR0gNTJLwNpOAK
	 6aqkWqq9vKxLWhd8tJv0UMRjAhC3Qnl8mAE7u6dgsHa0v7PS55bOvQ3LTq6GsjJ2Vd
	 mvnRfNIfz+wC5P7/Z8T4wA3ESRyJw7XZpZ+KkmTTv7utYNU6zF7MOTzP/Ov9mMOda1
	 125byJm3gk5aFHpAg5hbhqSK6NDo956V1H+b2iJSDps205dNOla/6enSZQjXLM3JXQ
	 LrlY1dZGFH0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ECDCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871203369.5368.4344011077459651746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7171f86873618d3375757ceff46214a9c0b1757ae01400536bec6426a7ab0b
Date: Wed, 13 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778712033
