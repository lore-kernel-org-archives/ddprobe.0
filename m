Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9D8828
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748768994; cv=none; b=AjZ883YsHZdg+oKBGZ+y6rzcUbhH5JYdibXuMsbG9oR5LCn/aJte0WX6ducp3s5MDhfSs2bSJgGWpusJ5uZsg8pDwvepK74YSE0tCB7sFKhTc0OEqNSdnE/TEZpTAfAHjvkRyCkYNcw0/khotRIwkU0R1eViqPO6hKCu1rfMkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748768994; c=relaxed/simple;
	bh=zS9O0j3J8ksnU0kfcsbWxY34KlqXvdEP1Ricm6aN6T0=;
	h=To:Subject:From:Message-Id:Date; b=isWA6cVA8FGHD+14bO8EMqI64431gcZVYpTvKDL8FNdqxF70K3xVr24sb6uY0YZX1SqyRm08itN+y3+0juBDPWpqPAblY178pFT8HkmJ7ZjwzLZoF+nXUHk2iAXJqXln6COfLWgX7ZvaDZQoo9Pv1ZiObBo+Z+iXf8P7N1nBZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2ldT2JH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2ldT2JH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748768993;
	bh=zS9O0j3J8ksnU0kfcsbWxY34KlqXvdEP1Ricm6aN6T0=;
	h=To:Subject:From:Date:From;
	b=f2ldT2JHIsMAE27k2tljjDelZ0ys0Ei8tTbdgXt3K3MHowZB8gClKn/X14FaRqA45
	 D517vX7GjNzIQNtTN86RkHM3lT20DmxydYUYACZF0+vi4xYkPcS5UaJAesz6QZcCJo
	 fzyqBchVrh0E6Cc3zZesRL6DXaAr1jII3Y98dfqdeIYTsY/CTPYdfiABPMhunKpP5V
	 Etn98QIlk89e6FFqXrt25B4CmNxMJ9O+ed7sLCfxPWnmeEIYLy9Qm6M6yUh5jpmA3n
	 A9GSuMtBGa8A0ZF9gpsY/qmRib3r2pdXK258A6x2inU/aAAnYTtwCIfJmJqrdBGPxZ
	 AOUCxDH3Le2Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91802C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876899357.3963.8516711143644253767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dc2c4609a5a8f2f3cc9e3aa229b294c2c09167c51d6d9b241c60e77b7c2c07
Date: Sun, 01 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748768993
