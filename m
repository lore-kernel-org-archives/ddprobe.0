Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11206327C10
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766417034; cv=none; b=bK7AaDtRweKo0XlvZpAOhIx5zBxPi90vOiN2cOj05bjncItowEsrfW50eihnBqljgBKBnuRfRJZ6X/1nZ5hlSL1tI0q9QPjAP703iGqDMIwSACNOviF95tCR9+Y21EzcOjGzNBlf2Jsj1zxav6pfoM4vjg28U4uUoRtA9u2vtPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766417034; c=relaxed/simple;
	bh=G2iNktvlbKv056uv3O21pMFCs3wmp7zOyaF8YbxkxZ0=;
	h=To:Subject:From:Message-Id:Date; b=bt6w1rewfE0GLsjTfM3s54+uxWnFICpaG88Ged4xcqNIQpxD8pj6L+KvG6pHIe/0MLdoruZFoudR1HkR3yAtJV66c9OHMXAJZICr+furTIq2Ql7DtbZeielyx6esxeqxiBf8RfoLZWjcRQXS6kIaXlgPN1gEKrZ1F95VFkvOBr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJxnQsyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJxnQsyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766417033;
	bh=G2iNktvlbKv056uv3O21pMFCs3wmp7zOyaF8YbxkxZ0=;
	h=To:Subject:From:Date:From;
	b=SJxnQsyXbO+6ex6eSj1uEnctWf3167/EaMfXYHVxoI2ZQTE6VtYsz3OKcfakVHuaJ
	 Vsbv8isRc8kcJ0+Nvlwn6dNFPHph9iYSxKaNJwpmfPgTJZxG8AIfKUagEPlgTY0ASY
	 DDWK40FQaUamAZMwRbQMjrLd8hOrzV18cbRS/W8wzfLQaLiI9PSRV/maCF9jY1aRPU
	 s5MYTEAgYafzHf6M+1maCqf5YhUMeH+lJ6zXwP2x6jlQDF6UGCJG+VlHdGYFiEcoZ6
	 RJOJidRjWosivv5vZlMhhR6oa9eYaR2i+v53F/B383LpWQb6dpwTqqM0uHyfVdJUlV
	 tZXn20M0P0JrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ECE677E9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641703359.30427.15330171581995526210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa021f31dd7ad93bf1c8f1fdd090feb0646de9ab1d78dd207106524fe3355e7e
Date: Mon, 22 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766417033
