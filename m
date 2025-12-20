Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E317D6
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766246034; cv=none; b=a/zf35JxyX59cxBap3UecaVbBxIODHQST542r0KOKDRsMshmhHVtBLX1Crtp5BRfpvk3Yr5k+q+LgQ5B1gp1DbGv9It47TxoAkV+eXZq2nxAATZH4weL+5XLzwtut+CCXzJuXVnErmMQwrz3b4x3Vl/14xnfzxcuQVwN6W+3zZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766246034; c=relaxed/simple;
	bh=mK3YgIuszLcoMQ0PtTlk8cwgDfrqyLqdJ7OKq8MJBuM=;
	h=To:Subject:From:Message-Id:Date; b=cxwv0LNhL/fYNiykxvl6cdibHRc04Km9sB0NWp4ffsyfljNVI3jXC6XHBLQmsOnVGt6pYO2hkRGF3l0ZKvUqikznjcxqKZiPX+qZ7pr3Lig1g1WRrsnMjxFNlcvhxBEwsR9Fzv4nd/6CITg8vFIcEWE81mdgoodErfCgVCKwXf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqyfXXpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqyfXXpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C33C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766246033;
	bh=mK3YgIuszLcoMQ0PtTlk8cwgDfrqyLqdJ7OKq8MJBuM=;
	h=To:Subject:From:Date:From;
	b=MqyfXXpKNY0y15pXLdwNN61Qz7/waym0bbalhkXSxQqe4OVn4ekEF896Wl0PbYOtz
	 i/awx+ar6XX1xHKvISrQgNas7lovlDbSiTQ8CzactcrISGlxeyOeYkt6eOrvbyE3HP
	 tuoN3SNCE9PeSjyyQnw42Jtekwazb62QSw6OOl4bCz3xeZ1wx08tIzY8fTRYq9E1kQ
	 TUYCXWdskoHycMxgbYGSKQfb9T+2Il2OILtZyP2oS5A20cx11j00wY4Uspie3SvktC
	 gkdVlXMtgXc5HyRqCzZOZ6vI6geqKEtWVzGqVKBE2QabKqtb5tu0qfJtaIFpuccHMo
	 9hdUqiNJn41rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CAE668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624603358.20880.10223502146135290992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e61352ff82061396d77aee981065f80b501c2dcc66b72a0baea65e9a430247
Date: Sat, 20 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766246033
