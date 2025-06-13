Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB6291C3E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749806996; cv=none; b=CoiozRnYg9j3BzZt/PxdNbQ62bVXwaHNNJiGLKHpGqxGato/eMQmuG64bSmsmkRt6r01N+VcQOIzSTyKbhhzq3XygIMk5zI3w2eG/f/4orDoXAualE+t1KkvWlPS+sUv89OjXO0rEBeGskRnL/lqqymyi/lwSe0r/qcmtZN0kn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749806996; c=relaxed/simple;
	bh=HvtPO68ox27FuXZFibWSZduGcdivQTh5DFBaWxWzncE=;
	h=To:Subject:From:Message-Id:Date; b=A8lLKqZLuJygqxYtfb/TYolOvm6ygPauCGBfPWkH4FJJhM3cLH4tq1pB1U3DUDe5bAszQPHlAjC7qtfAy6SQhkFL25YJ871rDPGG2+35EsR3c+sZH1pyfsN2kD3c2uFqdgpOb7KsJKfh3cIqKs4qBkb1lUTkL39KtP3F2ae+3S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQrCLDV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQrCLDV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9897CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749806993;
	bh=HvtPO68ox27FuXZFibWSZduGcdivQTh5DFBaWxWzncE=;
	h=To:Subject:From:Date:From;
	b=qQrCLDV6qyNThv+BSI9a+QnobA8zwLH4glAFs9PMU91r9g4xWTp1raklECGjHuq5b
	 IngtEHmkqbBNWGuEfpTtdGj7EFT4kgLMNkDl6vdtkFU99hnfCQE8B14P+fyFJoJ5Jt
	 f1+EyXsfH4Y+3CVF+wS+/6SK+4dY+Rolu2VpmhWaqKHi7pWH7sEH9Km4ydgD/Merm6
	 rsZ4LzfbeEXqOXITR5prCfNuPVSDON8nOG1dKWm5RYD+tlgRnh+rD1vn2nk8xDdcJ9
	 MB6yeZkkm6neyFCPHnkSkD5J6cnI/VoWJ7WXf+83oxEi7DpAgRDtD9dyVt4dSbUbHO
	 X8b1WAic7pwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B04C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980699358.14761.6790181168184210791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62780ae9a3380fe1551f527fdf637bb2f522cb1c925c51119263bf756c2fdd0f
Date: Fri, 13 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749806993
