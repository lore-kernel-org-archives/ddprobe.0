Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6455117FE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720266923; cv=none; b=PZZoolFg5JXV70fv19b1vuX2mqI2IM3/R8F6pABA5oKvBfUkBzh8m3cHouvjDxgNmmBdipN2Yod+aSEZyFvthceU9+mOsbceJjSYkSsKgFFNchwINFnrOXb2g2Wi/F4JbQrlqRxtmsk9EtFmV549+x4GlnOCJ7hNvUuimIhaPGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720266923; c=relaxed/simple;
	bh=EBkzKzekIj1TUQfEfPhMxmsyaBOdhA7StxsLEdYocpU=;
	h=To:Subject:From:Message-Id:Date; b=UZf7uv2MUWp4NOe79C6El3tjNNprTFmLoYky20enihr9he/5gvMxtQd99ki+KdHvcCo2gnkMXMaFwhjQj6aY9Ogi1B11Tn9hI7tY8mBpPzHcc7V5Ix7KD7KMy7x08OctnjNdfwZxI+PwJhz8GY4mW07SuYTQWbNsG2HTQsyQ74s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXI24T5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXI24T5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E880BC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720266922;
	bh=EBkzKzekIj1TUQfEfPhMxmsyaBOdhA7StxsLEdYocpU=;
	h=To:Subject:From:Date:From;
	b=eXI24T5si8rbXwo/1fkLYfTORPq+VJ7imZfkBg0CKfozVMvpevfRMxGmCJVfmjavD
	 Xbw5y4UxsK/Vp3G6ErqayI6JCq4QUMKyCYsthR9uxQhzDiSU6BgTd7S6amK/Dl/efS
	 +j8Xi56GDNisDhI3jzmz4C/3jaR0cI9s6djKjIf9YRGWLCNaBbUg2G28y/hsaBtLdg
	 ImonjoDzCr3+42mL/7EYC64DdrV/ZHtK17ncE11vcmJFkOHt58xXNnqcMNJfHWZoD7
	 zI1nlXnnCrRiutsAJoIo9mkzHfqjF6B1jJBu83UoJ52gS/fmCxDE+tCjD/ivMsGQOh
	 kVdQlvoY+8p2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E83C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026692281.18105.4801788501823168130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea2b10ef646c9c60574d65b028c68be98d5958280d247e533655837e88f10ab
Date: Sat, 06 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720266922
