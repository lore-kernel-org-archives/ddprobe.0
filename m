Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D63E2FE1D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705691297; cv=none; b=MF2qDZgCttTAqAuShdqCdZcX6X12gvXlxoaGa8DA64g/JqpmTmiQxjXkfsRzK0AEmoFpSTsrqDOryyOeUDh38dtdPlssxEi/jkGwD42gD3bS1XYRUuo+bYuPbA5HpfznO4dZpmKBkqD3ZtHUXY5cXokdK+2wA3+PY/7gPKg3niM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705691297; c=relaxed/simple;
	bh=hHcpu2cZulKx3A1bDFQrOlztHA8o0MkyhkB9MXHgfVo=;
	h=To:Subject:From:Message-Id:Date; b=qYuFE1Ohvm7Dg5rn+8SCSrURRanxDp9/5lf0z1SZ9nqspZDaQJOX6dK4SqXA5nhTVdp6VQiIYve66lBUvK4RsgC66f749mX5ulrnJSqY/3XWtmlcqd78IoEauhFhPMPAMKDNp3orUf5ojvng760rdOnFeZ3nVQ6JwTafU4xLNzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7LiLtJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7LiLtJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E882C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705691296;
	bh=hHcpu2cZulKx3A1bDFQrOlztHA8o0MkyhkB9MXHgfVo=;
	h=To:Subject:From:Date:From;
	b=H7LiLtJERJUZZ+AD8dWqKZ9G9vZAr7U9fS25vC55HNQPNXYDHDnqRFa+TamJkWwuR
	 UyO7TN+Za6LrgAs9oIvy8lStczTVshBznPV5IbWQ4Rs7kua1YMiSHjxn5bfJUxxLiS
	 mqFaqDBRupqdVzW6fe16YeTjcxUQyhm49px/lzIES2FD+4VjON1aM0u9tvoreekFL6
	 iQdslA9Q75MG9iYu+08Gye+eS52Y3owEsdcwdk+fKGsuSLS1VKHAlObWokkrtiaLda
	 eKYqMeDboNN07l1BkiS11gL7cqqsxcWKTXv7AdnZuwYuzlDjSsKXvyD2qzrSxJRIG4
	 rNPzTp4iUQtqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F34C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170569129636.27801.18113969002868973532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0681bf110b55fb179d4760ed0d7c0cd15276a4882419e21da33695687ebf170e
Date: Fri, 19 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705691296
