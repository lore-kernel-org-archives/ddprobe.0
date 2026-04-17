Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBCA24A047
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776451654; cv=none; b=ftO7MzpEAKMM19QPotgjsZA4d67txzwV49+4IiNoZPe1aR4zvbAQGETO2S3Hi0LGWdgv8vQjJV/9k6SMa9Y0u0B/hBWMROFuIPRfVlbB1NWSvmCUIkwir6qVnTWMmfGUkzxnQc/NC3VIl7kJY58enhZzWaKxulu07eZqO9ktbzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776451654; c=relaxed/simple;
	bh=2/m3X1RZgoFtDJKAzex8LJXvZBEDX1g2k+x1rj1fysc=;
	h=To:Subject:From:Message-Id:Date; b=AGSbrZKbBkhG9IsWJ6zFq7GkcwSrsz3O1trQOm4dtfImfJAXJWDYnW7pjEoQ80X6pPHh/nbF5QEc0wSP4e52t05+2UdZUKYSwxn4ciCSTaP4zrctYzM2rG2i3PRMJRmGSW0okuJyuXM5v2fG2JHMv1gsZj7wiEoem2+5wJFK0l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syK8jZ6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syK8jZ6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38FFC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776451653;
	bh=2/m3X1RZgoFtDJKAzex8LJXvZBEDX1g2k+x1rj1fysc=;
	h=To:Subject:From:Date:From;
	b=syK8jZ6N46n4lnchBIc+4jcSCEgNLli5klkZpivnLHNnoZNMBU/wfNt3o6NmXkwHU
	 aZZNt84JMg1jbQHQIk8acbJD02kvjI9c+NT1fAFjObiWmehpU4gMMYHzMcDq0cyyXq
	 hRcDU0fhjJazfl3iNcau5wLA+rYuPyhfWBb/cai8eeaCtoLSowYsz/t8d/W3VhZ7J8
	 D6bdYebWZmip11C6dAQsvQdPZ7MKqv35R6+obdhtmC/BSbl6w/LncfzJ+VPf/2KjIl
	 a9RSRQpp1ZXYt7Bgtiyf4RDoS30kZeeHdthL4NBhHoewdxZx5iJUrwLXX0+yvoqjwq
	 8VAuUpIEtr3MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0116F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645165368.7595.15760184552582480031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e190ccd8bc6ab2cd77ca6e04e0a5f4c26293e298cae06c7f1c8ab7780723c1aa
Date: Fri, 17 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776451653
