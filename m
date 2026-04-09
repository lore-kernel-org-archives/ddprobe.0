Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370243DD53C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775746055; cv=none; b=kSPOfkYlfmVf7PqEswfJFiZqCaf/ramImM1khwl1gNqDDNRSxODJ5+BRNCZLyQY5UfjoOq1zix14HzmzkNKQVtRNZmoVuOh58HIucIfy9t6W0/qHM1PXu+VMoX9bC3+ZpGLSk+de6vEa3rQbyoTNyW6MgZ0Ghi6rklp6XGqMQsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775746055; c=relaxed/simple;
	bh=TJBhqqllhDH8ba2oxZOLeg/BpdINfRZ1VUMAAuAS84s=;
	h=To:Subject:From:Message-Id:Date; b=tQGNxiZmU4bcLilD3A9tw7dgnD+216rVU2fTKJmfAAo8R6T6Ry+KH1PZrHILZgNbY9SwyM4HNzxG3E1t4pgJxJg7GjvJFqhh3DMxjlgnNLZybIndk+p9tZjoSGieuhiQ/Vaggxcb4XJpWdgW7lWK3JN9sLL5JHR/rYOBcmr9Ka4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyPSTBQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyPSTBQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 146EBC4AF09
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775746054;
	bh=TJBhqqllhDH8ba2oxZOLeg/BpdINfRZ1VUMAAuAS84s=;
	h=To:Subject:From:Date:From;
	b=EyPSTBQWwYiVq7sG5QccWakc8g3V3fLCrgAKD2ClV4S+0IyCeXDoRKMzlyvwpXzW3
	 WKpE8oHwcNMfvqRIUvxST5rdB92hZNf8VumsQV4j7/EqAKNvlyjApyirXEfEPZ3rSm
	 l8kdtuLyMqgGasWW77DMJd5mcg4gbbzt6YqkVSwwKNaWAowzBZNZ3/I0r6Wgo7ZQUL
	 bINNiXQvzWptzvrZP+yHHbsOc8ZRMFgeO41AM7UW0W0KFVMY40kPBuVe11CJ6dXGBq
	 5ui+1zPwPoYZQ/rymW7WvAlA+QUoUxmwgESTM9KOF0KlnKgWrBq8qyHBkvA9h1sQG/
	 /mdXqXeV24hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D0CF31E22
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574605380.30457.4656085970332912598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28519ffb7c90d1898a8c521963aed1a14dbcfdf10c2f1756393cbc35efb0ae1
Date: Thu, 09 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775746053
