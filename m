Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECD82F39D6
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760109594; cv=none; b=cbNrVCH39+UV371f/PdOeG4LGrJcsgIu5ha0Px5/eu/VxNUuqQIGwMu71/ngTmJOQQH+sTYoUQLZdAKPFFT/JscJookYKfvlH91RzPC5pmPAR1RPgac4y51KZInUTq/d0LwdzKeXTUb8tgbYa1pXIBrYSpZhgjWCQ2EtDQBh8bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760109594; c=relaxed/simple;
	bh=7N9QmiG8rAoarIGmWCJ1H7AGW+a6ItnJmjSsGyONn0A=;
	h=To:Subject:From:Message-Id:Date; b=sS6LVS/ckjBeVnmHauEyAJBEkLt8yCe8Z3y/oHy7UzZcEENGrG+bP26oL+JY8TJaikOOLZewa9vjZoeKpaGuhufe16wSNYFknvZmI/hYmSOlxK+FEtuQvvYqNW8L9LvqLjPeOhmk1kHgmju8S0/I0mewCEZx1+jml90v2nP/kjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq1ym1a7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq1ym1a7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2E6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760109593;
	bh=7N9QmiG8rAoarIGmWCJ1H7AGW+a6ItnJmjSsGyONn0A=;
	h=To:Subject:From:Date:From;
	b=tq1ym1a7FlWwzjyh9aQk7OrQGim6EIUxllOHsOPceRkXbHIWVE4R2c1UBnri8vUee
	 AP+VvN+5GG0yq/PTN4NfDd67vobQgHaXB06NKykqYVDEnHOXWmD/qdExkqBwEPh0im
	 rdN8E0pBo/Ce2CWSphdYan6sNb7T16rpgLB/aVWI89tVmpe4/CzqH+t2hZ7WULbOP4
	 ZNEdDIzLRvEaf7oqz8p8eBYP+cuNaFKXfEcDYB0Iy9yOpQNZx0FsfQXiLb5rXlSB4D
	 3rCP9MR868hNJUPO9H+mvw1d+2qUwsk6JmOL+BmEHyayXZJBJtXwsACfw0pI9LG7ri
	 aAvpn1gfELCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F561CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010959357.3686.16823933742551232387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4faf828f3251e808563c45cced91b677da0980704bb3e1830724fabba891bac
Date: Fri, 10 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760109593
