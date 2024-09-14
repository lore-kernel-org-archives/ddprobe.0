Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A331FB4
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726329354; cv=none; b=pA2Ye3WEgaz0EhqSAhWfBFgVHbxvoldFgRg/SIPMCwZuPqdRufz3daDeRTpybeQg1kSlq0QdR3pt8X1SEtJVEk3BO/2HyVSd7Nt7kldmGeKlPnvaVF1y1ujx0mFDWal2alrhGfmxpeJ9nFTJ22szskbjLD1WxCss404O6ijKV48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726329354; c=relaxed/simple;
	bh=4QfEVApdkZQvhr4xdQvTqwlPR03irT1aJX5JaVmD7+Y=;
	h=To:Subject:From:Message-Id:Date; b=GD+YJK0DNy2j7bizZvgR8NSyaiPbahHurigLzHLSE4Zodh4skVhGoWfRz0h+yclL8sPE4lxcd63eGtMcuA/x7BLOlTle17n05QjYIZi6MDhh32cjzCG6z57JGsD7qt6uFmN1f5sHM8HMTPkykbR4ltjdKuIdykm3H1kkNNrUFrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WinaR0+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WinaR0+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51DDC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726329353;
	bh=4QfEVApdkZQvhr4xdQvTqwlPR03irT1aJX5JaVmD7+Y=;
	h=To:Subject:From:Date:From;
	b=WinaR0+2vH7ezp0yWOPhf+fHn31LavdgDKgiwH9kanSQ2m83XMl6CsBaexolSF6Am
	 IsHfFSOgmlQtD7vo9ZKQPsd+vI93PdV1QQTjtdXCxbIPbkYCPpAbixK8yjshqb4Yg7
	 9hBpwh60trejOLOrxMZeu5wxK6gJWo/LuMvgyzmooKjSoz+DtC+cy+n4t0TNDo0Ih2
	 P1EXa7zg9Xy7lub47mgD+/pxaLoJeruwRSWSaP5FFeHjtrAQJy1ZZ+3+1RUlUUbhPE
	 zaEEMYAdTWz0gq8ULeHgWY+mssjWlEYFd/ii0NMHV+IVQR/9BvjJPRkPiKZX1FrS3g
	 SjAKkQctSwZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4EC0219F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632935357.13388.16606548261621558100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de2722eeb07a6363d77a147efbb8a6d6ef0b987febaabe7620f5a2f694aedf8
Date: Sat, 14 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726329353
