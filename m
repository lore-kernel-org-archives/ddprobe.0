Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3591F1A83F8
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757219395; cv=none; b=SmLZIFCUaobk6/WtS3OkpN7AFVvrIC/CzSQ0i6O6eQQpzqomYCU2u8FB4kxhj4P6t0xuBUmlKahNmSGaF1+RNeJqYC8yL4v63tNAXKhDlLYZaviLOBqJ4nJuhqwwnzo9UfVnkNd82/E8yFaZ1bERB7UBpiY7k2vC4H82KZy5Pms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757219395; c=relaxed/simple;
	bh=Jftxbb3TWONzAQ/Cpckoe1SRJ5Y5QXyNkMyIZd9ZZRM=;
	h=To:Subject:From:Message-Id:Date; b=JiUPh4jkD7lVCA9LszfRUNRGIzB/s21bvCVNc93mJ2ZOTyvMnc0PNqiLBKHBshQQuvUPAUHvbGWapLAqPDVOL7/vdCcws4n+0lfFWOE0JKLpCRpNIsO1b6nNr9az8snnqfd6ARpkJV1PlPH1bJNhXRgY577SsFHWhQn5v+0rXo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKa4uqd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKa4uqd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74AFC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757219393;
	bh=Jftxbb3TWONzAQ/Cpckoe1SRJ5Y5QXyNkMyIZd9ZZRM=;
	h=To:Subject:From:Date:From;
	b=TKa4uqd8Ti3qA5jTsK+pMj+u02sjlPY4Wmj0GcTeNMdsQyxKeFhg1HeTWthHdzWXG
	 iGy7y7//6ZmC3pd7NSIk3Rpe/NbVo4I+lhIadXtoLviF6EIfPN+9SJksp3V42sZxic
	 gm2QtZPqFZLxGCy0kkPnuPKUmS+Pyk7Ko5+llg1xgpU1+g8W6LfAiMxw9M1ETv13+a
	 vBLrqk3OHm9t+chcsHqW79nhQwn5OrYF7muvHJHNnTJqXDLwnyhPC5HeEIo9OLdEfa
	 dlGEP6i09IoAGSPMUmR4hoKAqOmH2ZZZGu/8KYTBD44J6Sv1EKsjv+KEWuJ/bZ/wS5
	 EV0bRkmO5uOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C85CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721939357.24158.16086256227927728647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b24239050260a2b48afea0e226b8d036d7a8fed4faf6ddb71e6df0873259c2c
Date: Sun, 07 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757219393
