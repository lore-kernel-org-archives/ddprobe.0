Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA381BD9C9
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763960514; cv=none; b=AqPtFzi1JJHpJ15+Tb6J/evDvoWC20vROPYjwuT3p3WPVx7lWlA0O8DS66FquWszRh+aSEPKSpO0KfnJtcxUsFWvE3f4Dgb4tI4PfD4iDNvXaRzVnZWxCh4biQMgvhvjfH4jweiMQedHb2/9qd1jfnQzojJlmwFOQnsMqpat5Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763960514; c=relaxed/simple;
	bh=95j6Q2TdBHRkYNID1b1vPOO4sWwK0LPU87mszu/65F8=;
	h=To:Subject:From:Message-Id:Date; b=DcKfK5UUz6Fy2NVjy9ULyxLCefwQ+VCyDpcsvzxx1qC2O29CseKGk1ox9+bKSWKcUw/b9LYrQQnMSkL5yRM81m0w56gNrcEoy7JUVbu94faDMw3RkCMrDe1V5MyKMRJP/cxc/mOQ80nSl5H1tXiwpOcWPzoXv/7rTZRzee4xbLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1W8VeNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1W8VeNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB3EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763960513;
	bh=95j6Q2TdBHRkYNID1b1vPOO4sWwK0LPU87mszu/65F8=;
	h=To:Subject:From:Date:From;
	b=e1W8VeNM+JLJ5M8s2tbVpICOSqUgi80vQO7Ho/91t/svQooRDuWvZYcxY+44M8DFd
	 ukEdcRmtEQmFKlvaTS6Bo5r7qMWQ+oM8iZO6PvTGzZVkrPbTChVndj2GhKe3DWWkkv
	 PKl+p3WBKDeRbTruS7kv2E/RC/Y9u3XN+IiGz4xteLDoc5RwaXiD8KiPBXEArpOXd4
	 5IODsrT2cG+lonwcPYTNmtkOZcKpsoP6WcQXGagh43ijJ3R6D+vium9qIQUhLqvA7O
	 gqv7QLWXUdYjmqXi8v8VRTtuTCo5dXg5nbQeV/safgLj9EMExTav4lY369kpFENZ7I
	 wOmF+j1O0Buew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98803CFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396051359.16202.3372756869272319199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263df5cb6519d9819ecefd1f1541d451c814fdf48cd20a1a3727fd68ab9cd6e1
Date: Mon, 24 Nov 2025 05:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763960513
