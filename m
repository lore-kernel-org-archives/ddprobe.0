Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FE315572F
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715785943; cv=none; b=pbbY6JZ+F73xJxWt8G7fMBpH4oJRrS7K8Ig7HsH6soSSuJmw7nD/JtIwqOqVnCdIdkiJNVhYTXWOi/k1rgZUHWf/Y/ogFnNR7kUZfcKUbYyzDggtyFGcK+IzrLT4x78eu1qNSMZyV2u0UTbssQBeFC21b0lG+u3f6D4SAOUFeYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715785943; c=relaxed/simple;
	bh=edTwk5b1nUX2xqhdHPXVfTnfYOe9/hYBFhUY1tZ7Zj8=;
	h=To:Subject:From:Message-Id:Date; b=F7B/SMtB3yorAp/ZhlRTzZNX+peAWBLpcDzU0cqiSSusnIJ/7vN0e6B9/eU0F6WYpE7HuLD3o+9r3mjLo6bFKQjcQaPCa0ILfqwyyBk4I0daDltIYK271JK2mXmtwKFPnfLYm8Fi6Wy/EEDlFt3Oew6XwTs9LLoJIe19twsr+IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi9UsDbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi9UsDbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD817C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715785942;
	bh=edTwk5b1nUX2xqhdHPXVfTnfYOe9/hYBFhUY1tZ7Zj8=;
	h=To:Subject:From:Date:From;
	b=Zi9UsDbG9u0qLEZ08wh4ZlO09rBQvbWMAyBnBRK6GBlBJ5u3Mpatgl6s23KWcEYSH
	 KrboUHbkJMW4EQhlELAon4N2QrfFldAPXVnnG3zXGK0pBtF8OmEw6oqAw1ZbMNynDb
	 zFaC29pB3WHF2ULNd2t+Y/2r+wRq1tEaurW8uJHNoicYXFEwz/KSXFykHAMoI9vWpY
	 ZpSEPPIZsSJBJQOLgTdtlZl/CRooJjWAfS5cxCeNNtDdF/m5p3djiPb6nTPaQ+/aro
	 aH7z8XWtKtMLNP5WO8eASXGKW84+jsDnc+LlFHgLopQ2uplpmYsbjg80U02cYPEzEd
	 sHfTMLBE8M1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C636BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578594280.16118.10763103669971388376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7f7afaa2cbe4edee6657506a385faa82f7044fee03850e9c00fd88d0509bfd
Date: Wed, 15 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715785942
