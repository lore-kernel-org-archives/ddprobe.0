Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBC8199FA2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748032794; cv=none; b=oh7fDac399PH+RkHj0NAT0TYxs3n5eDiWrFi8pXlxNvWKNOUdILs2LpnSq4YkGKjUbPBi8R20d5i9ONRkL2JFZYPrkI0jKa9SnHNCKZ70JW9yQwNck9TfRsT0B0YevBOSn1UA0QcBs5vCM1mm6w6LFECE7A4xKPTs9L7/cRV9Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748032794; c=relaxed/simple;
	bh=ZjleaOAFBuH5glDkAKs1j7aZOAykcx/xpMhHaKL4Z8Q=;
	h=To:Subject:From:Message-Id:Date; b=d7Gf3SJmNZdRo2c97s2gSMn+H3/NpJncTlGkYADFQCCcWaq8W7NfMe3GbWM4+ZyzATxrBhSBuOFijCMTlVduNR1W4vgT5M9O3A7rTJJCs4ot5Bk6iR/q5kxflqdSBaDXaXVPQFOqVHwYGUjnZQR+6xDUXx+2Vo6Dt/sNflU3tiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT5U02Ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT5U02Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B88C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748032793;
	bh=ZjleaOAFBuH5glDkAKs1j7aZOAykcx/xpMhHaKL4Z8Q=;
	h=To:Subject:From:Date:From;
	b=bT5U02AkFpJ3fbsMdzGy5txtd7NkNhx9o4LehEI/zJXJC8Zfai61bIH5JEjE8wY/+
	 CQjNSbcbI6/RnsegKKBjmQj0Bf/ygiqFIMHQKXRWv6P5Gyx79hjTWzWbXFuuw2EWhT
	 iwP+C+F1bWOLyBhh6s4JwTm/gcuA1GL58XmVTyd7OqdcLoRrdUsmnr4pVeUdzokQUl
	 lK62vvoY2VYUYPAqaVj37QjJ5KQDKEVFWJjRv+pOW/NriZYoMUYCp3qlJG3wNhK8WM
	 ghNKEq4YkR38B2eykQcJG//l6VxgrHifoy0bkrfiQDCH9QZUss8YDMJBS+SQX+x4EM
	 I9R3bL330h8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91956C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803279358.17156.16537434053966879491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2e631b5e79e8f644e2e1c5d3c87555f4466942572c5b3cbb55f410d3f91d8c
Date: Fri, 23 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748032793
