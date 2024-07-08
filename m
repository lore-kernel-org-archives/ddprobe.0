Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539E0803
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720407983; cv=none; b=AfnrCx0LdHdOq1bKhsBjkz7+F8OfLY0F4jmoOWS+FSAxYDAJoCligkFNq2B0zhEy5SA9RV2Z1Hmt8Zugoji0Vc3VcJYCV0dhE8sGYvQsmK0+BLAhf6Io55vALjrrUI+b0hzFyO/l0Gah4phcYwLz+uZT2ZTOGSSssqajnONft80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720407983; c=relaxed/simple;
	bh=6KeD6y4XTIlqohYrQN9IU1RoRqoBfWwIfJrWLqairT8=;
	h=To:Subject:From:Message-Id:Date; b=fbjiWkM2Eq3vKrDOmbnxpCYHVBEc9vRgQRgH7kzntf1oLMtdLE1XiGZQMmynPCUvF+1DSbwQqM395AJRs0uI3M8mJNy8Zs+orLpwROacDw0A9pwR0N8f4BEComieE6MdIJ9nqI5i8+zyDOftWO+uAx2e8dpbuGkzoczkXKb8JhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9STTPcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9STTPcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA2D5C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720407983;
	bh=6KeD6y4XTIlqohYrQN9IU1RoRqoBfWwIfJrWLqairT8=;
	h=To:Subject:From:Date:From;
	b=j9STTPclbsIstJf+o8NA9soY3IUgfjlDuCQEAzM2tSQofVeYF0iuFJxTDcz/Nd5Yx
	 VWAiTNPkq+CaNikLZvEr+l4jgm1Nz7l3uiIlFY3wJUWfS7Q3mYOkiottd0vCIbTtBj
	 veGfLazofvU8fczCPPv3njrU7gj7tbnSe0UKIAFq4nTRJbiTLAVYgjgekd5D5OOAQc
	 RieClehDSPM8BeKS8ccV0QkcX3VpgdVB1mh3CaBkDM/IdlnLGYEWBZLCplONJWbK0K
	 U4gYPcQRaahBPhGNY0/+T6u0osq0ziYealbNN4+KffuNbQKVN5NLsMHvzRSSL5+WSV
	 u3xyqffXoHBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC640C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040798281.18681.6545126985458011051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3985e653ec840f10bb639188dec337fe2c09b67b10e2223ff99e1ba39b93a186
Date: Mon, 08 Jul 2024 03:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720407982
