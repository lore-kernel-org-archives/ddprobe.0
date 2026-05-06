Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A8030CD80
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778098654; cv=none; b=MEuwFJqjTe2S4fppaBH3UfjxiYLjX5LwSV8KQdnrE6DJ7HSoVaYSz7lfTg0JX5y/Xg0+9sIGaD/vt/hqBcAlYQgj688WyNLOXHmhY2ShL3f7Pa55att9sDgF15/yQnW4xRw1tHzWxBuznuVjBwLctpNuv+DmAX2w8gfcp9U4lHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778098654; c=relaxed/simple;
	bh=Jrd5Uz7NmkGd5WBqaEchvRICSDqqZHK0jP0uFEyj2pA=;
	h=To:Subject:From:Message-Id:Date; b=suy0gImOC47ld7vZ+3MQx8nVB9XF5U8nBkxs3wCWeTKIU6igB2cD/dBMCyEgGOX41FOEsgRPvKvTitecM4Yk5XBqNsphQxwSJ4kA8X2UGJ5Sm6yFfnbAizJLQY61R4hi9QeZZS5/AgTJlb5R5MnTKaTuanwM25Tlo0NqEPHpsNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pty/yMR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pty/yMR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB62EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778098653;
	bh=Jrd5Uz7NmkGd5WBqaEchvRICSDqqZHK0jP0uFEyj2pA=;
	h=To:Subject:From:Date:From;
	b=pty/yMR04vc0u2Mfjl6Wa1AaivbhSwbHST0HIxR5ECrc8YfTZjzolMIiOULvUuMYD
	 lR5WVSU7usy5UmWAqEeF4ehQbYJ3TipqPeHatiNrZKJ415muis/bt7tx/5Se0TYctx
	 oLyWfQRnjCAFjU0s0YR+WXf0SjrgRiqgEH27pH47x3laKiJd7IsdpCSC/FhkthwkYM
	 mykNHHk6aU6ACVUE7IOrGuy11U6bALLdFggaQurcZ8r6j2tS4l1MtdysyorsdHSONy
	 x1/vUEG+J06yl76c08/ZiApiG2iU8ZUflsv3zr4lBi7FiilCPpyMjYsnSXBFFqLwIw
	 D0FvDJEPDrOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA202CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809865368.8131.9398528507297689192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a4d2c6006c9647487fc3d00ee653f923851d1688c4f59959eb3696988acd3c
Date: Wed, 06 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778098653
