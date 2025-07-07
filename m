Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5C628C2B6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881194; cv=none; b=rkYqkI7hUPermZUskCEWRLkzuCmE0Uhoz00k8O0xS2WZPp9kdKv3RqMzGcuzgAxjTO/0uURWkBJ0w1l/YvGxXe26VhuQp840dpZy7k8EmDRvB8VyEfGBzIK2W2xLKEyQHBQ4+smWhWOq9tEbSYJ1L9UsVFf5fgfyNpfwdbHg3MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881194; c=relaxed/simple;
	bh=ppmSIbYmE338zP2RXnVFQZdFek28EzpH+8fN23JLyKc=;
	h=To:Subject:From:Message-Id:Date; b=atjYTh5UJ0x+/2Xcfilfp76rTdVNKrqAfRKJBBI5/xHeoQ6p2XrVbEcoFU2hu1M8ZSmtuFJpNeqnJPoKt05oBR8jzpa3cjWYr2ELAc2I/jmUk6ry1/kGIIPZOpwEkxfBByLCDXBBoGi07KY+tvo72J5r4v6199jAX75nSTSwD+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNyVqP6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNyVqP6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8CFC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751881193;
	bh=ppmSIbYmE338zP2RXnVFQZdFek28EzpH+8fN23JLyKc=;
	h=To:Subject:From:Date:From;
	b=VNyVqP6A47gxsl2C4MaVIDl0XdtSOJTzJPLHZ1qBDQSWi6JfXYecnIfbVLEGQsfTp
	 JA+WKc+BJ6gSqfvLJD7wzonzxR1vSb1n6dKSU80ILyF5l/1Zd1ddpoe7DTlFXRev2G
	 IM3tIJF5aWQt9aST0unXTwC0wsS/CVn1ogkKwSW6bQa4g38qKQFSeDKGjJuMMdwkja
	 FMXDhw/zOueLqf7Mg5FwxrUgNWAS7rIhwak7rHCK6Ro9GXaiLA5TyDGrwCuxaVKits
	 Y9B47qqrixRMuiLmHereuWZwlBy5M7jIPS+j3hQm/YNdk+t0BoF6N9GPqaL+oUIzWE
	 krBDPG+Bnmw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF29C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188119362.5015.11094059655616316894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a74f0f2c8ee4162e01bb3767e67e426806b0682eb7e10c69751663a080c3772
Date: Mon, 07 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751881193
