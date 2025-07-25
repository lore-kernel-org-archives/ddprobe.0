Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44712274FC8
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753447794; cv=none; b=Tci5CUAOiurDj/LMMmi7sQNBLBH3Mp03IrRApe9kIRN+L+7we8nNRZIsqg9A7P4tsykz60gXHHvNn2m7poeQ2B8F9NCXiDpdhE9yGopkKb/TMK8uRjkGNiZZ35Ej4I3GknDjJmisMTaNLedOr7qX0W6uVZ4On6quqq76JhODf20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753447794; c=relaxed/simple;
	bh=yIQsShY/VeLMXLiZS9rMYxNMYbOW993LNZ2+RQBbgTM=;
	h=To:Subject:From:Message-Id:Date; b=emGncopcti9vuV5CNr4nwECo4F1FQ7MwgnjGQAIkg1WftmSUwP1/q4a3A9YAzihMy65B9ciZYzByTxaYToeVgFptRzduYdP25fss9VnWxc+KBclQlk5qNbiepQmYVI+xJcXkgqOMYKm+HqIQ+rrOpSzZTXQjCDhRO+DaW1Rmq18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXMZnuuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXMZnuuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4687C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753447793;
	bh=yIQsShY/VeLMXLiZS9rMYxNMYbOW993LNZ2+RQBbgTM=;
	h=To:Subject:From:Date:From;
	b=FXMZnuuM+/xNFaXiZa3KOzS0bMy7kJ9nChnxJgPjDJcHzV7mYmStEn+SuekFVFeVq
	 MzKjyRIziwHmSUdug8ZUjaSTOsJP7d99kdDBe9oOTrGRmcUVYUTF+qvpwX9Qt/ccEq
	 YDS2NIyVxxoOS0+VaaJAsDlOu11bL4spOyzVnO9j1rM2+60Agl38RAdrtCPI0e1n+H
	 yboSRrE8krfziGxjeZyva8CguZaXHYaxrLLmCoGtC2f9s7M73OHWlLariWuqnj7HcL
	 VqbJ3SixlRP6Y29AfM+ew0ngzbZvG9VhU59ODuIRzIjjI/g/hkBzqaUvm8k4xP8G4N
	 Xha3SlYE6pwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EE7C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344779357.13847.6996031001200111696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a867279af766b30bbd332a35778c63e3d0a4e19897dceedc134f2067be32c5
Date: Fri, 25 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753447793
