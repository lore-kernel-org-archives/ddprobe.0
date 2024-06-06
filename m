Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9588821
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717718243; cv=none; b=LvtGwdQXjgyfTsGpKG7WknVhLrkBPi8QSpbj2t17e9/gbx8Dt9Muf8BDLF6dbFe4kpgaAFrrZVpHJR3x+7Fyp291HArS5MGHi8KgL+ri7absOsD26Hr7Re1sa9KJq2RHjGJWs+N7u0/No4n4tFlmJBoSlj08tEQYfsC599378GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717718243; c=relaxed/simple;
	bh=xiyvwjFZwmCRsVcrXwB/scy5ZEZ51FIsVMgdwKq5etk=;
	h=To:Subject:From:Message-Id:Date; b=L5jxgjkTFkrio4MMjYjm3OWHxAZ4mjJq8cl4jxg2ayhEd4yIFpuMpSWgirJKJOmGmROHGBb5wVDoQXx6fET4AtQtlZ4pbuyyXmcblQdA0e6D2ZupNIJHiRQMo47CUHE/8uA3rR459xrWyeFY+8WWzBpCzGsodSwbhQ9iixVEJoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHmtAbKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHmtAbKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F24DDC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717718243;
	bh=xiyvwjFZwmCRsVcrXwB/scy5ZEZ51FIsVMgdwKq5etk=;
	h=To:Subject:From:Date:From;
	b=RHmtAbKZd0302TxBpw/8K+Ux4FozoVwiPQ9Ggpg2SWeAxu1uDj5ZZbPabJKrZrnxz
	 q8qn/fdA91sKzFAl43NdMR1asDveWaYfbMJ/RB52I7fLDX6tcSDDvuLXICmQnt+zZ/
	 Q/UBuGDXeDwDMjeZ/V48ZBph+DgCAPanYItSyzH5HRceBEqtLx98xW4LF3DtUkhZVx
	 4tIYJfAbuoE+/2NjC8sLg6QMuFj/YKcqrSplnbKEZkvD88Exa62gbrUr5nwxBDa/C9
	 +FAJ6kdO9VhnUMcpzClspJF4GD6kqhYw9jSLlI/k7O3HlXYy3mk+j+nTL5deypFvbO
	 dK2b4fTvsCocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA69EC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771824282.26728.16517237281802915859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53bca44280c9c9cc0d5907e190179c42100fd2851b02a42d59987b0526fa3c3
Date: Thu, 06 Jun 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717718242
