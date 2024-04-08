Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F249A57895
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712562497; cv=none; b=d4mnsG0ZfIphHnuLOhvYcYFCnVl82g1kn6NSrS1yvjeN41mkmaV5MULo5y4od9WM3Krzi3JcKkXRCTQvXpKZ0P7jH1FyoZCCqnAfyX+S+L+EXFQn+qP5F8WVsY/3SAzCdVRliQ9/jfUboRM+JJi/4vRkbLYx4gSNkaRu3Q48UNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712562497; c=relaxed/simple;
	bh=1EPdhAq0w+bWaPXkhc1/KReLY9JijjFJd/elTr2HauE=;
	h=To:Subject:From:Message-Id:Date; b=Jw5PAC50/K9D8Brh+9zpN0ZPwjcP4OrSSjPZ0BCdENKlqC4rNrIJ6WyMKExS3jwcblDbJpVhgY+gjA3iyrjdy+AQqdZZ+RBBjrPdDv+72FAKY/ztCKN51VgU2VPk/W/0dP7yUeKsSgDH4nzdvhlzbzq5upwnX02QNQ6wGokTu4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjf8SVAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjf8SVAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD17C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712562496;
	bh=1EPdhAq0w+bWaPXkhc1/KReLY9JijjFJd/elTr2HauE=;
	h=To:Subject:From:Date:From;
	b=jjf8SVAXBPJp0n2HKm0i5g7pa/3Q3DVW4zVSPi391j0FchPU+HNiyOqs7wZ2fdop5
	 Iaz3p7TXdEgSmSfOfxcCyKOHhiMfgZnNHjDFF6U8zvkYpny8Ang7RmjUVYtJN9OX4s
	 I9K0lqyBKO9uHxUl6GQGMJlqJl0U+nQl2HGU3LZJ0VuTxuWS65bmny/wUNudrps9d3
	 McMWttAtF139txtMx63r/dr0Ym/yjb3CNtCOWzWIFz/7WcmVrGBObVAKqbTpZGwqVP
	 Wg+MK/RRpsWEwwbEkJ2oLAp/KB1dr9opTCiPVBkw5VNFySYG16ePFg+XytJs0r2Dl5
	 TW3/nrAy3wLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8B1C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256249644.16667.3473783918850494630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ad70db8a9b20ea87af950eacf77a69a3c2c449a05f12451e891841cb9316f0
Date: Mon, 08 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712562496
