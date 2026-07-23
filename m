Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D69D485CFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784821834; cv=none; b=PzPIGRVZ2ArDLfyYa/hPAWP4gB5qsMEkhRn4MwWv2r2ubU8Pxlrq+UG99I2HmlJNcsXYGr/LMnT/PqLkvePZmQ9ea1jJyNASYMnCpsJ8aIlP/sa4iAKOqffdatfe5EeyhmFt3PIKJDHQd7AXvkt6wq6Ys9dniCYFT0FrLbLKhrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784821834; c=relaxed/simple;
	bh=kGvwPtigsOjdDo8SJkp030nBnI0TtDEU9xnf7TL4a/k=;
	h=To:Subject:From:Message-Id:Date; b=SKT9mvv8E4va8vx+w4YNam3TZ7W+dujMhvNqYls29wgw7wgHum2fyWzJPNHW9vet8ZRclW1uTqa9s9ireUrnK8XBMAAOLoYdkEtKiFQk0ktMKjwaaNFUiNZOYLIZ9oIFO+YIeMis8h9xZu8vZN0aK9yvOdsJYu+V7+pqahK7dkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGMACidL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGMACidL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC783C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784821833;
	bh=kGvwPtigsOjdDo8SJkp030nBnI0TtDEU9xnf7TL4a/k=;
	h=To:Subject:From:Date:From;
	b=DGMACidLv1s5Iz6IqonbzDtYuJlaWkx9okkzg0iUYA3kEEU67zH4SzFZk6LlO7hTx
	 KhTN9NFPWCYhmV6Ak87khRrt2WhBiLVac4O2Rkq3eXxP/C+CNTKgKrSj8N9JPrIkpq
	 LiHB3lImJEuJEOmhQb7OdNgjCc6CBhfquryeN4vJXihk7rXNmQgbZ58UnTJ7bR/0xE
	 jCHGaKbrNvh/1a2wtoWfHfbl70zLWzIEsBdHgnRnC7x+PHmz40NRiqsGUWr48a0aJX
	 ZHY9A4OUOZraxvT4aRXHrMl22jsbv1ril2kSpPy6nZ2ujlyrkRLBWknXthURNc/qx8
	 iuKVrLveWMH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C3C531D1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482183368.1485.9378137949263807001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e423db9966dca06542c5979861707d4d584707c26cf6c35347b6b3ac3b1b943
Date: Thu, 23 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784821833
