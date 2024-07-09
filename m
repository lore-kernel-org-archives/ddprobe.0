Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A241A4F39
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720542383; cv=none; b=c2j+b3nvAQT53/SRgdYPKCYKP9jZ4pDIpMcLphWXFOHjF+PM1i/TH11do1Lvd2R/WqT2cP73mVAxuM+/Xjgvwd5h8PTJd/I4M/HI1YU21iKVF5xiPB9DCJY46B/KqLjicuOPjV7BknxlmEXigWZf+2UXS6tgQl/S8n7yK2azyeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720542383; c=relaxed/simple;
	bh=bZKpXYhFLcxVHUjPYGz8rZ+3ZPHiPW75C7nJ9b0Y2Ac=;
	h=To:Subject:From:Message-Id:Date; b=h4uCuUS5vzKUbUbDr8U3OE7APNgoS58fMEhOuhIKcMdW2n3yNhzt1VCQQq4dK+srd7T8sTpc71rkyM/WpDQghfw12qrmtoIKhYU7pveaa83Q2aX39wISxcQKjY9LNH1Tm98gXcGtbu0JZv/ahw78XADRytPRSSPcRUd6Jsg3xo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgPpQnMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgPpQnMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D545CC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720542382;
	bh=bZKpXYhFLcxVHUjPYGz8rZ+3ZPHiPW75C7nJ9b0Y2Ac=;
	h=To:Subject:From:Date:From;
	b=WgPpQnMS+YKfWSHy/xEZawmfYw+q2qo8BKkggE9UGHyeczAdWsUfnKKpEEy4KWW+p
	 i33JS5YdyAjgo8mXTu+ye175VXIhjwSr4bA0gYlw7WVbgWXcV93KCQYWVQfTUM8nN1
	 nBUk1hEiIH+Zbfe+lfWs/Cnw9+Olo7aHzixFT0xOUPjRE3QxDMkfy1Xi9ir5N0FcAt
	 MG7yMuqUhHOYcyC46/h9HWxhbWZMfe+xImu0OKi6L/Tc4IwTBoj963tEB3beLkspS/
	 0dBstim+PqhFoMk59fM+Bx7rgXV26Y54cxGUNZAR8u4QnSxzBCcoO4Ji9wYlCw0lfQ
	 yI4dyx/9YiviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FE3C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054238279.32328.15993614146706946039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7ca0af478dc9edfcdb99bb9c60faf1311d2fcf431a8777f3d3963f89b65365
Date: Tue, 09 Jul 2024 16:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720542382
