Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691B426D22
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782748714; cv=none; b=Q/oAvOMPdXDI0a8hcgoIFJK3+4mOwbaZRxoCY2A74UpAjbghKEQhxXLsSbUO1QjvX5CaXTrbL2PjlnvuTiQpkWCO50DUBTYeGKoJMG7etNTCMs8Qxj7Dndq40L0eUISzqFYai4RQBHI5xX1u/PpZKSr5NfuuCETf0W/FbA5KXfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782748714; c=relaxed/simple;
	bh=Idziw53rZ13uHH/2pc4x5zn52sq0GRNCXhSrxdsty1c=;
	h=To:Subject:From:Message-Id:Date; b=gVI3ESDsEFO6LiEph80u+zSBYgrP/8qD3BZCjT97pv5qu1u1PMQw+KfvGRMo9XVyhFm0hLgRLfnhog15n2EmhjDufctUSmc6SqMFf3CvVlvXfHFINvOZzZ1udIUmhIhQqs/BbOzKrm5RKqMHIDvZ+m0Hm+Pv08uKHii3bgn0qEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkjmyhlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkjmyhlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C385FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782748713;
	bh=Idziw53rZ13uHH/2pc4x5zn52sq0GRNCXhSrxdsty1c=;
	h=To:Subject:From:Date:From;
	b=KkjmyhlMZCQTSEVKVL0jjPaQb/fZLquZwDkU+flGJCeE3syCRF5by2l0Y7Ej5/u2y
	 6YihcwMXMCWFb4IkTAQunYKKiqi2WRUBBlltn30gLYtBZHWLCycXiPkCtSSvUXyMSH
	 HM65yCC79REtWsEmyyNhk5VGhdfG0iyv/IcR/OAgpDHIwlL5Fe5OJSEP8LRubNXIF4
	 z/htEpy3ngDLM+ZUJdfUTST8VJoUhAaGpoHrapcUpEJCUlRYa0c6uoZSShmRUFGyMC
	 5qJSZNIGtNXtK/q9W2XY6h7gy5ibfQb8J/AqJasGa1m2Y9Bsy2Mwg/5mYfOb44Rqc1
	 Z61qtjnZOtHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB189C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274871369.7373.13581662318329809194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f0dae3cb08163c9c34ea8405fdcdf18a13807fa4f31128f25896efe40dd929
Date: Mon, 29 Jun 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782748713
