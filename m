Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23AA8BEC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736578554; cv=none; b=T029bFPjj8aTFFeMHp8ntzetkt/Lud8T7zTqp+a3bK9Hduy5mCqBsPfl59s/AWuSA+6BZcZcCxzzeSMvlidghXYQYQ0CdXojeRm4yUNRbOzfA0/evhYu1ixzELlrNC2kGDZq63RiXKrQns/vWSfgvMiTgZKQW0nCuOWZyrcw1Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736578554; c=relaxed/simple;
	bh=5yEHsE/CN3M1bx96n+iZFZXLhFZ6ax483Fg9wXdT7/U=;
	h=To:Subject:From:Message-Id:Date; b=VVu5B5wVmBBVqSv2jYoLWtc8NubU0+U+zu0LRde5JUZDCQbjY0wtj/ZU5DK59SNSh/34R4fPIGQW2OfL2v3TrV1NUkkjdZpsmCrVruuzbGFc/qUkOmAKiHAdjP3CyhaKC13J+5SxVprDhGn0DGoS74weF6rkH8AtS992i4NQmjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET3+nXJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET3+nXJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0CEC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736578553;
	bh=5yEHsE/CN3M1bx96n+iZFZXLhFZ6ax483Fg9wXdT7/U=;
	h=To:Subject:From:Date:From;
	b=ET3+nXJXbVz47E84HoVy52+C6MEprP/hc8bzF1NAMrv5BaQJhuhFLeGJDE7ELSHtI
	 Zf9tRXhCwjWEKjrw/9DmkG+s44gqrTvH1FausbJdNuiJiJZj7Tw351sYSOFMVhDgAP
	 05tzGmmzgMkde91+LNJ4D96PE4c2slJk624P14ffbsDSmgj8Ba2yMKx+mhwsF74S6z
	 ttEoxQmKHpl2CMC3eCkudAwN+jEZuVD906l1MQv7l/aiNc7muUwmU+pGi/Zq7nxI9H
	 KyTR5No8g4+TL/DMGXr5KujRHTkFoqGFcoAx4uLczK5UnNAtXC3WagVVPfQ26kKKmd
	 7q7njg2fhS9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFA0E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657855359.27695.9630488204506301210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706efe9bb629275b016ff229f013a48fa6920bec8ae09aa6abae9cdc4870530b
Date: Sat, 11 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736578553
