Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2986C2E36E4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753676994; cv=none; b=Dd4m5KXCM9USHmy4RfroViJFIKGyhxj5rX8giYXC5+WQ9I99dfiEuti9KFXz5lbSdMkxyp9s+1vFDv9VnoumKlHeKjUZo7afqXOLpOK5L8Jyg3KIgHHwBXR9CF5jUgvyRfTWyH7QVsBq3SEpyIydUSVLcS6Hg3kd370EckJ7/Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753676994; c=relaxed/simple;
	bh=OixxJEi6al6dBg0d4SzRDIrVY5rQrxaazLzuR23t+rI=;
	h=To:Subject:From:Message-Id:Date; b=pCaKciAzVWP/DksUeAZcVhntp1tMzYQ6r9s6TXlDQeWIjB8W1O8QQBUvruxepUpT2GMURN0CxKVdmXf9z6b1hDYfetkJ2Q0ZPUtOWNH6YYXe5jkeigMMJzXNd6KHneaBi1GbSl5uWGP3EE3n6VnB77Jt0eUUjwcfdSuWo0sq3YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QT62Q7It; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QT62Q7It"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77EDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753676993;
	bh=OixxJEi6al6dBg0d4SzRDIrVY5rQrxaazLzuR23t+rI=;
	h=To:Subject:From:Date:From;
	b=QT62Q7ItHVVeQkoL8iqhHj5unxeu5/U2izOijAv2wj39NNiLwjFiZ5cFqVUHznj2w
	 X4V7WubgnJIBAoHX9t6QFpxSMGU1hBkB0B/J1Ex9zrDbiHYU+8ah+wDfVyqxs2Kuwh
	 Sxo1HygfIq3kLZf7BSpXVcbVs/hwGAGPVW4TMPpSmh2kL2cbbjVZ34AoB+exfJ9QEo
	 wImfH3SH81AV6grWVlrsLn0Xv3y25YRjdOEOZuJe45hhFyr40sby7GU01gM48vr2Nf
	 hEVx1oKwPiV233AR61985ikUxbGeVERf7ckUmtb3XDJ9kxmHaJfFf3Lm/rqti3+fkL
	 ddPtAfo7Sxv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954BDC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367699358.32249.17165180451064390023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f55d672081a33902c89f7f80059c490c06d1cf8a07dc01dafb0f93d7e96bde0
Date: Mon, 28 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753676993
