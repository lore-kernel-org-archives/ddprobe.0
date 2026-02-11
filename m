Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5497734404B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770782694; cv=none; b=GxGUw3WazaUdOvvtn19ZkmofR47YtYWyuLkEOf9F+dHZ1BPTDFppOqSrzfXmFbqwnJGr7/dG2CRlJ2cb8qOApSl+3RFGbmyymBM0OqQnmmnfDpzawnugBpuzSbeBLIfvc8laBlDt1zzr5tafob7n/SDnB39IUmPYPnitwycCBoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770782694; c=relaxed/simple;
	bh=fRhq206j86+f/A8SVzsjMq8OQxg0g4Troq+zeGfbKBM=;
	h=To:Subject:From:Message-Id:Date; b=C/EyTMTAudm81AbxTUcnDt23IdL/NTIwJhLdUbLEEm6PJ0dVZtYgNcG8uCkzp7ACPXMWzzJwoClWX/a/YFtxnmRM1eM3ekQnhsZpVOXAT8WOgOhExvjr8vIy8EPv+KGO6LdRH9PTZ1/B9lVi4905HhKlc9cxU9iQZmbtoxkktBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ba4FhbUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ba4FhbUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEED5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770782693;
	bh=fRhq206j86+f/A8SVzsjMq8OQxg0g4Troq+zeGfbKBM=;
	h=To:Subject:From:Date:From;
	b=ba4FhbULlP6JDmdDmF5Kw9LfrG/pDLctwE6M+s4nRo0kvfNGaE7mhWUssJEM8MmoQ
	 7569+qXSCHsFyqCXVXosUjJ9z62fCHqlco0218sa2UkOdSuEzUqQJKs2a/YsatC/Hl
	 4tT7a7LgIVJLJ5Bs80iwQRrk1RO430vM1tDLhPglQrcOPkmq2lyLqvN4B6ObIjlETF
	 HJlbgaDrrfNNZP2M+S2dhAdfZ75pSswBxIi/B1BGyiI2oyp+vy0TZkrT2y5q2dWcch
	 RwA41zS5T6l5zNbUVZm4sf0wLcDDe6ZYi1IDIekvfwfFcX87gjy3A0ol+xpdw8rPAQ
	 fMXxVNXZQESrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAADEB5961
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078269375.9381.12203615121727087996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abcdad46f667aab00953d93a0aaa25f921b0fb591e9284e2378c58c649a159d
Date: Wed, 11 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770782693
