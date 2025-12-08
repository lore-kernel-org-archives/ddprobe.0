Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E9225CC74
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765191774; cv=none; b=r5NMgyqJF0qF7+gJnkIaiUQ64+7zpjwAEOaAootBlTHuKhU/rBR4thBgAKWkMzaHxkOzx0EslpvdS8BAVzENUdF/g9Xzdq+SPz8scDGv1kjn3Yl8EekvFa1uydewUxkMiELszcYk4JgJboto/Nrg13xSAFW/wsxkJTcGFhkxQnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765191774; c=relaxed/simple;
	bh=L5jyVKxP2zKtWsjQMDdaIf1VuAX1MZ0QKHaqKYxb7W4=;
	h=To:Subject:From:Message-Id:Date; b=Jo0dwJZCuxAKscmcVCjf4qZ7NRvmcMgvWrnuqUZM8wCTock1A1Q8ldoyca2wAyMUeamzwcjv9JZq0Er7+kBf2esgX3dR90TKhvM1iSeAPEy4z7MPSkfAa5p/8IzN6BtvOcjQ+qP7wqxptFSpbU9T9BtsxI4wtizOIPeQK3oYi2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGxd/llS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGxd/llS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A438BC19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765191773;
	bh=L5jyVKxP2zKtWsjQMDdaIf1VuAX1MZ0QKHaqKYxb7W4=;
	h=To:Subject:From:Date:From;
	b=QGxd/llSSPb8nKSwBQ1GnBSNiJ88Mi02dA0K2lNRPURc2V4PkpOWCKGPHN/MU9eJa
	 QlTrCst3A6ZrOLOxwBVlb+GjKrNTxFS9HvqiEe/fb7mhm7puVcfXFDpYzLEBanNWA1
	 8UYInCJaVzDsrVBQ+Tn9t9w/0eSUnUH9QjX6820nbf20noNGb4eXiNT5PyGL1j3QHw
	 Kl7H3h5MEVYVVh1NI0HX7wgMox/YJYaWGpMUKwuzkV9rXXusMiwZPctqPxkE4QFuCz
	 nymtoZtfWi34WYyaFsqXYUDMI2p0sDipKjDWePCDlcqI05dNQH39bdYFok+4vSxgxk
	 K3jOOMqmIXpkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519177359.4410.18255996495550303557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df85698546360a30f4e9eb2d2d27819f1b4760b09c7715ff1036af869ba3bae
Date: Mon, 08 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765191773
