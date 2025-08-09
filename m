Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC6E27877B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754743194; cv=none; b=lq4mej4+NQpHzVNQ/jOBNr0Oe2bbp6CGpnFckQuqeiEU6YV/8hd+HZ9TGqrIsBOb0HH0JQXofpmhQB9ykrbwmpVsuDoOcQ6apwqALTL96nvO7fP3AaaZFBBswO+26zb85HY1+H+GoiCk074KtgajK/wnobMZYFf+HJY2KQtPR80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754743194; c=relaxed/simple;
	bh=TI1gG7J5QAWG4ibRqwcjkjAuVJ0/Kw3WrttFy2CcDow=;
	h=To:Subject:From:Message-Id:Date; b=g0/PLdOljfhAevATd9ooy/Wngwa3Wo5CZZ3Y7gocLDc3AE80EiM0msB/+Tp8BA6fs3JGb9yNqF8BwXi5Nhjesu/lCdfX0QWr/S9tOvLjsiPnkHw/Y4u5hTgy1bwI0FH86SXvtPXQzIqor+Ys7jSxyOJJrKyZF8UzyrO8FgLA0dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmJJn4Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmJJn4Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1E8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754743193;
	bh=TI1gG7J5QAWG4ibRqwcjkjAuVJ0/Kw3WrttFy2CcDow=;
	h=To:Subject:From:Date:From;
	b=LmJJn4Tc9UpQ4shXGemrx4xGKQtftFBj/z/TBTd0LafdpvGETneaZnxl3ViUYlQV8
	 YsdC8wXXY4dlsH04xneZxQn/Aas7fVoO8fw5sE122NOb9AEl6u+Zm0pNq00gcEGaAy
	 AoqEW3SCXVVdULeu6Gyr7nsofr/YBQafNNfdZ38/Osk5vQd/9LtJZuJQC0jzvJcTPX
	 46NCJL299IByYP5Oyhhgc6HFPQo2XNv1JZto1yAm8aoCP0MGvV2nFIFCjB/T3VNyB5
	 ST8WqeXgBQ4OgagD/zEZsAQGAqPSNmDymWzBmtjGbKXATWYPIIqyV5sZUZ41NuLXUv
	 Q74qU8x3N61ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95387C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474319360.10648.3325108287209733974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77801eca3e801c4bf5ddc53cbf50cab29812f8a5549523f740e051551b679eb5
Date: Sat, 09 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754743193
