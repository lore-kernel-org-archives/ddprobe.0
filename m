Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5461F8AC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768160034; cv=none; b=m1GZ0zPfgKd9w2QrX12pruFz7XzNNhh9yB633UGXY+Vq62woCKgDLL4brPQQR9SCZ43Wef8uVTBgpSfIUThUdyvOsEJJ8lSva5LUCZo6ghS+f4w9tWHKjRZSjopwUntUhL4WqCnWHAG3RW+2YRwAjyvYhnJ3vrPnGPQjt6Fpt+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768160034; c=relaxed/simple;
	bh=QidjKt+dNdsbmTChXO06+jgS6mLx4Ih5Rdk0M6oDDmw=;
	h=To:Subject:From:Message-Id:Date; b=VtR6kFGK0TzfRdV81i0VByRlwU2vzfL3TaGu9McyCEDNpPcpKkbk9uQPHJLHXmlL3DGDk1AzQJICscaDUhyHlN8r5+WuYt6O4ebIp74wZVPIcKfs+JDm0wPuwriiaZnps2lxGWv5rFZy/X7URfwKuKTGQu93DXLkyyE/cHYOzfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgKhPlc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgKhPlc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B09C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768160033;
	bh=QidjKt+dNdsbmTChXO06+jgS6mLx4Ih5Rdk0M6oDDmw=;
	h=To:Subject:From:Date:From;
	b=TgKhPlc2d0thvZabEriKzp+eqOD/3IvPaPYjQLphKZn8ikVdD/LaugehdSv/C0SW8
	 RMOdVTuQjuTYOIGsP1CDuLkwFlzJjv96FcYo6NxV81rOhN9QgwxN4PvnqT6/rnmfLh
	 e2JTK9fweEIgzx4wnbvW2ZEb0oZZFT72/IlRD4hq2iNYn+/+6lf0/M/WavZaoFU5PW
	 02QqgGAqQvFVfdaHxo7DHeRirvENbcxqe9VH9rk976GhV6/icEKDtW5LWYKFJEd9F1
	 HVwBlUyc/7/MMmgAfcAiRHWedY7SLTSz1tDbpcGKpuNRA2wurgINHchWkBqVchJ/XU
	 K2qznYeh2UsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93612D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816003358.20565.4721392201603799828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9a24fce0cf8ed07b0618fec2bf3f554303102618e83a393dd9b4e38b7002d6
Date: Sun, 11 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768160033
