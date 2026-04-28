Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2401D24A047
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777414054; cv=none; b=kYcfEDF+TW2S6o3cROte1rt4lNvJbJTqF/8Bdki9Hq4YyJ5h7NG7RgKhTHJvZKuJq6w5ELFAXL1Dz8qMKZSyZh1AAEXUs5uZPnXMUFCq4oOHOzr55sDW1CE603Z5FRS/ThrgEKfRW5OBxqYLq5rQRxBKnrDudtN6DMPY4eHXrBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777414054; c=relaxed/simple;
	bh=Lc/3MDPZrrIKxntyI+w5sRk0cdZuncXBGsJ5zQcreDQ=;
	h=To:Subject:From:Message-Id:Date; b=VtRdUNzz9Yy+YFKmJY80kID/7JOZp4pv5rPjDcgLm/p5R+bYbQnRd+/E1q1fhu/berC2YmEXqj0QUcepTstG0oq+sjfACxge9NszrXdvyaHdmEpD3UQ2MNMSVGM4YPF2FHI75CifhsgpbxJHW9lq3BrdYCDeb/ex8YI03dKiqKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyDID+qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyDID+qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777414053;
	bh=Lc/3MDPZrrIKxntyI+w5sRk0cdZuncXBGsJ5zQcreDQ=;
	h=To:Subject:From:Date:From;
	b=SyDID+qD/FiA1b7jyEPn3Xqt8PUF06AhkoSGnw8tkLuihPYzYBCMEVKnAvksryO3H
	 +tCfoUC01SGXlvQvKAwHvd1fO/Uz/vVDNeggfzaBlA7pO+CvHvRjSvoZj7fB581iXH
	 0ayu2bLRBLS6qlaq6Tgx4iNA9QWKoqFq3qv9WR1Q6P39uMnqHWY2/RRCXb0aUYNnUa
	 H7GyM9FB3e4XvQkRp6x8jlPcc65Q9GwjdLEkMi6z2d/zgJur0tuaM3fKtGVP0OIr3y
	 RvyviSjCBMhljcvp5lKQQB270FnZJZwm+O5qbHr75j/MJUJKa5IMQO84S1mR31SMu1
	 ThvKQnxJOkOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741405368.27208.10901240559789034405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfb0abc4d8677465ffe8740dde60d5dae609735a78d5cc6d2d667563153b242
Date: Tue, 28 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777414053
