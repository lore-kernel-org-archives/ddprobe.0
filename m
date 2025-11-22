Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2101B230BE9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763797914; cv=none; b=PzM1zX2ERuAhhl19B1JUHb5FvqEXjvUQ93wp8EpYCW3WvCQJw2eHQXY8OIwEEjgKeQogfwckPBUoYiiIlhqLmdFE2qArf3FWvUOGtELvRdJe9+wxc5GMu/khNl8ocyEaHq/bnNsC6NoIXrcWvIpIZK77TxzedvaCEutuPwvymx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763797914; c=relaxed/simple;
	bh=EUEOQPE8z81+4jtbgP+2VArpdqH712CVeXZ/1ols9jI=;
	h=To:Subject:From:Message-Id:Date; b=jH6iCXxbpaYp7CGoRrpiIQBp3C5xyKSQwKEkDpErdWS9d7euqokXOQmMAsCf4vjSBl3iBjUHgWAl2ZWRoF4S5/6LGLV+KnJrHMTTinUwVqk1+8HgPvcm58vCYimhvxajAoS3ZNGajssevPnzdp+rzE7+iaOBeKzIp6mjkbZsA/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLEC3EG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLEC3EG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F46C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763797913;
	bh=EUEOQPE8z81+4jtbgP+2VArpdqH712CVeXZ/1ols9jI=;
	h=To:Subject:From:Date:From;
	b=eLEC3EG2SqTikqyclTV6bxCsfEUbCocs+aa++0fTaOolPoNo9dfZ6JO8laxiVq1ji
	 Cgowlhx5Fw0hdgVEYpYM7QFFZHcwTpZr53LkJ0NAyolkFUqVJyQk+M5rohg/0SKDF1
	 5ZAHt82iS/+wQTX5EdoTewKDNeT0qRn+PkWM7l88x/5vT1bivA270J4UuSHUh7XGM1
	 KLaJIXVcqh8yB413HWw09r/tXeF9X2GFzJGy30h9CQdtqGz0SLf2RsxiyaIgDJ9LQY
	 b/tPqiUvEoNmKGZi3V0W3K7zHmIAvS9XNxU7SUChf/fmXXaPosEGdRQyhqKFqf72jC
	 +I+w3wTlIqVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF9CFC50C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379791358.3907.10865307467730323804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3135a08666ad35e077c668290959aeb491482e0fb7d8322f5c3bf9019762853
Date: Sat, 22 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763797913
