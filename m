Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503C350A21
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761105594; cv=none; b=ZzRAZwg7bo50GY29DvUHgBM0Pr0YYl+TFvqdVkocUBWNysE+aNnHE59RiVvukklt0QfI3ruYmW5RY85pWSgcSRLQl5f26XKI4DKvrfy/kE5QEwFFxeNIY31Ov+2jxxaNwQFZg9AFjik6thQJ5jEHxsd2AAlYV2EIOTHe5mgBJFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761105594; c=relaxed/simple;
	bh=hT1KPQHaRxDPYjvgmv/ACVIISZ5hxTojmg9O81COgbU=;
	h=To:Subject:From:Message-Id:Date; b=udzzG7Gc8HXNopEvDnRxMGr1v4fw6PsAxVGkc3+hootwvx7RmPpWLZvIyytYt/6YVBhA0vx+ntKqKtohkvn3tvFTf2PaTusaX55gkLXokAP2cIkJvqYeMDu2TFhijh4HtVUCWk3k2mZOAsnYF2WLOm5uzq0pN8cwPqdY/bRNfFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReiP0SY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReiP0SY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761105593;
	bh=hT1KPQHaRxDPYjvgmv/ACVIISZ5hxTojmg9O81COgbU=;
	h=To:Subject:From:Date:From;
	b=ReiP0SY8OxxLV6kBS4BGA0IDwsABRzWylYEyU7LEIByXSeigmlZk6p+7va27XYf47
	 19djNtRZpS2/0HlaFG3KX1zRFe2I9TSJeSO1CeW8j4JlVsUTa7GiCYgVJFXiJE2uVE
	 ElgzaD1US/KMJVW76rw7/ZNfA1xflCoVk/Md1zSqZMnr4vX5xlrxJC60cw8iUacZ5e
	 MyFnc0aUKC+RmVZ1qNKyDoXk1w/w/k2IfS/0tP0Vb2Seecel4t1cLUtrX0D3+Xd+qd
	 NivlF8RBd8W6q+rQR+yDOb3lkTvyujD+NXljdLp0LJlaKbACqazGpos3UCw7SQkZqz
	 9bNFDlRsBBifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C4CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110559357.12528.11227158722732800083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8a617cd937aa58f398e47516aa18ba21cb8714e530b7ed33c726c90dd5df8a
Date: Wed, 22 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761105593
