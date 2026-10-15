Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7328D49AA30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792048234; cv=none; b=JtfW7XDebS7bOLiiXJPsciFPEUNJbA1iowgWFQu2gqb71AGzuu64RuM78gGzwWNp3kfOP+Cxjm35metinwfiAQpHaer3mGxam/pjOWtBsVZQnYM9GYTB2rq6g/hR8lcpVcSI9FS13Itsr86dEXymaYfBK5XDzwcXghdHtG0ZRnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792048234; c=relaxed/simple;
	bh=ZKM6YewsUHH++GzcgImwIyyYi2AfezZM5c0kPH6GcRo=;
	h=To:Subject:From:Message-Id:Date; b=ecFjydlU9hfMbJ+S8lSZ0wzYaXDpvJkorzhABp2ukeMPIv8HigaeQRKg4VCLD+vF6F+IlbbWmKua+h/9s/m05uBQi2/TqK1HJhl2uIlLJIV27OaLRJI+L74TZSZJcGE6cWhrU2eGiZ4d4vYxeUwMjwcc8cRDtLGCzYYV0EqTTAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke6XRUZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke6XRUZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1413C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792048233;
	bh=ZKM6YewsUHH++GzcgImwIyyYi2AfezZM5c0kPH6GcRo=;
	h=To:Subject:From:Date:From;
	b=ke6XRUZrVejI+gUxBfO8KYBT5Q0Fm88QfKRPMr2ZSsjSG31I8TJSCkiWKSDbgQF45
	 JWK/lYFBlB0s3YSF5lZ1vmFr0h+LwJK6RyOeAVNCFqbwSVbaAb1WK0tJ7vDw2wyWZQ
	 Y2DDnzNz6zjTzzmwFW6fkjfJud6OlbccsaKKLcLYVTg5BqH5OL7ddfK1yLr4s1mw9K
	 BNgomsD+9tm+GohK6VyN/fJ9CIEcK5OkSknlVdxDrLrHWlAUrihXUazN49MzzswkAJ
	 nobGHHgdVoxHFdKcGRFxBOuJ0MxdllSLk0cz5VbUTNsVTitUB3AgZbDKR/T/OPoQ8f
	 Wy34XALN2XdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD9CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204823369.22713.7316845097174514385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626a5b70b2197835f45bcf18df8806615b959e5b7c593e7cdebe08ef61e75c70
Date: Thu, 15 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792048233
